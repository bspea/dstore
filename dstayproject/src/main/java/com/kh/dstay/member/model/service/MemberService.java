package com.kh.dstay.member.model.service;

import javax.validation.constraints.Email;

import com.kh.dstay.member.model.vo.Member;

public interface MemberService {
	// 박현정
	//로그인용 서비스
	Member login(Member mem);
	//이메일 중복체크용 서비스
	int ajaxDuplicateCheck(@Email String email);
	//회원가입용 서비스
	int insertMember(Member mem);
	//임시비밀번호로 회원정보 수정하는 서비스
	int updateTempMember(Member tempMem);
	//이메일찾는 회원 정보 보기 서비스
	Member selectFindEmailMember(String phone);

}
