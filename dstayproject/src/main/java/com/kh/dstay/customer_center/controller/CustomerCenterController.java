package com.kh.dstay.customer_center.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dstay.common.SuggestionPagination;
import com.kh.dstay.customer_center.model.service.CustomerCenterService;
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
	public ModelAndView csRepresentative(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
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
	public String oneOnOne() {
		return "3_han/oneOnOne";
	}
	
	
}
