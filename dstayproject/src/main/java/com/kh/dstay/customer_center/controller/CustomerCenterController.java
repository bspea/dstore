package com.kh.dstay.customer_center.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dstay.customer_center.model.service.CustomerCenterService;

@Controller
public class CustomerCenterController {
	
	@Autowired
	private CustomerCenterService ccService;
	
	@RequestMapping("customerCenter.do")
	public String customerCenter() {
		return "3_han/customer_center_main";
	}
	
	
}
