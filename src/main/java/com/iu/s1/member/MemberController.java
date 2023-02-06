package com.iu.s1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "member/memberJoin";
	}
	
	@RequestMapping(value = "memberLogin")
	public void login() {
		
	}
	
	@RequestMapping(value = "page")
	public ModelAndView myPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/memberPage");
		return mv;
	}
	
}
