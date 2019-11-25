package com.kh.dstay.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 김현지
 * admin 페이지의 뷰단사이 이동
 */
@Controller
public class AdminController {

	@RequestMapping("adminMain.do")
	public String adminMain() {
		return "5_kim/common/dashboard";
	}
	
	@RequestMapping("adminMemberList.do")
	public String reportedMemberList() {
		return "5_kim/member/reportedMemberList";
	}

	@RequestMapping("adminMemberDetail.do")
	public String reportedMemberDetail() {
		return "5_kim/member/reportedMemberDetail";
	}
	
	@RequestMapping("adminCouponList.do")
	public String couponList() {
		return "5_kim/coupon/couponList";
	}
	
	@RequestMapping("adminAddingCouponForm.do")
	public String addingCouponForm() {
		return "5_kim/coupon/addingCouponForm";
	}
	
	
	
	
	@RequestMapping("adminPurchaseList.do")
	public String purchaseList() {
		return "5_kim/revenue/purchaseList";
	}
	
	@RequestMapping("adminPurchaseDetailForm.do")
	public String purchaseDetail() {
		return "5_kim/revenue/purchaseDetail";
	}
	
	@RequestMapping("adminInquiryList.do")
	public String inquiryList() {
		return "5_kim/inquiry/inquiryList";
	}
	
	@RequestMapping("adminInquiryDetail.do")
	public String inquiryDetail() {
		return "5_kim/inquiry/inquiryDetail";
	}
	
}
