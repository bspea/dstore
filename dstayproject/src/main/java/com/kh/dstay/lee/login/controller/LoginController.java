package com.kh.dstay.lee.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dstay.lee.login.model.service.LoginService;
import com.kh.dstay.lee.login.model.vo.Member;

@Controller
public class LoginController {

	@Autowired
	private LoginService lService;
	
//	현정씨와 동일네임 겹쳐서 주석처리
//	@RequestMapping("login.do")
//	public String login(@ModelAttribute Member user, HttpSession session, Model model ) {
//		
//		System.out.println(user);
//		Member loginUser = lService.loginUser(user);
//		
//		System.out.println(loginUser);
//		if(loginUser != null) {
//			session.setAttribute("loginUser", loginUser);
//			
//			return "redirect:home.do";
//		}else {
//			return "redirect:home.do";
//			
//		}
//		
//	}
//	
//	@RequestMapping("logout.do")
//	public String logout(HttpSession session) {
//		
//		session.invalidate();
//		
//		return "redirect:home.do";
//		
//	}
	
	
	
	
	
	
}
