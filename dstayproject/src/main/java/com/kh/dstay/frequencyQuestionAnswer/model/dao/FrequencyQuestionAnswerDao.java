package com.kh.dstay.frequencyQuestionAnswer.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.frequencyQuestionAnswer.model.vo.FrequencyQuestionAnswer;

@Repository("fqaDao")
public class FrequencyQuestionAnswerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<FrequencyQuestionAnswer> selectFQAListAll() {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListAll");
		
		return list;
	}

	public ArrayList<FrequencyQuestionAnswer> selectFQAListDelivery() {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListDelivery");
		
		return list;
	}

	public ArrayList<FrequencyQuestionAnswer> selectFQAListRefund() {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListRefund");
		
		return list;
	}

	public ArrayList<FrequencyQuestionAnswer> selectFQAListOrder() {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListOrder");
		
		return list;
	}

	public ArrayList<FrequencyQuestionAnswer> selectFQAListMember() {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListMember");
		
		return list;
	}

	public ArrayList<FrequencyQuestionAnswer> selectFQAListReward() {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListReward");
		
		return list;
	}

	public ArrayList<FrequencyQuestionAnswer> selectFQAListOther() {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListOther");
		
		return list;
	}

	public ArrayList<FrequencyQuestionAnswer> selectFQAListSearchTerm(String searchTerm) {
		
		ArrayList<FrequencyQuestionAnswer> list = (ArrayList)sqlSession.selectList("frequencyQuestionAnswerMapper.selectFQAListSearchTerm", searchTerm);
		
		return list;
	}
}
