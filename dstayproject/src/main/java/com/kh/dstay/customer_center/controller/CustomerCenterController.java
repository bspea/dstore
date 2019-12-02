package com.kh.dstay.customer_center.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.dstay.common.SuggestionPagination;
import com.kh.dstay.customer_center.model.service.CustomerCenterService;
import com.kh.dstay.customer_center.model.vo.Chat;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.suggestion.model.vo.Suggestion;
import com.kh.dstay.suggestion.model.vo.SuggestionPageInfo;

@Controller
public class CustomerCenterController {
	
	@Autowired
	private CustomerCenterService ccService;
	
	@RequestMapping("customerCenter.do")
	public String customerCenter() {
		
		return "3_han/customer_center_main";
	}
	
	@RequestMapping("csRepresentative.do")
	public ModelAndView csRepresentative(ModelAndView mv,
										 @RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
		int suggestionListCount = ccService.getSuggestionListCount();
		
		SuggestionPageInfo spi = SuggestionPagination.getPageinfo(currentPage, suggestionListCount);
		
		ArrayList<Suggestion> list = ccService.selectSuggestionList(spi);
		
		mv.addObject("spi", spi).addObject("list", list).setViewName("3_han/csRepresentative_main");
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("suggestionDetail.do")
	public ModelAndView suggestionDetail(ModelAndView mv, int suggestionNo) {
		
		// System.out.println(suggestionNo);
		
		Suggestion s = ccService.selectSuggestion(suggestionNo);
		
		//System.out.println("s : " + s);
		
		if(s != null) {
			
			mv.addObject("s", s).setViewName("3_han/suggestionDetail");
			return mv;
			
		}else {
			mv.addObject("errorMessage", "실패 임마").setViewName("3_han/suggestionDetail");
			return mv;
		}
		
		
	}
	
	@RequestMapping("oneOnOne.do")
	public String oneOnOne(HttpServletRequest request) {
		
		return "3_han/oneOnOne";
	}
	
	@RequestMapping("chatList.do")
	public void chatList(HttpServletResponse response) throws JsonIOException, IOException {
		
		ArrayList<Chat> list = ccService.selectChatList();
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(list, response.getWriter());
	}
	
	
	@ResponseBody
	@RequestMapping("chatInsert.do")
	public void insertChat(Chat c, HttpSession session, HttpServletResponse response) throws JsonIOException, IOException {
		
		Member instance = (Member)session.getAttribute("loginUser");
		
		
		
		int insertChatResult = 0;

		
		
		if(instance.getMemberStatusNo() == 2) {
			
			instance.setMemberStatusNo(2);
			c.setChatSend(instance.getMemberStatusNo());
			c.setChatRecv(4);
			insertChatResult = ccService.insertChat(c);
			
		}else {
			
			c.setChatSend(instance.getNo());
			c.setChatRecv(2);
			insertChatResult = ccService.insertChat(c);
			
		}
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new Gson();
		
		gson.toJson(insertChatResult, response.getWriter());
		
		
		
	}
	
	@ResponseBody
	@RequestMapping("chatEnsure.do")
	public String ensureChat(Chat c) {
		
		System.out.println(c);
		
		int ensureChatResult = ccService.ensureChat(c);
		
		if(ensureChatResult > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping("getLastChat.do")
	public void getLastChat(HttpServletResponse response, String chatTime) throws JsonIOException, IOException {
		
		// System.out.println(chatTime);
		
		ArrayList<Chat> list = ccService.selectLastChat(chatTime);
		
		// System.out.println(list);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(list, response.getWriter());
	}
	
	/*
	@ResponseBody
	@RequestMapping("confirmChat.do")
	public String confirmChat() {
		
		int result = ccService.confirmChat();
		
		if(result > 0) {
			return "success";
		}else {
			return "failed";
		}
	}
	*/
	
	@ResponseBody
	@RequestMapping("compareLastChatWithCurrentTime.do")
	public long compareLastChatWithCurrentTime(String currentTime) {
		
		long result = ccService.compareLastChatWithCurrentTime(currentTime);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("selectChatNotRead.do")
	public void selectChatNotRead(HttpServletResponse response, HttpSession session, HttpServletRequest request) throws JsonIOException, IOException {
		
		
		
		ArrayList<Chat> list = ccService.selectChatNotRead();
		
		if(list.size() == 0) {
			return;
		}
		
		Member instance = (Member)session.getAttribute("loginUser");
		
//		int recvNo = instance.getNo();
//		int sendNo = instance.getMemberStatusNo();
		
		// 회원의 read 처리
		if(instance.getMemberStatusNo() == 2) {
			instance.setMemberStatusNo(2);
			ccService.confirmChat(instance);
			
		}else {
			// 상담사의 read 처리
			System.out.println("" + request.getParameter("mno"));
			instance.setMemberStatusNo(Integer.parseInt("" + request.getParameter("mno")));
			ccService.confirmChat(instance);
			
		}
		
		
		
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(list, response.getWriter());
	}
	
	
	
}
