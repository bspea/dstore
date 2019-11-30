package com.kh.dstay.member.model.service;

import java.util.ArrayList;

import javax.validation.constraints.Email;

import com.kh.dstay.member.model.vo.Diet;
import com.kh.dstay.member.model.vo.DietaryGoal;
import com.kh.dstay.member.model.vo.FoodSearch;
import com.kh.dstay.member.model.vo.Member;
import com.kh.dstay.member.model.vo.MyCoupon;
import com.kh.dstay.member.model.vo.OrderInfo;
import com.kh.dstay.member.model.vo.Review;
import com.kh.dstay.notice.model.vo.PageInfo;

public interface MemberService {
	//로그인 서비스
	Member login(Member mem);
	//이메일 중복체크 서비스
	int ajaxDuplicateCheck(@Email String email);
	//회원가입 서비스
	int insertMember(Member mem);
	//비밀번호 찾기 서비스
	int updateTempMember(Member tempMem);
	//이메일 찾기 서비스
	Member selectFindEmailMember(String phone);
	//구글로 로그인 서비스
	Member ajaxGoogleLogin(Member mem);
	//네이버로 로그인 서비스
	Member ajaxNaverUserprofile(Member mem);
	
	
	
	
	
	// 마이페이지 서비스
	
	// 등록한 식단 불러오기
	ArrayList<Diet> selectDietList(Member m,String date);
	ArrayList<Diet> selectDietListToday(Member m);
	
	
	// 식단 등록
	int insertDiet(Diet d);
	
	// 식단 삭제
	int deleteDiet(int fmno);
	
	// 식단관리 목표 조회
	DietaryGoal selectMyDietaryGoal(Member m);
	
	// 식단관리 목표설정, 수정
	int updateMyDietaryGoal(DietaryGoal dg);
	
	// 음식 검색
	ArrayList<FoodSearch> searchFoodList(String str);
	
	// 주문내역 조회
	ArrayList<OrderInfo> selectOrderList(Member m, int month,PageInfo pi);
	
	// 주문내역 기간 조회
	ArrayList<OrderInfo> selectOrderList(Member m, String startDate, String endDate, PageInfo pi);
	
	// 주문확정
	int confirmation(int ono);
	
	// 환불요청 추가
	
	// 후기 작성가능 상품 조회
	ArrayList<OrderInfo> selectBeforeReviewList(Member m, PageInfo pi);
	
	// 후기 작성
	int insertMyReview(Review r);
	
	// 내가쓴 후기 조회
	ArrayList<Review> selectMyReviewList(Member m,PageInfo pi);
	
	// 쿠폰 조회
	ArrayList<MyCoupon> selectMyCouponList(Member m);
	
	// 개인정보 수정
	// 비밀번호 수정
	int updateMyPassword(Member m);
	
	// 닉네임 수정
	int updateMyNickname(Member m);
	
	// 회원탈퇴
	int withdrawal(Member m);
	
	// 주문내역 개수 조회
	int getOrderListCount(Member m,int month);
	int getOrderListDateCount(Member m, String startDate, String endDate);
	
	// 후기 타겟 조회
	OrderInfo selectReviewTarget(int pno);
	// 후기개수 조회
	int getReviewListCount(Member m);
	
	Diet selectTargetProduct(int pno);
	
	int recodeDiet(Diet d);
	int recodeDietToday(Diet d);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}