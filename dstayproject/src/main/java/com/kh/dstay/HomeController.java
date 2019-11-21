package com.kh.dstay;

import java.util.Locale;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Email;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dstay.guestOrder.model.service.GuestOrderService;
import com.kh.dstay.guestOrder.model.vo.GuestOrder;
import com.kh.dstay.member.model.service.MemberService;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.util.model.service.UtilService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private MemberService mService;
	@Autowired
	private Validator validator;
	@Autowired
	private UtilService uService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private GuestOrderService gService;
	
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
		mem.setEmail(email); 
		Member loginUser = mService.login(mem);
		if(loginUser != null && bcryptPasswordEncoder.matches(password, mem.getPassword())) {
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
	@RequestMapping("findEmailForm.do")
	public String findEmail() {
		return "2_bak/findEmailForm";
	}
	@RequestMapping("resetPasswordForm")
	public String resetPasswordForm() {
		return "2_bak/resetPasswordForm";
	}
	@RequestMapping("ajaxDuplicateCheck.do")@ResponseBody
	public String ajaxDuplicateCheck(@RequestParam("checkEmail")@Email String email) {
		//logger.info(email);
		int result = mService.ajaxDuplicateCheck(email);
		if(result>0) {
			return "unavailable";
		}else {
			return "available";
		}
	}
	@RequestMapping("ajaxVerifyEmail.do")@ResponseBody
	public String ajaxVerifyEmail(@RequestParam("email")@Email String email) throws MessagingException {
		return verifyEmail(email);
	}
	public String verifyEmail(String email) throws MessagingException {
		String random = String.valueOf((int)(Math.random()*10000000 + 1));
		//logger.info(random);
		boolean result = uService.verifyEmail(email, random);
		if(result) {
			return random;
		}else {
			return "fail";
		}
	}
	@RequestMapping("insertMember.do")
	public String insertMember(@RequestParam("email")String email,@RequestParam("password")String password,@RequestParam("nickName")String nickName) {
		Member mem = new Member();
		mem.setEmail(email);mem.setNickName(nickName);
		mem.setPassword(bcryptPasswordEncoder.encode(password));
		int result = mService.insertMember(mem);
		if(result >0) {
			return "redirect:home.do";
		}else {
			return "registerForm";
		}
	}
	@RequestMapping("reviewNonMemberOrder.do")
	public ModelAndView reviewNonMemberOrder(ModelAndView mv,@RequestParam("goNo")int goNo,@RequestParam("phone")String phone) {
		GuestOrder requestGo = new GuestOrder();
		requestGo.setGoNo(goNo);requestGo.setPhone(phone);
		GuestOrder reviewOrder = gService.reviewNonMemberOrder(requestGo);
		if(reviewOrder != null) {
			//logger.info(reviewOrder.toString());
			mv.addObject("reviewOrder",reviewOrder).setViewName("home");//비회원 주문 내역 조회 페이지로 변경해야 합니다
		}else {
			mv.setViewName("redirect:home.do");
		}
		return mv;
	}
	@RequestMapping("findEmail.do")
	public void findEmail(@RequestParam("phone")String phone) {
		logger.info(phone);
	}
	@RequestMapping("sendAnEmail.do")
	public void sendAnEmail(@RequestParam("email")String email) throws MessagingException {
		//logger.info(email);
		String t = verifyEmail(email);
		//logger.info(random);
		
	}
}
