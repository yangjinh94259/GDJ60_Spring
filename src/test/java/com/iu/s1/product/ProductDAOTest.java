package com.iu.s1.product;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s1.MyTestCase;

public class ProductDAOTest extends MyTestCase{

	@Autowired
	private ProductDAO productDAO;
	
	@Test
	public void getProductListTest() throws Exception{
		
		List<ProductDTO> ar = productDAO.getProductList();
		//단정문
		assertNotEquals(0, ar.size()); ;
		
	}
	
	@Test
	public void getProductDetail() throws Exception{
		
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductNum(4L);
		productDTO = productDAO.getProductDetail(productDTO);
		assertNull(productDTO);
		
	}
	
	//insert
	@Test
	public void getProductAdd() throws Exception{
		
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductNum(2000000L);
		productDTO.setProductName("킹왕쨩");
		productDTO.setProductDetail("나는 킹왕쨩");
		productDTO.setProductJumsu(2.2);
		int result = productDAO.setProductAdd(productDTO);
		
		assertEquals(1, result);
		
	}
	
}
