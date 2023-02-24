package com.iu.s1.board.notice;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class NoticeDAOTest {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Test
	public void setBoardAddTest() throws Exception{
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setTitle("title");
		noticeDTO.setWriter("writer");
		noticeDTO.setContents("contents");
		int result = noticeDAO.setBoardAdd(noticeDTO);
		assertEquals(1, result);
	}

}
