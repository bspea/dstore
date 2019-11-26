package com.kh.dstay.lee.login.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.lee.login.model.vo.Member;

@Repository("lDao")
public class LoginDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member loginUser(Member loginUser) {
		
		
		return sqlSession.selectOne("memberMapper.loginUser",loginUser);
		
	}
	
	
	
	
	
}
