package com.kh.dstay.frequencyQuestionAnswer.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dstay.frequencyQuestionAnswer.model.service.FrequencyQuestionAnswerService;
import com.kh.dstay.frequencyQuestionAnswer.model.vo.FrequencyQuestionAnswer;



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
	
	
}
