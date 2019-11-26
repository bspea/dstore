package com.kh.dstay.customer_center.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
