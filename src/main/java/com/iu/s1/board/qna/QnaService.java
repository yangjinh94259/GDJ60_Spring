package com.iu.s1.board.qna;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.iu.s1.board.BbsDAO;
import com.iu.s1.board.BbsDTO;
import com.iu.s1.board.BoardDTO;
import com.iu.s1.board.BoardService;
import com.iu.s1.util.Pager;

@Service
public class QnaService implements BoardService{

	@Autowired
	private QnaDAO qnaDAO;
	
	@Override
	public List<BbsDTO> getBoardList(Pager pager) throws Exception {
		pager.makeRow();
		
		pager.makeNum(qnaDAO.getTotalCount(pager));
		
		return qnaDAO.getBoardList(pager);
	}

	@Override
	public int setBoardAdd(BbsDTO bbsDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.setBoardAdd(bbsDTO);
	}

	@Override
	public int setBoardUpdate(BbsDTO bbsDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setBoardDelete(BbsDTO bbsDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BoardDTO getBoardDetail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.getBoardDetail(boardDTO);
	}

	//reply
	public int setReplyAdd(QnaDTO qnaDTO) throws Exception{
		//QnaDTO
		//num : 부모의 글번호
		//writer, title, contents : 답글로 입력한 값
		//ref : null
		//step : null
		//depth : null
		//1. 부모의 정보를 조회
		QnaDTO parent = (QnaDTO)qnaDAO.getBoardDetail(qnaDTO);
		
		//ref : 부모의 ref
		qnaDTO.setRef(parent.getRef());
		
		//step : 부모의 step+1
		qnaDTO.setStep(parent.getStep()+1);
		
		//depth : 부모의 depth+1
		qnaDTO.setDepth(parent.getDepth()+1);
		
		//2. step update
		int result = qnaDAO.setStepUpdate(qnaDTO);
		
		//3. 답글 insert
		result = qnaDAO.setReplyAdd(qnaDTO);
		
		return result;
		
	}
	
}
