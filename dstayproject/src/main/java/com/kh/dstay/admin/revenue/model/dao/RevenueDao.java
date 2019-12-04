package com.kh.dstay.admin.revenue.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.admin.revenue.model.vo.GuestOrder;
import com.kh.dstay.admin.revenue.model.vo.Order;
import com.kh.dstay.admin.revenue.model.vo.Payment;
import com.kh.dstay.admin.revenue.model.vo.Refund;

@Repository("rDao")
public class RevenueDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Order> selectAllOrders() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminRevenueMapper.selectAllOrders");
	}

	public ArrayList<Payment> selectAllPayments() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminRevenueMapper.selectAllPayments");
	}
	
	public ArrayList<GuestOrder> selectAllGuestOrders(){
		return (ArrayList)sqlSession.selectList("adminRevenueMapper.selectAllGuestOrders");
	}

	public Payment selectPayment(int pNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("adminRevenueMapper.selectPayment",pNo);
	}

	public ArrayList<Refund> selectAllRefunds() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminRevenueMapper.selectAllRefunds");
	}

	public Refund selectRefund(int rNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("adminRevenueMapper.selectRefund",rNo);
	}
}
