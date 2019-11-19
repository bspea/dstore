package com.kh.dstay;

import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.validation.constraints.Email;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@Autowired
	private Validator validator;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		return "4_jong/mainPage";
	}
	
	@RequestMapping("loginForm.do")
	public String loginForm() {
		
		return "2_bak/loginForm";
	}
	@RequestMapping("login.do")
	public ModelAndView login(ModelAndView mv,@RequestParam("email")@Email String email,@RequestParam("password") String password,HttpSession session) {
		
		Member mem = new Member();
		mem.setEmail(email); mem.setPassword("password");
		Member loginUser = mService.login(mem);
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:home.do");
		}else {
			mv.addObject("loginMsg","존재하지 않는 아이디거나 비밀번호가 다릅니다").setViewName("2_bak/loginForm");
		}
		return mv;
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		//System.out.println(session.getId());
		return "redirect:home.do";	
	}
	@RequestMapping("home.do")
	public String home() {
		return "home";
	}
	@RequestMapping("registerForm.do")
	public String register() {
		return "2_bak/registerForm";
	}
	@RequestMapping("findEmail.do")
	public String findEmail() {
		return "2_bak/findEmail";
	}
	@RequestMapping("resetPasswordForm")
	public String resetPasswordForm() {
		return "2_bak/resetPasswordForm";
	}
	@RequestMapping("ajaxDuplicateCheck.do")@ResponseBody
	public String ajaxDuplicateCheck(@RequestParam("checkEmail")@Email String email) {
		logger.info(email);
		int result = mService.ajaxDuplicateCheck(email);
		if(result>0) {
			return "unavailable";
		}else {
			return "available";
		}
	}
}
