package com.kh.dstay.admin.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.admin.member.model.dao.MemberDao;
import com.kh.dstay.admin.member.model.vo.Address;
import com.kh.dstay.admin.member.model.vo.CouponInformation;
import com.kh.dstay.admin.member.model.vo.Member;
import com.kh.dstay.admin.member.model.vo.Report;

@Service("adminMService")
public class MemberServiceImpl {

	
	
	@Autowired
	private MemberDao adminMDao;
	
	public ArrayList<Member> selectMemberList() {
		// TODO Auto-generated method stub
		return adminMDao.selectMemberList();
	}

	public Member selectMember(int mNo) {
		// TODO Auto-generated method stub
		return adminMDao.selectMember(mNo);
	}

	public ArrayList<Report> selectMemberReport(int mNo) {
		// TODO Auto-generated method stub
		return adminMDao.selectMemberReport(mNo);
	}

	public ArrayList<Address> selectAddress(int mNo) {
		// TODO Auto-generated method stub
		return adminMDao.selectAddress(mNo);
	}

	public ArrayList<CouponInformation> selectCouponList() {
		// TODO Auto-generated method stub
		return adminMDao.selectCouponList();
	}
}
