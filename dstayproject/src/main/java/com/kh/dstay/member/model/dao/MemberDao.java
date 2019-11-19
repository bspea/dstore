package com.kh.dstay.member.model.dao;

import javax.validation.constraints.Email;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.member.model.vo.Member;

@Repository
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member login(Member mem) {
		
		return sqlSession.selectOne("bakMapper.login",mem);
	}

	public int ajaxDuplicateCheck(@Email String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bakMapper.ajaxDuplicateCheck",email);
	}
	
	
}

