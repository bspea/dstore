package com.kh.dstay.guestOrder.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.guestOrder.model.dao.GuestOrderDao;
import com.kh.dstay.guestOrder.model.vo.GuestOrder;

@Service
public class GuestOrderServiceImpl implements GuestOrderService{

	@Autowired
	private GuestOrderDao gDao;
	@Override
	public GuestOrder reviewNonMemberOrder(GuestOrder requestGo) {
		// TODO Auto-generated method stub
		return gDao.reviewNonMemberOrder(requestGo);
	}

}
