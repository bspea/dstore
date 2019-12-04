package com.kh.dstay.lee.perchase.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.dstay.lee.perchase.model.service.ShoppingCartService;
import com.kh.dstay.lee.perchase.model.vo.AddAddress;
import com.kh.dstay.lee.perchase.model.vo.Guest;
import com.kh.dstay.lee.perchase.model.vo.Order;
import com.kh.dstay.lee.perchase.model.vo.Pay;
import com.kh.dstay.lee.perchase.model.vo.ShoppingCart;
import com.kh.dstay.member.model.vo.Member;






@Controller
public class ShoppingCartController {
	
	
	@Autowired
	private ShoppingCartService scService;
	
	
	// 장바구니 추가 
	@ResponseBody
	@RequestMapping("insertShoppingCart.do") 
	public void insertShoppingCart(ShoppingCart sc,HttpServletRequest request, ModelAndView mv) {
		
		
		
		int result = scService.insertShoppingCart(sc);
		 
		
		
	}
	
	// 장바구니 이동
	@RequestMapping("selectShoppingCart.do")
	public ModelAndView selectCheckout(HttpServletRequest request, ModelAndView mv,HttpSession session) {
		
		
		
		int priceSum=0;
		ArrayList<ShoppingCart> sc =new ArrayList<>();
		if(session.getAttribute("loginUser")!=null) {
			
			
			Member mem = (Member)session.getAttribute("loginUser");
			sc = scService.selectShoppingCart(mem.getNo());
			
			for(ShoppingCart list :sc) {
				
				priceSum += list.getCpricesum();
			}
			
		} else {
			sc = (ArrayList) session.getAttribute("scList");
			if (sc != null) {
				for (ShoppingCart list : sc) {

					priceSum += list.getCpricesum();
				}
			}
		}
		
	
		
		
		mv.addObject("sc",sc).addObject("priceSum",priceSum).setViewName("6_lee/shoppingCart");
		
		return mv;
		
	}
	// 장바구니에 상품 삭제	
	
	@ResponseBody
	@RequestMapping("deleteShoppingCart.do")
	public void  deleteShoppingCart(HttpServletRequest request,HttpSession session,int cno) {
		
		if(session.getAttribute("loginUser")!=null) {		
		
			scService.deleteShoppingCart(cno);
		
		}else {
			ArrayList<ShoppingCart> scList=(ArrayList)session.getAttribute("scList");
			
			if(scList.size() != 1) {
				for(int i=0;i<scList.size();i++) {
					if(scList.get(i).getCno()==cno) {
						scList.remove(i);
	//					session.setAttribute("scList",scList);
					}
				}
			}else {
				
				scList.remove(0);
				session.invalidate();
				
				
			}
			/*
			 * System.out.println(scList); session.setAttribute("scList",scList);
			 */
		}
	
		
		
	}
	
	
	
	// 주문으로 이동
	
	@RequestMapping("selectCheckout.do")
	public ModelAndView selectCheckout1(HttpServletRequest request, ModelAndView mv, HttpSession session) {
		
		  
		  
		int totalPrice = Integer.parseInt(request.getParameter("totalPrice"));
		  
		  
		  if(session.getAttribute("loginUser")!=null) {
				
				Member mem = (Member)session.getAttribute("loginUser");
				
				mv.addObject("totalPrice",totalPrice).addObject("mem",mem).setViewName("6_lee/checkout1");
				
			}else if(session.getAttribute("scList")!=null) {
				
				mv.addObject("totalPrice",totalPrice).setViewName("6_lee/checkout1");
			}				
				
		  
		  
		
		  return mv;
	}
	
	// 배송지 추가
	@ResponseBody
	@RequestMapping("addAddress.do")
	public String addAddress(HttpServletRequest request,HttpSession session) {
		
		AddAddress ad = new AddAddress();
		
		Member mem = (Member)session.getAttribute("loginUser");
		  
		 int mNo = mem.getNo();
		String deliveryname = request.getParameter("deliveryname");
		int ahaddressno = Integer.parseInt(request.getParameter("ahaddressno"));
		String ahaddress1 = request.getParameter("ahaddress1");
		String ahaddress2 = request.getParameter("ahaddress2");
		
		ad.setMno(mNo);
		ad.setAaddressno(ahaddressno);
		ad.setAaddress1(ahaddress1);
		ad.setAaddress2(ahaddress2);
		ad.setAname(deliveryname);
		
		
		
		int result = scService.addAddress(ad);
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}

	}
	
	@ResponseBody
	@RequestMapping(value="getAddressList.do", produces="application/json; charset=UTF-8")
	public String getAddressList(HttpServletRequest request,HttpSession session)throws JsonIOException, IOException {
		
		int mno = 0;
		
		Member mem = (Member)session.getAttribute("loginUser");
		if(mem != null) {
			
			mno = mem.getNo();
		}
		
		ArrayList<AddAddress> list = scService.getAddressList(mno);
		
		
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(list);
		
	}
	
	@ResponseBody
	@RequestMapping(value="getRecentList.do", produces="application/json; charset=UTF-8")
	public String getRecentList(HttpServletRequest request,HttpSession session)throws JsonIOException, IOException {
		
		int mno = 0;
		
		Member mem = (Member)session.getAttribute("loginUser");
		if(mem != null) {
			
			mno = mem.getNo();
		}
		
		ArrayList<AddAddress> list = scService.getRecentList(mno);
		
		
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(list);
		
	}
	
	
	
	
	@ResponseBody
	@RequestMapping("pay.do")
	public String pay(Pay pay, Order order, Guest guest, HttpSession session) {
	   
		Member mem = (Member)session.getAttribute("loginUser");
		
		int result = scService.pay(pay);
		
		
		int result2 = 0;
			
				result2 = scService.order(order,guest);
			
			
			
		
		
		if(result > 0 && result2 >0) {
			
			return "ok";
		}else {
			
			return "no";
		}
			
	}
	
	@ResponseBody
	@RequestMapping("checkShoppingCart.do")
	public String checkShoppingCart(HttpServletRequest request) {
		int pno = Integer.parseInt(request.getParameter("pno"));
		int mno = Integer.parseInt(request.getParameter("mno"));
		
		int result = scService.checkShoppingCart(pno,mno);
		
		if(result == 0) {
			return "ok";
		}else {
			return "no";
		}
		
	}
	

	@ResponseBody
	@RequestMapping("deleteAddress.do")
	public String deleteAddress(HttpServletRequest request) {
		
		int ano = Integer.parseInt(request.getParameter("ano"));

		int result = scService.deleteAddress(ano);
		
		if(result != 0) {
			return "ok";
		}else {
			return "no";
		}
	}
	
	@ResponseBody
	@RequestMapping("nonMemberCart.do")
	public String nonMemberCart(ShoppingCart sc, HttpSession session) {	// 인섭아 떙큐
		
		int result = 0;
		if(session.getAttribute("scList")!=null) { // 이 후 두번 째 부터
			ArrayList<ShoppingCart> list=(ArrayList)session.getAttribute("scList");
			boolean foo=true;
			for(ShoppingCart s:list) {
				if(s.getPno()==sc.getPno()) {
					result = 1;
					foo=false;
				}
			}
			if(foo) {
				sc.setCno((list.get(list.size()-1).getCno())+1);
				list.add(sc);
			}
			session.setAttribute("scList", list);
			

		}else { // 처음 장바구니에 담아주기 위함
			
			ArrayList<ShoppingCart> list=new ArrayList<>();
			sc.setCno(1);
			list.add(sc);
			
			session.setAttribute("scList", list);
			
		}
		
		if(result != 0) {
			
			return "no";
		}else {
			
			return "ok";
		}
		
	}
	
}
