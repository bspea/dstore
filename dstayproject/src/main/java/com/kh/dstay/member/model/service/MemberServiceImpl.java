package com.kh.dstay.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.member.model.dao.MemberDao;

@Service("memberSerivce")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
}