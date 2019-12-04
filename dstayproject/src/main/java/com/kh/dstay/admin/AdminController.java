package com.kh.dstay.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 김현지
 * admin 페이지의 뷰단사이 이동
 */
@Controller
public class AdminController {
	
	
	@RequestMapping("admin.do")
	public String goToAdmin() {
		System.out.println("여기 되긴 함");
		return "5_kim/common/dashboard";
	}
	
}
