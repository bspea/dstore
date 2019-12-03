package com.kh.dstay.admin.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.admin.member.model.vo.Address;
import com.kh.dstay.admin.member.model.vo.CouponInformation;
import com.kh.dstay.admin.member.model.vo.Member;
import com.kh.dstay.admin.member.model.vo.Report;

@Repository("adminMDao")
public class MemberDao {


	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public ArrayList<Member> selectMemberList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectMemberList");
	}
	
	public Member selectMember(int mNo) {
		return sqlSession.selectOne("adminMemberMapper.selectMember", mNo);
	}

	public ArrayList<Report> selectMemberReport(int mNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectMemberReport", mNo);
	}

	public ArrayList<Address> selectAddress(int mNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectAddress",mNo);
	}

	public ArrayList<CouponInformation> selectCouponList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectCouponList");
	}
	
}
