package com.kh.dstay.member.model.service;

import javax.validation.constraints.Email;

import com.kh.dstay.member.model.vo.Member;

public interface MemberService {
	// 박현정
	//로그인용 서비스
	Member login(Member mem);
	//이메일 중복체크용 서비스
	int ajaxDuplicateCheck(@Email String email);

}
