package com.kh.dstay.admin.revenue.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.admin.revenue.model.dao.RevenueDao;
import com.kh.dstay.admin.revenue.model.vo.GuestOrder;
import com.kh.dstay.admin.revenue.model.vo.Order;
import com.kh.dstay.admin.revenue.model.vo.Payment;
import com.kh.dstay.admin.revenue.model.vo.Refund;

@Service("rService")
public class RevenueServiceImpl {

	@Autowired
	private RevenueDao rDao;

	public ArrayList<Order> selectAllOrders() {
		// TODO Auto-generated method stub
		return rDao.selectAllOrders();
	}

	public ArrayList<Payment> selectAllPayments() {
		// TODO Auto-generated method stub
		return rDao.selectAllPayments();
	}
	
	public ArrayList<GuestOrder> selectAllGuestOrders(){
		return rDao.selectAllGuestOrders();
	}

	public Payment selectPayment(int pNo) {
		// TODO Auto-generated method stub
		return rDao.selectPayment(pNo);
	}

	public ArrayList<Refund> selectAllRefunds() {
		// TODO Auto-generated method stub
		return rDao.selectAllRefunds();
	}

	public Refund selectRefund(int rNo) {
		// TODO Auto-generated method stub
		return rDao.selectRefund(rNo);
	}
	
}
