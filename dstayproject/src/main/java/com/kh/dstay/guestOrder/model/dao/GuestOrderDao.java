package com.kh.dstay.guestOrder.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.guestOrder.model.vo.GuestOrder;

@Repository
public class GuestOrderDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public GuestOrder reviewNonMemberOrder(GuestOrder requestGo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bakMapper.reviewNonMemberOrder", requestGo);
	}

}
