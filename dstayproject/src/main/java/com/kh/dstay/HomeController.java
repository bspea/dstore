package com.kh.dstay;

import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletResponse;
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
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.dstay.guestOrder.model.service.GuestOrderService;
import com.kh.dstay.guestOrder.model.vo.GuestOrder;
import com.kh.dstay.member.model.service.MemberService;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.util.model.service.UtilService;
import com.kh.dstay.util.model.vo.UtilParameter;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

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
	@Autowired
	private UtilParameter utilParam;
	@Autowired
	private Member mem;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) {
		session.setAttribute("kakaoJavascriptKey", utilParam.getKakaoJavascriptKey());
		session.setAttribute("googleClientId", utilParam.getGoogleClientId());
		session.setAttribute("naverClientId", utilParam.getNaverClientId());
		return "4_jong/mainPage";
		
	}
	@RequestMapping("loginForm.do")
	public ModelAndView loginForm(ModelAndView mv,@RequestParam(value="findEmail", required=false)String findEmail ) {
		if(findEmail != null) {
			mv.addObject("findEmail",findEmail).setViewName("2_bak/loginForm");
		}else {
			mv.setViewName("2_bak/loginForm");
		}
		return mv;
	}
	@RequestMapping("login.do")
	public ModelAndView login(ModelAndView mv,@RequestParam("email")@Email String email,@RequestParam("password") String password,HttpSession session) {
		if(validatePassword(password)) {
			Member loginUser = mService.login(email);
			if(loginUser != null && bcryptPasswordEncoder.matches(password, loginUser.getPassword())) {
				session.setAttribute("loginUser", loginUser);
				mv.setViewName("redirect:home.do");
			}else {
				mv.addObject("loginMsg","존재하지 않는 아이디거나 비밀번호가 다릅니다").setViewName("2_bak/loginForm");
			}
		}else {
			mv.addObject("email",email).setViewName("2_bak/resetPasswordForm");
		}
		return mv;
	}
	private boolean validatePassword(String password) {
		// TODO Auto-generated method stub
		Pattern pattern = Pattern.compile("/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/");
		Matcher matcher = pattern.matcher(password);
		if(matcher.matches()) {
			return true;
		}
		return false;
	}
	@RequestMapping("ajaxGoogleLogin.do")@ResponseBody
	public String ajaxGoogleLogin(HttpSession session,@RequestParam("googleEmail")String googleEmail,@RequestParam("idToken")String idToken) {
		mem.setEmail(googleEmail);
		mem.setPassword(idToken);
		Member loginUser = mService.ajaxGoogleLogin(mem);
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			return "googleLoginSucess";
		}else {
			return "googleLoginFail";
		}
	}
	@RequestMapping("naverLogin.do")
	public String naverLogin() {
		return "2_bak/naverLogin";
	}
	@RequestMapping(value="ajaxNaverUserprofile.do")@ResponseBody
	public String ajaxNaverUserprofile(HttpSession session,@RequestParam(value="email",required=false)String email,@RequestParam("nickName")String nickName,@RequestParam("id")String password) {
			mem.setNickName(nickName);
			mem.setPassword(password);
			mem.setEmail(email);
			Member loginUser = mService.ajaxNaverUserprofile(mem);
			if(loginUser !=null) {
				session.setAttribute("loginUser", loginUser);
				return "apiLoginSuccess";
			}else {
				return "apiLoginFail";
			}	
		}
	@RequestMapping("kakaoLoginForm.do")
	public ModelAndView kakaoLogin(ModelAndView mv,@RequestParam("nickName")String nickName,@RequestParam("password")String password) {
		mem.setNickName(nickName);
		mem.setPassword(password);
		mv.addObject("mem", mem).setViewName("2_bak/kakaoLoginForm");
		return mv;
	}
	@RequestMapping("kakaoLogin.do")
	public String kakaoLogin(HttpSession session,@RequestParam("email")@Email String email,@RequestParam("nickName")String nickName,@RequestParam("password")String password) {
		mem.setEmail(email);
		mem.setNickName(nickName);
		mem.setPassword(password);
		int result = mService.insertMember(mem);
		if(result>0) {
			return "redirect:home.do";
		}else {
			return "redirect:loginForm.do";
		}
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:home.do";	
	}
	@RequestMapping("registerForm.do")
	public String register() {
		return "2_bak/registerForm";
	}
	@RequestMapping("findEmailForm.do")
	public String findEmail() {
		return "2_bak/findEmailForm";
	}
	@RequestMapping("ajaxDuplicateCheck.do")@ResponseBody
	public String ajaxDuplicateCheck(@RequestParam("checkEmail")@Email String email) {
		int result = mService.ajaxDuplicateCheck(email);
		if(result>0) {
			return "unavailable";
		}else {
			return "available";
		}
	}
	@RequestMapping("ajaxVerifyEmail.do")@ResponseBody
	public String ajaxVerifyEmail(@RequestParam("email")@Email String email) throws MessagingException {
		return verifyEmail(email,"인증번호");
	}
	public String verifyEmail(String email, String emailMsg) throws MessagingException {
		String random = String.valueOf((int)(Math.random()*10000000 + 1));
		boolean result = uService.verifyEmail(email, emailMsg, random);
		if(result) {
			return random;
		}else {
			return "fail";
		}
	}
	@RequestMapping("insertMember.do")
	public String insertMember(HttpSession session,@RequestParam("email")String email,@RequestParam("password")String password,@RequestParam("nickName")String nickName) {
		mem.setEmail(email);
		mem.setNickName(nickName);
		mem.setPassword(bcryptPasswordEncoder.encode(password));
		int result = mService.insertMember(mem);
		if(result >0) {
			session.setAttribute("loginUser",mem);
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
			mv.addObject("reviewOrder",reviewOrder).setViewName("home");//비회원 주문 내역 조회 페이지로 변경해야 합니다
		}else {
			mv.setViewName("redirect:home.do");
		}
		return mv;
	}
	@RequestMapping(value="ajaxfindEmail.do")
	public void findEmail(HttpServletResponse response,@RequestParam("phone")String phone) throws CoolsmsException, JsonIOException, IOException {
		Member findEmailMem = mService.selectFindEmailMember(phone);
		String randomSMS =  String.valueOf((int)(Math.random()*10000000 + 1));
		if(findEmailMem != null) {
			boolean result = uService.selectFindEmailMember(phone, randomSMS);
			if(result) {
				HashMap<String,String> infoMap = new HashMap<String,String>();
				infoMap.put("SMS", randomSMS);
				infoMap.put("mem", findEmailMem.getEmail());
				response.setContentType("application/json; charset=utf-8");
				Gson gson = new Gson();
				gson.toJson(infoMap, response.getWriter());
			}
		}
	}
	@RequestMapping("ajaxSendAnEmail.do")@ResponseBody
	public String ajaxSendAnEmail(@RequestParam(value="sendAnEmail")String email) throws MessagingException {
		if(email != "") {
			String tempPassword = verifyEmail(email,"임시비밀번호");
			mem.setEmail(email);
			mem.setPassword(bcryptPasswordEncoder.encode(tempPassword));
			int result = mService.updateTempMember(mem);
			if(result>0) {
				return "sentAnEmail";
			}else {
				return "failedToSendAnEmail";
			}
		}else {
			return "failedToSendAnEmail";
		}
	}
	@RequestMapping("resetPasswordForm.do")
	public ModelAndView resetPasswordForm(ModelAndView mv,@RequestParam("findEmail")String findEmail) {
		mv.addObject("findEmail",findEmail).setViewName("2_bak/resetPasswordForm");
		return mv;
	}
	@RequestMapping("resetPassword.do")
	public String resetPassword(HttpSession session,@RequestParam("email")@Email String email,@RequestParam("password")String password) {
		mem.setEmail(email);
		mem.setPassword(bcryptPasswordEncoder.encode(password));
		int result = mService.updateTempMember(mem);
		if(result>0) {
			session.setAttribute("loginUser",mem);
			return "redirect:home.do";
		}else {
			return "redirect:2_bak/loginForm.do";
		}
	}
}