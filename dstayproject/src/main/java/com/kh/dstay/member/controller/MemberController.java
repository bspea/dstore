package com.kh.dstay.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.dstay.common.Pagination;
import com.kh.dstay.member.model.service.MemberService;
import com.kh.dstay.member.model.vo.Diet;
import com.kh.dstay.member.model.vo.DietaryGoal;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.member.model.vo.MyCoupon;
import com.kh.dstay.member.model.vo.OrderInfo;
import com.kh.dstay.member.model.vo.Review;
import com.kh.dstay.member.model.vo.WishProduct;
import com.kh.dstay.notice.model.vo.PageInfo;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value= {"mypage/diet.do","mypage/order.do","mypage/wishes.do","mypage/review.do","mypage/coupon.do","mypage/info.do"})
	public String viewMypage(HttpSession session) {
		Member m=(Member)session.getAttribute("loginUser");
		DietaryGoal dg=mService.selectMyDietaryGoal(m);
		session.setAttribute("dg", dg);
		return "7_yun/mypage";
	}
	
	/*@RequestMapping(value="topList.do") 개인참고용
	public void boardTopList(HttpServletResponse response) throws JsonIOException, IOException{
		
		ArrayList<Board> list=bService.selectTopList();
		response.setContentType("application/json; charset=utf-8"); 
//		Gson gson=new Gson();
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd hh:mm").create();
		
		gson.toJson(list,response.getWriter());
	}*/
	
	@RequestMapping(value= {"mypage/ajaxdiet.do","mypage/ajaxorder.do","mypage/ajaxwishes.do","mypage/ajaxreview.do","mypage/ajaxcoupon.do","mypage/ajaxinfo.do"})
	public void loadMypageContent(String url,int page,HttpServletResponse response,HttpSession session) throws JsonIOException, IOException {

		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		System.out.println(m);
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		int listCount;
		PageInfo pi;
		HashMap map;
		ArrayList<MyCoupon> cList;
		ArrayList<OrderInfo> oList;
		ArrayList<WishProduct> wList;
		switch(url) {
		
		case "diet.do":
			ArrayList<Diet> list=mService.selectDietListToday(m);
			gson.toJson(list,response.getWriter());
			break;
		case "order.do":
			listCount=mService.getOrderListCount(m,1);
			pi=Pagination.getOrderInfoPageInfo(page, listCount);
			oList=mService.selectOrderList(m,1, pi);
			map=new HashMap();
			map.put("list", oList);
			map.put("pi", pi);
			gson.toJson(map,response.getWriter());
			break;
		case "wishes.do":
			listCount=mService.getMyWishesCount(m);
			pi=Pagination.getWishesPageInfo(page,listCount);
			wList=mService.selectMyWishes(m, pi);
			map=new HashMap();
			map.put("list", wList);
			map.put("pi", pi);
			gson.toJson(map,response.getWriter());
			break;
		case "review.do":
			listCount=mService.getOrderListCount(m,1);
			pi=Pagination.getOrderInfoPageInfo(page, listCount);
			oList=mService.selectBeforeReviewList(m,pi);
			gson.toJson(oList,response.getWriter());
			break;
		case "coupon.do":
			cList=mService.selectMyCouponList(m);
			gson.toJson(cList,response.getWriter());
			break;
		case "info.do":
			gson.toJson(m,response.getWriter());
			break;
		}
	}
	@RequestMapping("mypage/setDietaryGoal.do")
	public void setDietaryGoal(DietaryGoal dg,HttpServletResponse response,HttpSession session) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		dg.setMemberNo(m.getNo());
		System.out.println(dg);
		int result=mService.updateMyDietaryGoal(dg);
		session.setAttribute("dg", dg);
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	@RequestMapping("mypage/selectMyDietaryGoal.do")
	public void selectMyDietaryGoal(HttpServletResponse response,HttpSession session) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		DietaryGoal dg=mService.selectMyDietaryGoal(m);
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(dg,response.getWriter());
	}
	@RequestMapping("mypage/pwChange.do")
	public void updateMyPassword(HttpServletResponse response,HttpSession session,String newPw) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		m.setPassword(newPw);
		int result=mService.updateMyPassword(m);
		if(result>0) {
			session.setAttribute("loginUser", m);
		}
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	@RequestMapping("mypage/nicknameChange.do")
	public void updateMyNickname(HttpServletResponse response,HttpSession session,String nickname) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		m.setNickName(nickname);
		int result=mService.updateMyNickname(m);
		if(result>0) {
			session.setAttribute("loginUser", m);
		}
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	
	
	@RequestMapping("mypage/searchOrder.do")
	public void selectMyOrderList(HttpServletResponse response,HttpSession session,String startDate,String endDate,int page) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		int listCount=mService.getOrderListDateCount(m,startDate,endDate);
		PageInfo pi=Pagination.getOrderInfoPageInfo(page, listCount);
		ArrayList<OrderInfo> list=mService.selectOrderList(m,startDate,endDate, pi);
		HashMap map=new HashMap();
		map.put("list", list);
		map.put("pi", pi);
		
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(map,response.getWriter());
	}
	@RequestMapping("mypage/searchOrderMonth.do")
	public void selectMyOrderListMonth(HttpServletResponse response,HttpSession session,int month,int page) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		int listCount=mService.getOrderListCount(m,page);
		PageInfo pi=Pagination.getOrderInfoPageInfo(page, listCount);
		ArrayList<OrderInfo> list=mService.selectOrderList(m,1, pi);
		HashMap map=new HashMap();
		map.put("list", list);
		map.put("pi", pi);
		
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(map,response.getWriter());
	}
	
	
	@RequestMapping("mypage/confirmation.do")
	public void confirmation(HttpServletResponse response,HttpSession session,int ono) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		int result=mService.confirmation(ono);
		if(result>0) {
			session.setAttribute("loginUser", m);
		}
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	@RequestMapping("mypage/productInfo.do")
	public void selectReviewTarget(HttpServletResponse response,HttpSession session,int pno) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		OrderInfo target=mService.selectReviewTarget(pno);
		Gson gson=new Gson();
		gson.toJson(target,response.getWriter());
	}
	@RequestMapping("mypage/insertReview.do")
	public void insertMyReview(HttpServletResponse response,HttpSession session,Review r) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		r.setMemberNo(m.getNo());
		int result=mService.insertMyReview(r);
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	
	@RequestMapping("mypage/selectMyReview.do")
	public void selectMyReviewList(HttpServletResponse response,HttpSession session) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		int listCount=mService.getOrderListCount(m,1);
		PageInfo pi=Pagination.getOrderInfoPageInfo(1, listCount);
		ArrayList<Review> list=mService.selectMyReviewList(m, pi);
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(list,response.getWriter());
	}
	
	@RequestMapping("mypage/selectMyDietList.do")
	public void selectMyDietList(HttpServletResponse response,HttpSession session,String date) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		ArrayList<Diet> list=mService.selectDietList(m, date);
		Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(list,response.getWriter());
	}
	
	@RequestMapping("mypage/removeDiet.do")
	public void removeDiet(HttpServletResponse response,HttpSession session,int fmno) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		int result=mService.deleteDiet(fmno);
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	
	@RequestMapping("mypage/recodeOrderedDiet.do")
	public void recodeOrderedDiet(HttpServletResponse response,HttpSession session,int pno,String type,String date) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		Diet d=mService.selectTargetProduct(pno);
		d.setMemberNo(m.getNo());
		d.setType(type);
		d.setMemo(date);
		int result=mService.recodeDiet(d);
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	@RequestMapping("mypage/recodeOrderedDietToday.do")
	public void recodeOrderedDietToday(HttpServletResponse response,HttpSession session,int pno,String type) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		Diet d=mService.selectTargetProduct(pno);
		d.setMemberNo(m.getNo());
		d.setType(type);
		int result=mService.recodeDietToday(d);
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	@RequestMapping("mypage/recodeSelfDietToday.do")
	public void recodeSelfDietToday(HttpServletResponse response,HttpSession session,Diet d) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		d.setMemberNo(m.getNo());
		int result=mService.recodeDietToday(d);
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	@RequestMapping("mypage/recodeSelfDiet.do")
	public void recodeSelfDiet(HttpServletResponse response,HttpSession session,Diet d) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		d.setMemberNo(m.getNo());
		int result=mService.recodeDiet(d);
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	
	@RequestMapping("mypage/withdrawal.do")
	public String widthdrawal(HttpSession session) {
		Member m=(Member)session.getAttribute("loginUser");
		int result=mService.withdrawal(m);
		if(result>0) {
			session.invalidate();
			return "redirect:/main.do";
		}else {
			return "redirect:/main.do";
		}
	}
	@RequestMapping("mypage/refund.do")
	public void refund(HttpSession session,OrderInfo oi,HttpServletResponse response) throws JsonIOException, IOException {
		Member m=(Member)session.getAttribute("loginUser");
		oi.setMemberNo(m.getNo());
		int result=mService.refund(oi);
		if(result>0) {
			result=mService.updateOrder(oi);
		}
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
