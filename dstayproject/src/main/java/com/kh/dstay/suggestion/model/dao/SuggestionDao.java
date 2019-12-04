package com.kh.dstay.suggestion.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.suggestion.model.vo.Suggestion;

@Repository("sDao")
public class SuggestionDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertSuggestion(Suggestion s) {
		
		return sqlSession.insert("suggestionMapper.insertSuggestion", s);
	}

	public int suggestionOperation(Suggestion s) {
		
		return sqlSession.update("suggestionMapper.suggestionOperation", s);
	}

}
