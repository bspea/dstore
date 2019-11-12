package com.kh.dstay.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.member.model.dao.MemberDao;
import com.kh.dstay.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao mDao;
	@Override
	public Member login(Member mem) {
		// TODO Auto-generated method stub
		return mDao.login(mem);
	}

}
