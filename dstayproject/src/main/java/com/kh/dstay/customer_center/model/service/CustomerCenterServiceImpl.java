package com.kh.dstay.customer_center.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.customer_center.model.dao.CustomerCenterDao;
import com.kh.dstay.customer_center.model.vo.Chat;
import com.kh.dstay.suggestion.model.vo.Suggestion;
import com.kh.dstay.suggestion.model.vo.SuggestionPageInfo;

@Service("ccService")
public class CustomerCenterServiceImpl implements CustomerCenterService {
	
	@Autowired
	private CustomerCenterDao ccDao;
	
	@Override
	public int getSuggestionListCount() {
		
		return ccDao.getSuggestionListCount();
	}

	@Override
	public ArrayList<Suggestion> selectSuggestionList(SuggestionPageInfo spi) {
		
		return ccDao.selectSuggestionList(spi);
	}

	@Override
	public Suggestion selectSuggestion(int suggestionNo) {
		
		return ccDao.selectSuggestion(suggestionNo);
	}

	@Override
	public ArrayList<Chat> selectChatList() {
		
		return ccDao.selectChatList();
	}

	@Override
	public int insertChat(Chat c) {
		
		return ccDao.insertChat(c);
	}

}
