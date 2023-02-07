package com.iu.s1.bankBook;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s1.MyTestCase;

public class bankBookDAOTest extends MyTestCase {

	@Autowired
	private BankBookDAO bankBookDAO;
	
	@Test
	public void getBankBookList() throws Exception{
		
		List<BankBookDTO> ar = bankBookDAO.getBankBookList();
		assertEquals(1, ar.size());
	}
	
	@Test
	public void getBankBookDetail() throws Exception{
		
		BankBookDTO bankBookDTO = new BankBookDTO();
		bankBookDTO.setBookNumber(1);
		bankBookDTO = bankBookDAO.getBankBookDetail(bankBookDTO);
		assertNotNull(bankBookDTO);
		
	}
	
}
