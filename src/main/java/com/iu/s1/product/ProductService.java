package com.iu.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.s1.util.Pager;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO = new ProductDAO(); 
	
	
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception{
		return productDAO.getProductDetail(productDTO);
	}
	
	public List<ProductDTO> getProductList(Pager pager) throws Exception{
		
		Long totalCount = productDAO.getProductCount(pager);
		
		pager.makeNum(totalCount);
		pager.makeRow();
		
		return productDAO.getProductList(pager);
	}

	public int setProductAdd(ProductDTO productDTO, List<ProductOptionDTO> ar) throws Exception{
		Long productNum = productDAO.getProductNum();
		productDTO.setProductNum(productNum);
		int result = productDAO.setProductAdd(productDTO);
		
		if(ar != null) {
		
			for(ProductOptionDTO productOptionDTO : ar) {
				productOptionDTO.setProductNum(productNum);
				result = productDAO.setAddProductOption(productOptionDTO);	
			}
		}
		
		return result;
		
	}
	

}
