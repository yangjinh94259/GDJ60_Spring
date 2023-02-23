package com.iu.s1.board;

import java.util.List;

import com.iu.s1.util.Pager;

public interface BbsDAO {

	//TotalCount
	public Long getTotalCount(Pager pager) throws Exception;
	
	//List
	public List<BbsDTO> getBoardList(Pager pager) throws Exception;
	
	
	//Insert(Add)
	public int setBoardAdd(BbsDTO bbsDTO) throws Exception;
	
	
	//Update
	public int setBoardUpdate(BbsDTO bbsDTO) throws Exception;
	
	
	//Delete
	public int setBoardDelete(BbsDTO bbsDTO) throws Exception;
	
	
}
