package com.iu.s1.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {
	
	@RequestMapping(value = "join")
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
