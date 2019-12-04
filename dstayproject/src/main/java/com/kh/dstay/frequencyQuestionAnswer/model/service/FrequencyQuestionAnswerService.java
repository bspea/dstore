package com.kh.dstay.frequencyQuestionAnswer.model.service;

import java.util.ArrayList;

import com.kh.dstay.frequencyQuestionAnswer.model.vo.FrequencyQuestionAnswer;

public interface FrequencyQuestionAnswerService {
	
	// 1_1. 자주 묻는 질문 (대분류 : 전체) 조회용 서비스
	ArrayList<FrequencyQuestionAnswer> selectFQAListAll();

	ArrayList<FrequencyQuestionAnswer> selectFQAListDelivery();

	ArrayList<FrequencyQuestionAnswer> selectFQAListRefund();

	ArrayList<FrequencyQuestionAnswer> selectFQAListOrder();

	ArrayList<FrequencyQuestionAnswer> selectFQAListMember();

	ArrayList<FrequencyQuestionAnswer> selectFQAListReward();

	ArrayList<FrequencyQuestionAnswer> selectFQAListOther();

	ArrayList<FrequencyQuestionAnswer> selectFQAListSearchTerm(String searchTerm);
	
	
}
