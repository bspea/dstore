package com.kh.dstay.customer_center.model.service;

import java.util.ArrayList;

import com.kh.dstay.customer_center.model.vo.Chat;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.suggestion.model.vo.Suggestion;
import com.kh.dstay.suggestion.model.vo.SuggestionPageInfo;

public interface CustomerCenterService {

	int getSuggestionListCount();

	ArrayList<Suggestion> selectSuggestionList(SuggestionPageInfo spi);

	Suggestion selectSuggestion(int suggestionNo);

	ArrayList<Chat> selectChatList();

	int insertChat(Chat c);

	int ensureChat(Chat c);

	ArrayList<Chat> selectLastChat(String chatTime);

	int confirmChat(Member mem);

	long compareLastChatWithCurrentTime(String currentTime);
	
	ArrayList<Chat> selectChatNotRead();
	
	
}
