package com.kh.dstay.customer_center.model.service;

import java.util.ArrayList;

import com.kh.dstay.suggestion.model.vo.Suggestion;
import com.kh.dstay.suggestion.model.vo.SuggestionPageInfo;

public interface CustomerCenterService {

	int getSuggestionListCount();

	ArrayList<Suggestion> selectSuggestionList(SuggestionPageInfo spi);

	Suggestion selectSuggestion(int suggestionNo);

}
