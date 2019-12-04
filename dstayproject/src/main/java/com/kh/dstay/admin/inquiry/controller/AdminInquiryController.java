package com.kh.dstay.admin.inquiry.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dstay.admin.inquiry.model.service.InquiryServiceImpl;
import com.kh.dstay.admin.inquiry.model.vo.Inquiry;

@Controller
public class AdminInquiryController {

	@Autowired
	private InquiryServiceImpl iService;
	
	@RequestMapping("adminInquiryList.do")
	public String selectInquiries(Model model) {
		ArrayList<Inquiry> ilist = iService.selectInquiries();
		model.addAttribute("ilist", ilist);
		return "5_kim/inquiry/inquiryList";
	}
	
	@RequestMapping("adminInquiryDetail.do")
	public String inquiryDetail(Model model, int iNo) {
		Inquiry inq  = iService.selectInquiry(iNo);
		model.addAttribute("inq", inq);
		return "5_kim/inquiry/inquiryDetail";
	}

	
	
}
