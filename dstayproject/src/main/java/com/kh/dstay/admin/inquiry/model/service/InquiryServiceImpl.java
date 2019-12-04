package com.kh.dstay.admin.inquiry.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.admin.inquiry.model.dao.InquiryDao;
import com.kh.dstay.admin.inquiry.model.vo.Inquiry;

@Service("iService")
public class InquiryServiceImpl {

	@Autowired
	private InquiryDao iDao;

	public ArrayList<Inquiry> selectInquiries() {
		// TODO Auto-generated method stub
		return iDao.selectInquiries();
	}

	public Inquiry selectInquiry(int iNo) {
		// TODO Auto-generated method stub
		return iDao.selectInquiry(iNo);
	}


}
