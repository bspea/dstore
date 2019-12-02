package com.kh.dstay.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import javax.validation.constraints.Email;

import org.apache.ibatis.session.RowBounds;
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
import com.kh.dstay.member.model.vo.WishProduct;
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
		HashMap map=new HashMap();
		map.put("no",m.getNo());
		map.put("date",date);
		return (ArrayList)sqlSession.selectList("mypageMapper.selectDietList",map);
	}
	public int insertDiet(Diet d) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int deleteDiet(int fmno) {
		return sqlSession.update("mypageMapper.deleteDiet",fmno);
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
	public ArrayList<OrderInfo> selectOrderList(Member m,int month, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		HashMap map=new HashMap();
		map.put("no",m.getNo());
		map.put("month",month);
		return (ArrayList)sqlSession.selectList("mypageMapper.selectOrderListMonth",map,rowBounds);
	}
	public ArrayList<OrderInfo> selectOrderList(Member m, String startDate, String endDate,PageInfo pi) {
		HashMap map=new HashMap();
		map.put("no",m.getNo());
		map.put("startDate",startDate);
		map.put("endDate",endDate);
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("mypageMapper.selectOrderListDate",map,rowBounds);
	}
	public int confirmation(int ono) {
		return sqlSession.update("mypageMapper.confirmation",ono);
	}
	public ArrayList<OrderInfo> selectBeforeReviewList(Member m, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("mypageMapper.selectBeforeReviewList",m,rowBounds);
	}
	public int insertMyReview(Review r) {
		return sqlSession.insert("mypageMapper.insertMyReview",r);
	}
	public ArrayList<Review> selectMyReviewList(Member m, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("mypageMapper.selectMyReviewList",m,rowBounds);
	}
	public ArrayList<MyCoupon> selectMyCouponList(Member m) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectMyCouponList",m);
	}
	public int updateMyPassword(Member m) {
		return sqlSession.update("mypageMapper.updateMyPassword",m);
	}
	public int updateMyNickname(Member m) {
		return sqlSession.update("mypageMapper.updateMyNickname",m);
	}
	public int withdrawal(Member m) {
		return sqlSession.update("mypageMapper.withdrawal",m);
	}
	public int getOrderListCount(Member m, int month) {
		HashMap map=new HashMap();
		map.put("no",m.getNo());
		map.put("month",month);
		return sqlSession.selectOne("mypageMapper.getOrderListMonthCount",map);
	}
	public int getOrderListDateCount(Member m, String startDate, String endDate) {
		HashMap map=new HashMap();
		map.put("no",m.getNo());
		map.put("startDate",startDate);
		map.put("endDate",endDate);
		return sqlSession.selectOne("mypageMapper.getOrderListDateCount",map);
	}
	public OrderInfo selectReviewTarget(int pno) {
		return sqlSession.selectOne("mypageMapper.selectReviewTarget",pno);
	}
	public int getReviewListCount(Member m) {
		return sqlSession.selectOne("mypageMapper.getReviewListCount",m);
	}
	public ArrayList<Diet> selectDietListToday(Member m) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectDietListToday",m);
	}
	public Diet selectTargetProduct(int pno) {
		return sqlSession.selectOne("mypageMapper.selectTargetProduct",pno);
	}
	public int recodeDiet(Diet d) {
		return sqlSession.insert("mypageMapper.recodeDiet",d);
	}
	public int recodeDietToday(Diet d) {
		return sqlSession.insert("mypageMapper.recodeDietToday",d);
	}
	public int getMyWishesCount(Member m) {
		return sqlSession.selectOne("mypageMapper.getMyWishesCount",m);
	}
	public ArrayList<WishProduct> selectMyWishes(Member m, PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("mypageMapper.selectMyWishes",m,rowBounds);
	}
	public int refund(OrderInfo oi) {
		return sqlSession.insert("mypageMapper.refund",oi);
	}
	public int updateOrder(OrderInfo oi) {
		return sqlSession.update("mypageMapper.updateOrder",oi);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}