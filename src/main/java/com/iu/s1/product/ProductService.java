package com.iu.s1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO = new ProductDAO(); 
	
	
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception{
		return productDAO.getProductDetail(productDTO);
	}
	
	public List<ProductDTO> getProductList() throws Exception{
		return productDAO.getProductList();
	}

	public int setAddProduct(ProductDTO productDTO, List<ProductOptionDTO> ar) throws Exception{
		Long productNum = productDAO.getProductNum();
		productDTO.setProductnum(productNum);
		int result = productDAO.setAddProduct(productDTO);
		
		if(ar != null) {
		
			for(ProductOptionDTO productOptionDTO : ar) {
				productOptionDTO.setProductnum(productNum);
				result = productDAO.setAddProductOption(productOptionDTO);	
			}
		}
		
		return result;
		
	}
	

}
