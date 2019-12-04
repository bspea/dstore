package com.kh.dstay.lee.perchase.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.lee.perchase.model.dao.ShoppingCartDao;
import com.kh.dstay.lee.perchase.model.vo.AddAddress;
import com.kh.dstay.lee.perchase.model.vo.Guest;
import com.kh.dstay.lee.perchase.model.vo.Order;
import com.kh.dstay.lee.perchase.model.vo.Pay;
import com.kh.dstay.lee.perchase.model.vo.ShoppingCart;
import com.kh.dstay.member.model.vo.Member;

@Service("scService")

public class ShoppingCartServiceImpl implements ShoppingCartService{
	
	@Autowired
	private ShoppingCartDao scDao;
	
	
	@Override
	public int insertShoppingCart(ShoppingCart sc) {
		
		return scDao.insertShoppingCart(sc);
	}


	@Override
	public ArrayList<ShoppingCart> selectShoppingCart(int mNo) {
		
		return scDao.selectShoppingCart(mNo);
	}


	@Override
	public int deleteShoppingCart(int cno) {
		
		return scDao.deleteShoppingCart(cno) ;
	}


	@Override
	public Member selectCheckout(int mNo) {
		
		return scDao.selectCheckout(mNo);
	}


	@Override
	public int addAddress(AddAddress ad) {
		
		return scDao.addAddress(ad);
	}


	@Override
	public ArrayList<AddAddress> getAddressList(int mno) {
		
		
		return scDao.getAddressList(mno);
	}


	@Override
	public int pay(Pay pay) {
		
		return scDao.insertPay(pay);
	}


	@Autowired
	private HttpSession session;
	
	@Override
	public int order(Order order, Guest guest) {

		Member mem = (Member)session.getAttribute("loginUser");
		
		if(mem != null) {
			System.out.println("설마 여기로?");
			return scDao.insertOrder(order);
			
		}else {
			return scDao.insertGuest(guest,session );
		}
	}


	@Override
	public int checkShoppingCart(int pno, int mno) {
		// TODO Auto-generated method stub
		return scDao.checkShoppingCart(pno,mno);
	}


	@Override
	public int deleteAddress(int ano) {
		
		return scDao.deleteAddress(ano);
	}


	@Override
	public ArrayList<AddAddress> getRecentList(int mno) {
		
		return scDao.getRecentList(mno);
		
	}

	

}
