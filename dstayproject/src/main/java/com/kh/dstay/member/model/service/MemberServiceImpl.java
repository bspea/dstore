package com.kh.dstay.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kh.dstay.member.model.dao.MemberDao;

import java.util.ArrayList;

import javax.validation.constraints.Email;

import com.kh.dstay.member.model.vo.Diet;
import com.kh.dstay.member.model.vo.DietaryGoal;
import com.kh.dstay.member.model.vo.FoodSearch;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.member.model.vo.MyCoupon;
import com.kh.dstay.member.model.vo.OrderInfo;
import com.kh.dstay.member.model.vo.Review;
import com.kh.dstay.member.model.vo.WishProduct;
import com.kh.dstay.notice.model.vo.PageInfo;
import com.kh.dstay.member.model.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao mDao;
	@Override
	public Member login(Member mem) {
		// TODO Auto-generated method stub
		return mDao.login(mem);
	}
	@Override
	public int ajaxDuplicateCheck(@Email String email) {
		// TODO Auto-generated method stub
		return mDao.ajaxDuplicateCheck(email);
	}
	@Override
	public int insertMember(Member mem) {
		// TODO Auto-generated method stub
		return mDao.insertMember(mem);
	}
	@Override
	public int updateTempMember(Member tempMem) {
		// TODO Auto-generated method stub
		return mDao.updateTempMember(tempMem);
	}
	@Override
	public Member selectFindEmailMember(String phone) {
		// TODO Auto-generated method stub
		return mDao.selectFindEmailMember(phone);
	}
	@Override
	public Member ajaxGoogleLogin(Member mem) {
		// TODO Auto-generated method stub
		Member checkMem = mDao.ajaxGoogleLogin(mem);
		if(checkMem != null) {
			return checkMem;
		}else {
			 int result = mDao.insertGoogleMember(mem);
			 if(result>0) {
				 return mem;
			 }else {
				 return new Member();
			 }
		}
	}
	
	@Override
	public Member ajaxNaverUserprofile(Member mem) {
		// TODO Auto-generated method stub
		Member checkMem = mDao.ajaxGoogleLogin(mem);
		if(checkMem != null) {
			return checkMem;
		}else {
			int result = mDao.ajaxNaverUserprofile(mem);
			if(result>0) {
				return mem;
			}else {
				return new Member();
			}
		}
	}
	
	
	
	
	// 마이페이지 서비스
	
	@Override
	public ArrayList<Diet> selectDietList(Member m, String date) {
		return mDao.selectDietList(m,date);
	}
	@Override
	public int insertDiet(Diet d) {
		return mDao.insertDiet(d);
	}
	@Override
	public int deleteDiet(int fmno) {
		return mDao.deleteDiet(fmno);
	}
	@Override
	public DietaryGoal selectMyDietaryGoal(Member m) {
		return mDao.selectMyDietaryGoal(m);
	}
	@Override
	public int updateMyDietaryGoal(DietaryGoal dg) {
		return mDao.updateMyDietaryGoal(dg);
	}
	@Override
	public ArrayList<FoodSearch> searchFoodList(String str) {
		return mDao.searchFoodList(str);
	}
	@Override
	public ArrayList<OrderInfo> selectOrderList(Member m,int month, PageInfo pi) {
		return mDao.selectOrderList(m,month,pi);
	}
	@Override
	public ArrayList<OrderInfo> selectOrderList(Member m, String startDate, String endDate, PageInfo pi) {
		return mDao.selectOrderList(m,startDate,endDate, pi);
	}
	@Override
	public int confirmation(int ono) {
		return mDao.confirmation(ono);
	}
	@Override
	public ArrayList<OrderInfo> selectBeforeReviewList(Member m, PageInfo pi) {
		return mDao.selectBeforeReviewList(m,pi);
	}
	@Override
	public int insertMyReview(Review r) {
		return mDao.insertMyReview(r);
	}
	@Override
	public ArrayList<Review> selectMyReviewList(Member m, PageInfo pi) {
		return mDao.selectMyReviewList(m,pi);
	}
	@Override
	public ArrayList<MyCoupon> selectMyCouponList(Member m) {
		return mDao.selectMyCouponList(m);
	}
	@Override
	public int updateMyPassword(Member m) {
		return mDao.updateMyPassword(m);
	}
	@Override
	public int updateMyNickname(Member m) {
		return mDao.updateMyNickname(m);
	}
	@Override
	public int withdrawal(Member m) {
		return mDao.withdrawal(m);
	}
	@Override
	public int getOrderListCount(Member m,int month) {
		return mDao.getOrderListCount(m, month);
	}
	@Override
	public int getOrderListDateCount(Member m, String startDate, String endDate) {
		return mDao.getOrderListDateCount(m,startDate,endDate);
	}
	@Override
	public OrderInfo selectReviewTarget(int pno) {
		return mDao.selectReviewTarget(pno);
	}
	@Override
	public int getReviewListCount(Member m) {
		return mDao.getReviewListCount(m);
	}
	@Override
	public ArrayList<Diet> selectDietListToday(Member m) {
		return mDao.selectDietListToday(m);
	}
	@Override
	public Diet selectTargetProduct(int pno) {
		return mDao.selectTargetProduct(pno);
	}
	@Override
	public int recodeDiet(Diet d) {
		return mDao.recodeDiet(d);
	}
	@Override
	public int recodeDietToday(Diet d) {
		return mDao.recodeDietToday(d);
	}
	@Override
	public int getMyWishesCount(Member m) {
		return mDao.getMyWishesCount(m);
	}
	@Override
	public ArrayList<WishProduct> selectMyWishes(Member m, PageInfo pi) {
		return mDao.selectMyWishes(m,pi);
	}
	@Override
	public int refund(OrderInfo oi) {
		return mDao.refund(oi);
	}
	@Override
	public int updateOrder(OrderInfo oi) {
		return mDao.updateOrder(oi);
	}
}