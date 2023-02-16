package com.iu.s1.product;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Random;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s1.MyTestCase;
import com.iu.s1.bankBook.BankBookDTO;
import com.iu.s1.util.Pager;

public class ProductDAOTest extends MyTestCase{

	@Autowired
	private ProductDAO productDAO;
	
	
	
	
	@Test
	public void getProductListTest() throws Exception{
		
		Pager pager = new Pager();
		
		
		List<ProductDTO> ar = productDAO.getProductList(pager);
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
		
		for(int i=0; i < 30; i++) {
			Random r = new Random();
			double d = r.nextDouble();
			int num = (int)(d*1000);
			d = num/100.0;
			
			BankBookDTO bankBookDTO = new BankBookDTO();
			bankBookDTO.setBookName("적적적적금금금금"+i);
			bankBookDTO.setBookRate(d);
			bankBookDTO.setBookSale(1);
		}
		
		System.out.println("Finish");
		
	}
	
}
