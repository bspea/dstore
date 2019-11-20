package com.kh.dstay.frequencyQuestionAnswer.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.frequencyQuestionAnswer.model.dao.FrequencyQuestionAnswerDao;
import com.kh.dstay.frequencyQuestionAnswer.model.vo.FrequencyQuestionAnswer;

@Service("fqaService")
public class FrequencyQuestionAnswerServiceImpl implements FrequencyQuestionAnswerService {
	
	@Autowired
	private FrequencyQuestionAnswerDao fqaDao;

	@Override
	public ArrayList<FrequencyQuestionAnswer> selectFQAListAll() {
		return fqaDao.selectFQAListAll();
	}

	@Override
	public ArrayList<FrequencyQuestionAnswer> selectFQAListDelivery() {
		return fqaDao.selectFQAListDelivery();
	}


}
