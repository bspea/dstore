package com.kh.dstay;

<<<<<<< HEAD
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "4_jong/mainPage";
	}
	
=======
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dstay.member.model.service.MemberService;
import com.kh.dstay.member.model.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private MemberService mService;
	@RequestMapping("loginForm.do")
	public String loginForm() {
		
		return "home/loginForm";
	}
	@RequestMapping("login.do")
	public ModelAndView loginForm(ModelAndView mv,@RequestParam("email")String email,@RequestParam("password")String password,HttpSession session) {
		
		Member mem = new Member();
		mem.setEmail(email); mem.setPassword("password");
		Member loginUser = mService.login(mem);
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:home.do");
		}else {
			mv.addObject("loginMsg","존재하지 않는 아이디거나 비밀번호가 다릅니다").setViewName("home/loginForm");
		}
		return mv;
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println(session.getId());
		return "redirect:home.do";	
	}
	@RequestMapping("home.do")
	public String home() {
		return "home";
	}
>>>>>>> refs/remotes/origin/jonghwan
}
