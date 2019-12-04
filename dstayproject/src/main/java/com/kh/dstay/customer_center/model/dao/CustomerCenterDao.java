package com.kh.dstay.customer_center.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.customer_center.model.vo.Chat;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.suggestion.model.vo.Suggestion;
import com.kh.dstay.suggestion.model.vo.SuggestionPageInfo;

@Repository
public class CustomerCenterDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getSuggestionListCount() {
		
		return sqlSession.selectOne("suggestionMapper.getSuggestionListCount");
	}

	public ArrayList<Suggestion> selectSuggestionList(SuggestionPageInfo spi) {
		
		int offset = (spi.getCurrentPage() -1) * spi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, spi.getBoardLimit());
		
		ArrayList<Suggestion> list = (ArrayList)sqlSession.selectList("suggestionMapper.selectSuggestionList", null, rowBounds);
		
		return list;
	}

	public Suggestion selectSuggestion(int suggestionNo) {
		
		Suggestion s = sqlSession.selectOne("suggestionMapper.selectSuggestion", suggestionNo);
		
		// System.out.println("dao에서 suggestion 객체 받아오기 : " + s);
		
		return s;
	}

	public ArrayList<Chat> selectChatList() {
		
		return (ArrayList)sqlSession.selectList("chatMapper.selectChatList");
	}

	public int insertChat(Chat c) {
		
		return sqlSession.insert("chatMapper.insertChat", c);
	}

	public int ensureChat(Chat c) {
		
		return sqlSession.update("chatMapper.ensureChat", c);
	}

	public ArrayList<Chat> selectLastChat(String chatTime) {
		
		return (ArrayList)sqlSession.selectList("chatMapper.selectLastChat", chatTime);
	}

	

	public long compareLastChatWithCurrentTime(String currentTime) {
		
		return sqlSession.selectOne("chatMapper.compareLastChatWithCurrentTime", currentTime);
	}

	public ArrayList<Chat> selectChatNotRead() {
		
		return (ArrayList)sqlSession.selectList("chatMapper.selectChatNotRead");
	}

	public int confirmChat(Member mem) {
		
		return sqlSession.update("chatMapper.confirmChat", mem);
	}
	
	public ArrayList<Chat> getChatRoomList() {
		return (ArrayList)sqlSession.selectList("chatMapper.chatRoomList");
	}
}
