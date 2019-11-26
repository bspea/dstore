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
	public int insertMember(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.insert("bakMapper.insertMember", mem);
	}
	public int updateTempMember(Member tempMem) {
		// TODO Auto-generated method stub
		return sqlSession.update("bakMapper.udpateTempMember",tempMem);
	}
	public Member selectFindEmailMember(String phone) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bakMapper.selectFindEmailMember",phone);
	}
	public Member ajaxGoogleLogin(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bakMapper.ajaxGoogleLogin",mem);
	}
	public int insertGoogleMember(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.insert("bakMapper.insertGoogleMember", mem);
	}
	public int ajaxNaverUserprofile(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.insert("bakMapper.ajaxNaverUserprofile",mem);
	}
}