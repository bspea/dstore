package com.kh.dstay.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.member.model.dao.MemberDao;

import javax.validation.constraints.Email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.member.model.dao.MemberDao;
import com.kh.dstay.member.model.vo.Member;

import com.kh.dstay.member.model.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao mDao;
	@Override
	public Member login(Member mem) {
		// TODO Auto-generated method stub
		return mDao.login(mem);
	}
	@Override
	public int ajaxDuplicateCheck(@Email String email) {
		// TODO Auto-generated method stub
		return mDao.ajaxDuplicateCheck(email);
	}

	@Override
	public int insertMember(Member mem) {
		// TODO Auto-generated method stub
		return mDao.insertMember(mem);
	}
	@Override
	public int updateTempMember(Member tempMem) {
		// TODO Auto-generated method stub
		return mDao.updateTempMember(tempMem);
	}
	@Override
	public Member selectFindEmailMember(String phone) {
		// TODO Auto-generated method stub
		return mDao.selectFindEmailMember(phone);
	}
	@Override
	public Member ajaxGoogleLogin(Member mem) {
		// TODO Auto-generated method stub
		Member checkMem = mDao.ajaxGoogleLogin(mem);
		if(checkMem != null) {
			return checkMem;
		}else {
			 int result = mDao.insertGoogleMember(mem);
			 if(result>0) {
				 return mem;
			 }else {
				 return new Member();
			 }
		}
	}
	@Override
	public Member ajaxNaverUserprofile(Member mem) {
		// TODO Auto-generated method stub
		Member checkMem = mDao.ajaxGoogleLogin(mem);
		if(checkMem != null) {
			return checkMem;
		}else {
			int result = mDao.ajaxNaverUserprofile(mem);
			if(result>0) {
				return mem;
			}else {
				return new Member();
			}
		}
	}

}