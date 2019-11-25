package com.kh.dstay.member.model.service;

import javax.validation.constraints.Email;

import com.kh.dstay.member.model.vo.Member;

public interface MemberService {
	//로그인 서비스
	Member login(Member mem);
	//이메일 중복체크 서비스
	int ajaxDuplicateCheck(@Email String email);
	//회원가입 서비스
	int insertMember(Member mem);
	//비밀번호 찾기 서비스
	int updateTempMember(Member tempMem);
	//이메일 찾기 서비스
	Member selectFindEmailMember(String phone);
	//구글로 로그인 서비스
	Member ajaxGoogleLogin(Member mem);
	//네이버로 로그인 서비스
	Member ajaxNaverUserprofile(Member mem);
}