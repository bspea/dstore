package com.kh.dstay.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.dstay.member.model.service.MemberService;
import com.kh.dstay.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value= {"mypage/home.do","mypage/diet.do","mypage/order.do","mypage/wishes.do","mypage/review.do","mypage/coupon.do","mypage/info.do"})
	public String viewMypage(HttpSession session) {
			
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
	
	@RequestMapping(value= {"mypage/ajaxhome.do","mypage/ajaxdiet.do","mypage/ajaxorder.do","mypage/ajaxwishes.do","mypage/ajaxreview.do","mypage/ajaxcoupon.do","mypage/ajaxinfo.do"})
	public void loadMypageContent(String url,int page,HttpServletResponse response,HttpSession session) throws JsonIOException, IOException {

		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		switch(url) {
		
		case "home.do":
			
			break;
		case "diet.do":
			
			break;
		case "order.do":
			
			break;
		case "wishes.do":
			
			break;
		case "review.do":
			
			break;
		case "coupon.do":
			
			break;
		case "info.do":
			Gson gson=new Gson();
			gson.toJson(m,response.getWriter());
			break;
		}
	}
	

}
