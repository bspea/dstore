package com.kh.dstay.frequencyQuestionAnswer.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.dstay.frequencyQuestionAnswer.model.service.FrequencyQuestionAnswerService;
import com.kh.dstay.frequencyQuestionAnswer.model.vo.FrequencyQuestionAnswer;



/**
 * @author Han
 *
 */
/**
 * @author Han
 *
 */
/**
 * @author Han
 *
 */
@Controller
public class FrequencyQuestionAnswerController {
	
	@Autowired
	private FrequencyQuestionAnswerService fqaService;

	

	
	@RequestMapping("fqaList-all.do")
	public ModelAndView frequencyQuestionAnswerListAll(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListAll();
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_1_all");
		
		return mv;
	}
	
	@RequestMapping("fqaList-delivery.do")
	public ModelAndView frequencyQuestionAnswerListDelivery(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListDelivery();
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_2_delivery");
		
		return mv;
	}
	
	@RequestMapping("fqaList-order.do")
	public ModelAndView frequencyQuestionAnswerListOrder(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListOrder();
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_3_order");
		
		return mv;
	}
	
	@RequestMapping("fqaList-refund.do")
	public ModelAndView frequencyQuestionAnswerListRefund(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListRefund();
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_4_refund");
		
		return mv;
	}
	
	
	
	@RequestMapping("fqaList-member.do")
	public ModelAndView frequencyQuestionAnswerListMember(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListMember();
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_5_member");
		
		return mv;
	}
	
	@RequestMapping("fqaList-reward.do")
	public ModelAndView frequencyQuestionAnswerListReward(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListReward();
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_6_reward");
		
		return mv;
	}
	
	@RequestMapping("fqaList-other.do")
	public ModelAndView frequencyQuestionAnswerListOther(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListOther();
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_7_other");
		
		return mv;
	}
	
	/*
	@RequestMapping("fqaSearch.do")
	public ModelAndView frequencyQuestionAnswerListSearchResults(ModelAndView mv, HttpServletRequest request) {
		
		String searchTerm = request.getParameter("searchTxt");
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListSearchTerm(searchTerm);
		
		mv.addObject("list", list).addObject("searchTerm", searchTerm).setViewName("3_han/frequency_question_search_results");
		
		return mv;
		
	}
	*/
	
	@RequestMapping("fqaList-all-show.do")
	public void frequencyQuestionAnswerListAll(HttpServletResponse response, HttpServletRequest request) throws JsonIOException, IOException {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListAll();
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(list, response.getWriter());
		
	}
	
	
	@RequestMapping("fqaSearch.do")
	public void frequencyQuestionAnswerListSearchResults(String searchTerm, HttpServletResponse response, HttpServletRequest request) throws JsonIOException, IOException {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectFQAListSearchTerm(searchTerm);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		gson.toJson(list, response.getWriter());
		
	}
}
