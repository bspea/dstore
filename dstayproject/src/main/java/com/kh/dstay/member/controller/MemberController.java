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
import com.kh.dstay.member.model.vo.DietaryGoal;
import com.kh.dstay.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value= {"mypage/home.do","mypage/diet.do","mypage/order.do","mypage/wishes.do","mypage/review.do","mypage/coupon.do","mypage/info.do"})
	public String viewMypage() {
			
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
		Gson gson=new Gson();
		switch(url) {
		
		case "home.do":
			
			break;
		case "diet.do":
			DietaryGoal dg=mService.selectMyDietaryGoal(m);
			gson.toJson(dg,response.getWriter());
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
		Gson gson=new Gson();
		gson.toJson(result,response.getWriter());
	}
	@RequestMapping("mypage/selectMyDietaryGoal.do")
	public void selectMyDietaryGoal(HttpServletResponse response,HttpSession session) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		Member m=(Member)session.getAttribute("loginUser");
		DietaryGoal dg=mService.selectMyDietaryGoal(m);
		Gson gson=new Gson();
		gson.toJson(dg,response.getWriter());
	}

}
