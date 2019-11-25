package com.kh.dstay.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dstay.member.model.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mypage/home.do")
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
	

}
