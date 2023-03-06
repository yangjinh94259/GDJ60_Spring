package com.iu.s1.bankBook;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iu.s1.util.Pager;

@Controller
@RequestMapping("/bankBook/*")
public class BankBookController {
	
	@Autowired
	private BankBookService bankBookService;
	
	//list
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public ModelAndView getBankBookList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();

		
		List<BankBookDTO> ar = bankBookService.getBankBookList(pager);
		

		
		mv.setViewName("bankBook/list");
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		return mv;
	}
	
	//detail
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView getBankBookDetail(BankBookDTO bankBookDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		bankBookDTO = bankBookService.getBankBookDetail(bankBookDTO);
		
		mv.setViewName("bankBook/detail");
		mv.addObject("dto", bankBookDTO);
		
		return mv;
	}
	
	//add form 이동
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public ModelAndView setBankBookAdd(ModelAndView mv)throws Exception{
		
		mv.setViewName("bankBook/add");
		
		return mv;
	}
	
	//add DB Insert
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public ModelAndView setBankBookAdd(BankBookDTO bankBookDTO, MultipartFile pic, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		System.out.println("Name : "+pic.getName());
		System.out.println("OriName : "+pic.getOriginalFilename());
		System.out.println("Size : "+pic.getSize());
		System.out.println(session.getServletContext());
		
		
		int result = bankBookService.setBankBookAdd(bankBookDTO, pic);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	
	//delete
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public ModelAndView setBankBookDelete(BankBookDTO bankBookDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = bankBookService.setBankBookDelete(bankBookDTO);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	//수정 폼 이동
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public ModelAndView setBankBookUpdate(BankBookDTO bankBookDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		bankBookDTO = bankBookService.getBankBookDetail(bankBookDTO);
		mv.setViewName("bankBook/update");
		mv.addObject("dto", bankBookDTO);
		return mv;
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView setBankBookUpdate(BankBookDTO bankBookDTO, ModelAndView mv)throws Exception{
		int result = bankBookService.setBankBookUpdate(bankBookDTO);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	
	

}