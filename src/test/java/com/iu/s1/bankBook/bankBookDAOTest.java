package com.iu.s1.bankBook;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s1.MyTestCase;
import com.iu.s1.util.Pager;

public class bankBookDAOTest extends MyTestCase {

	@Autowired
	private BankBookDAO bankBookDAO;
	
	@Test
	public void getBankBookList(Pager pager) throws Exception{
		
		List<BankBookDTO> ar = bankBookDAO.getBankBookList(pager);
		assertEquals(1, ar.size());
	}
	
	@Test
	public void getBankBookDetail() throws Exception{
		
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookNumber(1L);
		bankBookDTO = bankBookDAO.getBankBookDetail(bankBookDTO);
		assertNotNull(bankBookDTO);
		
	}
	
	public void setBankBookAdd() throws Exception{
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookNumber(null);
	}
	
}
