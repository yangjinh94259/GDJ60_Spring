package com.iu.s1.member;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.s1.MyTestCase;

public class MemberDAOTest extends MyTestCase{

	@Autowired
	private MemberDAO memberDAO;
	
	@Test
	public void memberJoin() throws Exception{
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("jjjjsdkvbaebguob");
		memberDTO.setPw("hhhh");
		memberDTO.setName("yjh");
		memberDTO.setPhone("010-1234-5678");
		memberDTO.setEmail("asdfa@naver.com");
		memberDTO.setAddress("asdvhasiv");
		
		int result = memberDAO.setMemberJoin(memberDTO);
		
		assertEquals(1, result);
		
	}

}
