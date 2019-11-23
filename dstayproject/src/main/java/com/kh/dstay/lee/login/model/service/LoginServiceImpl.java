package com.kh.dstay.lee.login.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.lee.login.model.dao.LoginDao;
import com.kh.dstay.lee.login.model.vo.Member;

@Service("mService")
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private LoginDao lDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginUser(Member loginUser) {
		
		return lDao.loginUser(loginUser);
	}

}
