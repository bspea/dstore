package com.kh.dstay.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.kh.dstay.admin.revenue.model.service.RevenueServiceImpl;

/**
 * @author 김현지
 * admin 페이지의 뷰단사이 이동
 */
@Controller
public class AdminController {
	
	
	@RequestMapping("admin.do")
	public String goToAdmin() {
		return "5_kim/common/dashboard";
	}
	
}
