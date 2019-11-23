package com.kh.dstay.member.model.service;

import javax.validation.constraints.Email;

import com.kh.dstay.member.model.vo.Member;

public interface MemberService {
	Member login(Member mem);
	int ajaxDuplicateCheck(@Email String email);
	int insertMember(Member mem);
	int updateTempMember(Member tempMem);
	Member selectFindEmailMember(String phone);
}