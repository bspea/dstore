package com.kh.dstay.admin.revenue.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dstay.admin.member.model.service.MemberServiceImpl;
import com.kh.dstay.admin.member.model.vo.Member;
import com.kh.dstay.admin.revenue.model.service.RevenueServiceImpl;
import com.kh.dstay.admin.revenue.model.vo.GuestOrder;
import com.kh.dstay.admin.revenue.model.vo.Order;
import com.kh.dstay.admin.revenue.model.vo.Payment;
import com.kh.dstay.admin.revenue.model.vo.Refund;

@Controller
public class AdminRevenuController {

	@Autowired
	private RevenueServiceImpl rService;
	
	@Autowired
	private MemberServiceImpl adminMService;
	
	@RequestMapping("adminPurchaseList.do")
	public String purchaseList(Model model) {
		ArrayList<Order> olist = rService.selectAllOrders();
		ArrayList<Payment> plist = rService.selectAllPayments();
		ArrayList<GuestOrder> golist = rService.selectAllGuestOrders();

		model.addAttribute("olist", olist);
		model.addAttribute("plist", plist);
		model.addAttribute("golist", golist);
		return "5_kim/revenue/purchaseList";
	}
	
	@RequestMapping("adminPurchaseDetail.do")
	public String purchaseDetail(Model model, int pNo) {
		Payment p = rService.selectPayment(pNo);
		
		ArrayList<Order> olist = rService.selectAllOrders();

		Order order = null;
		GuestOrder guestOrder = null;
		for(Order o : olist) {
			if(pNo == o.getPayNo()) { 
				order=o; 
				Member mem = adminMService.selectMember(o.getMemberNo());
				model.addAttribute("order", order);
				model.addAttribute("member", mem);
			}
		}
		
		if(order == null) {
			ArrayList<GuestOrder> golist = rService.selectAllGuestOrders();
			for(GuestOrder go : golist) {
				if(pNo == go.getPayNo()) { guestOrder=go; model.addAttribute("guestOrder", guestOrder);}
			}
		}
		
		model.addAttribute("p", p);

		return "5_kim/revenue/purchaseDetail";
	}
	
	@RequestMapping("adminRefundList.do")
	public String refundList(Model model) {
		ArrayList<Refund> rlist = rService.selectAllRefunds();
		model.addAttribute("rlist", rlist);
		return "5_kim/revenue/refundList";
		
	}
	
	@RequestMapping("adminRefundDetail.do")
	public String refundDetail(Model model, int rNo) {
		Refund refund = rService.selectRefund(rNo);
		
		Order order = null;
		GuestOrder guestOrder = null;
		Payment p = null;
		
		ArrayList<Order> olist = rService.selectAllOrders();
		for(Order o : olist) {
			if(refund.getOrderNo() == o.getNo()) { 
				order=o; 
				Member mem = adminMService.selectMember(o.getMemberNo());

				p=rService.selectPayment(o.getPayNo());
				
				model.addAttribute("order", order);
				model.addAttribute("member", mem);
				model.addAttribute("p", p);
			}
		}
		
		if(order == null) {
			ArrayList<GuestOrder> golist = rService.selectAllGuestOrders();
			for(GuestOrder go : golist) {
				if(refund.getOrderNo() == go.getNo()) { 
					guestOrder=go; 
					
					p=rService.selectPayment(go.getPayNo());
					
					model.addAttribute("guestOrder", guestOrder);
					model.addAttribute("p", p);
				}
			}
		}
		
		model.addAttribute(refund);
		return "5_kim/revenue/refundDetail";
	}
	
}
