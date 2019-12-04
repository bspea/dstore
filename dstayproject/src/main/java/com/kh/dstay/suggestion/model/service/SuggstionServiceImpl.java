package com.kh.dstay.suggestion.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.suggestion.model.dao.SuggestionDao;
import com.kh.dstay.suggestion.model.vo.Suggestion;

@Service("sService")
public class SuggstionServiceImpl implements SuggestionService{

	@Autowired
	private SuggestionDao sDao;

	@Override
	public int insertSuggestion(Suggestion s) {
		
		return sDao.insertSuggestion(s);
	}

	@Override
	public int suggestionOperation(Suggestion s) {
		
		return sDao.suggestionOperation(s);
	}
}
