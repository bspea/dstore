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
	
	@RequestMapping("customerCenter.do")
	public String customerCenter() {
		return "3_han/customer_center_main";
	}
	

	
	@RequestMapping("fqaList.do")
	public ModelAndView FrequencyQuestionAnswerList(ModelAndView mv) {
		
		ArrayList<FrequencyQuestionAnswer> list = fqaService.selectList();
		
		System.out.println(list);
		
		mv.addObject("list", list).setViewName("3_han/frequency_question_1_all");
		
		return mv;
	}
}
