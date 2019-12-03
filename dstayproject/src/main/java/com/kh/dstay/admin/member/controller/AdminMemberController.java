package com.kh.dstay.admin.member.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dstay.admin.member.model.service.MemberServiceImpl;
import com.kh.dstay.admin.member.model.vo.Address;
import com.kh.dstay.admin.member.model.vo.CouponInformation;
import com.kh.dstay.admin.member.model.vo.Member;
import com.kh.dstay.admin.member.model.vo.Report;

@Controller
public class AdminMemberController {

	@Autowired
	private MemberServiceImpl adminMService;
	
	@RequestMapping("adminMemberList.do")
	public String reportedMemberList(Model model) {
		ArrayList<Member> list = adminMService.selectMemberList();
		model.addAttribute("list",list);
		return "5_kim/member/reportedMemberList";
	}

	@RequestMapping("adminMemberDetail.do")
	public String reportedMemberDetail(Model model, int mNo) {
		Member member = adminMService.selectMember(mNo);
		ArrayList<Report> rlist = adminMService.selectMemberReport(mNo);
		ArrayList<Address> alist = adminMService.selectAddress(mNo);
		
		model.addAttribute("member", member);
		model.addAttribute("rlist",rlist);
		model.addAttribute("alist",alist);
		return "5_kim/member/reportedMemberDetail";
	}
	

	@RequestMapping("adminCouponList.do")
	public String couponList(Model model) {
		ArrayList<CouponInformation> clist= adminMService.selectCouponList();
		model.addAttribute("clist",clist);
		return "5_kim/coupon/couponList";
	}
	
	@RequestMapping("adminAddingCouponForm.do")
	public String addingCouponForm() {
		return "5_kim/coupon/addingCouponForm";
	}
	
}
