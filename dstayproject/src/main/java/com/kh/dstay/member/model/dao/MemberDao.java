package com.kh.dstay.member.model.dao;

import java.util.ArrayList;

import javax.validation.constraints.Email;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.member.model.vo.Diet;
import com.kh.dstay.member.model.vo.DietaryGoal;
import com.kh.dstay.member.model.vo.FoodSearch;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.member.model.vo.MyCoupon;
import com.kh.dstay.member.model.vo.OrderInfo;
import com.kh.dstay.member.model.vo.Review;
import com.kh.dstay.notice.model.vo.PageInfo;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	public Member login(Member mem) {
		
		return sqlSession.selectOne("bakMapper.login",mem);
	}
	public int ajaxDuplicateCheck(@Email String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bakMapper.ajaxDuplicateCheck",email);
	}
	public int insertMember(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.insert("bakMapper.insertMember", mem);
	}
	public int updateTempMember(Member tempMem) {
		// TODO Auto-generated method stub
		return sqlSession.update("bakMapper.udpateTempMember",tempMem);
	}
	public Member selectFindEmailMember(String phone) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bakMapper.selectFindEmailMember",phone);
	}
	public Member ajaxGoogleLogin(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("bakMapper.ajaxGoogleLogin",mem);
	}
	public int insertGoogleMember(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.insert("bakMapper.insertGoogleMember", mem);
	}
	public int ajaxNaverUserprofile(Member mem) {
		// TODO Auto-generated method stub
		return sqlSession.insert("bakMapper.ajaxNaverUserprofile",mem);
	}
	
	
	// 마이페이지 dao
	public ArrayList<Diet> selectDietList(Member m, String date) {
		return null;
	}
	public int insertDiet(Diet d) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int deleteDiet(Diet d) {
		// TODO Auto-generated method stub
		return 0;
	}
	public DietaryGoal selectMyDietaryGoal(Member m) {
		return sqlSession.selectOne("mypageMapper.selectMyDietaryGoal",m);
	}
	public int updateMyDietaryGoal(DietaryGoal dg) {
		return sqlSession.update("mypageMapper.updateMyDietaryGoal",dg);
	}
	public ArrayList<FoodSearch> searchFoodList(String str) {
		// TODO Auto-generated method stub
		return null;
	}
	public ArrayList<OrderInfo> selectOrderList(Member m, PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}
	public ArrayList<OrderInfo> selectOrderList(Member m, String startDate, String endDate,PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}
	public int firmOffer(OrderInfo oi) {
		// TODO Auto-generated method stub
		return 0;
	}
	public ArrayList<OrderInfo> selectBeforeReviewList(Member m, PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}
	public int insertMyReview(Review r) {
		// TODO Auto-generated method stub
		return 0;
	}
	public ArrayList<Review> selectMyReviewList(Member m, PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}
	public ArrayList<MyCoupon> selectMyCouponList(Member m, PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}
	public int updateMyPassword(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int updateMyNickname(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int updateMyPhone(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int withdrawal(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}