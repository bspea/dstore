package com.kh.dstay.lee.perchase.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.lee.perchase.model.vo.AddAddress;
import com.kh.dstay.lee.perchase.model.vo.Guest;
import com.kh.dstay.lee.perchase.model.vo.Order;
import com.kh.dstay.lee.perchase.model.vo.Pay;
import com.kh.dstay.lee.perchase.model.vo.ShoppingCart;
import com.kh.dstay.member.model.vo.Member;

@Repository("scDao")
public class ShoppingCartDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertShoppingCart(ShoppingCart sc) {
			

		int result = sqlSession.insert("perchaseMapper.insertShoppingCart_lee",sc); 
				
		
		return result;
	}
	
	public ArrayList<ShoppingCart> selectShoppingCart(int mNo){
		return  (ArrayList)sqlSession.selectList("perchaseMapper.selectShoppingCart_lee",mNo);
	}
	
	public int deleteShoppingCart(int cno) {
		return sqlSession.delete("perchaseMapper.deleteShoppingCart_lee",cno);
	}
	
	public Member selectCheckout(int mNo) {
		return (Member)sqlSession.selectOne("memberMapper.selectMember_lee",mNo);
		
	}
	
	public int addAddress(AddAddress ad) {
		return sqlSession.insert("perchaseMapper.insertAddress_lee",ad);
	}
	
	public ArrayList<AddAddress> getAddressList(int mno) {
		
		return (ArrayList)sqlSession.selectList("perchaseMapper.getAddressList_lee",mno);
	}
	
	public ArrayList<AddAddress> getRecentList(int mno) {
		
		return (ArrayList)sqlSession.selectList("perchaseMapper.getRecentList_lee",mno);
	}
	
	public int insertPay(Pay pay) {
		
		return sqlSession.insert("perchaseMapper.insertPay_lee",pay);
	}
	
	public int checkShoppingCart(int pno, int mno) {
		
		HashMap<String,Integer> hMap = new HashMap<>();
		
		hMap.put("pno", pno);
		hMap.put("mno", mno);
		
		
		return sqlSession.selectOne("perchaseMapper.checkShoppingCart_lee", hMap );
		
	}
	
	public int insertOrder(Order order) {
		
		int mno = order.getMno();
		
		System.out.println(mno);
		
		ArrayList<ShoppingCart> cartList = (ArrayList)sqlSession.selectList("perchaseMapper.checkListShoppingCart_lee",mno);
		
		int result = 0;

		for(int i=0; i<cartList.size(); i++) {
			
			
			if(i == 0) {
				
				order.setPno(cartList.get(0).getPno());
				order.setOcount(cartList.get(0).getCcount());
				
				result = sqlSession.insert("perchaseMapper.insertOrder_lee", order);
			}else {
				order.setPno(cartList.get(i).getPno());
				order.setOcount(cartList.get(i).getCcount());
				
				result = sqlSession.insert("perchaseMapper.insertOrder_lee2", order);
			}
			
		}
		
		if(result == 1) {
			return 1;
			
		}else {
			return 0;
		}
		
		
	}
	
	public int insertGuest(Guest guset, HttpSession session) {
		

		ArrayList<ShoppingCart> cartList = (ArrayList<ShoppingCart>)session.getAttribute("scList");
		
		
		
		int result = 0;

		for(int i=0; i<cartList.size(); i++) {
			
			
			if(i == 0) {
				
				guset.setPno(cartList.get(0).getPno());
				guset.setGocount(cartList.get(0).getCcount());
				
				result = sqlSession.insert("perchaseMapper.insertGuest_lee", guset);
			}else {
				guset.setPno(cartList.get(i).getPno());
				guset.setGocount(cartList.get(i).getCcount());
				
				result = sqlSession.insert("perchaseMapper.insertGuest_lee2", guset);
			}
			
		}
		
		if(result == 1) {
			return 1;
			
		}else {
			return 0;
		}
		
		
	}
	
	public int deleteAddress(int ano) {
		
		return sqlSession.delete("perchaseMapper.deleteAddress_lee",ano);
		
	}
	
	
}
