package com.kh.dstay.admin.inquiry.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.admin.inquiry.model.vo.Inquiry;

@Repository("iDao")
public class InquiryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Inquiry> selectInquiries() {
		// TODO Auto-generated method stub
		return (ArrayList) sqlSession.selectList("adminInquiryMapper.selectInquiries");
	}

	public Inquiry selectInquiry(int iNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("adminInquiryMapper.selectInquiry", iNo);
	}
	
	

}
