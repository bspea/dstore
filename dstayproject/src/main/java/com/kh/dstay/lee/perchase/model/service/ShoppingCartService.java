package com.kh.dstay.lee.perchase.model.service;

import java.util.ArrayList;

import com.kh.dstay.lee.perchase.model.vo.AddAddress;
import com.kh.dstay.lee.perchase.model.vo.Guest;
import com.kh.dstay.lee.perchase.model.vo.Order;
import com.kh.dstay.lee.perchase.model.vo.Pay;
import com.kh.dstay.lee.perchase.model.vo.ShoppingCart;
import com.kh.dstay.member.model.vo.Member;

public interface ShoppingCartService {

	// 회원 장바구니 추가 
	int insertShoppingCart(ShoppingCart sc);  
	
	// 장바구니에 추가한 정보 가져오기
	ArrayList<ShoppingCart> selectShoppingCart(int mNo);

	// 장바구니에 상품 삭제
	int deleteShoppingCart(int cno);

	// 주문으로 이동
	Member selectCheckout(int mNo);
	
	// 주소추가
	int addAddress(AddAddress ad);
	
	ArrayList<AddAddress> getAddressList(int mno);
	
	ArrayList<AddAddress> getRecentList(int mno);
	
	int pay(Pay pay);
	
	int order(Order order, Guest guset);
	
	int checkShoppingCart(int pno, int mno);
	
	int deleteAddress(int ano);
}
