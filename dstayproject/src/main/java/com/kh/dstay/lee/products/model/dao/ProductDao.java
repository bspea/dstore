package com.kh.dstay.lee.products.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.lee.products.model.vo.BookMark;
import com.kh.dstay.lee.products.model.vo.InqueryAnswer;
import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;
import com.kh.dstay.lee.products.model.vo.ProductReview;

@Repository("pDao")
public class ProductDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	public ArrayList<ProductCategory> cateSelect() {
		
		return (ArrayList)sqlSession.selectList("productMapper.cateSelect_lee");
		
	}
	
	public int getProductListCount() {
		
		return sqlSession.selectOne("productMapper.getProductListCount_lee");
		
	}
	
	public ArrayList<Product> getProductList(PdPageInfo pp){
		
		int offset = (pp.getCurrentPage()-1)*pp.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pp.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("productMapper.getProductList_lee",null,rowBounds);
		
	}
	
	
	public int getCateListCount(int caNo) {
		
		return sqlSession.selectOne("productMapper.getCateListCount_lee",caNo);
	}
	
	
	public ArrayList<Product> selectCategory(PdPageInfo pp, int caNo){
		
		int offset = (pp.getCurrentPage()-1)*pp.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pp.getBoardLimit());
		
		ArrayList<Product> list = (ArrayList)sqlSession.selectList("productMapper.selectCategory_lee",caNo,rowBounds);
		
		return list;
		
	}
	
	public Product selectProduct(int pdNo) {
		
		return sqlSession.selectOne("productMapper.selectProduct_lee",pdNo);
	}
	
	public int getProductInqueryList(int pdNo) {
		
		return sqlSession.selectOne("productMapper.getProductInqueryList_lee",pdNo);
	}
	
//	public ArrayList<ProductInquery> selectProductInquery(PdPageInfo pipg, int pdNo){
//		
//		int offset = (pipg.getCurrentPage()-1)*pipg.getBoardLimit();
//		
//		RowBounds rowBounds = new RowBounds(offset, pipg.getBoardLimit());
//		
//		ArrayList<ProductInquery> list = (ArrayList)sqlSession.selectList("productMapper.selectProductInquery_lee",pdNo,rowBounds);
//		
//		return list;
//	}
//	

//	public ArrayList<ProductInquery> selectProductInquery( int pdNo){
//		
//	
//		ArrayList<ProductInquery> list = (ArrayList)sqlSession.selectList("productMapper.selectProductInquery_lee",pdNo);
//		
//		return list;
//	}
	
	public int insertInquery(ProductInquery pi) {
	
		return sqlSession.insert("productMapper.insertInquery_lee", pi);
	}
	
	public ArrayList<ProductInquery> selectInqueryList(int pno){
		
		return (ArrayList)sqlSession.selectList("productMapper.selectInqueryList_lee", pno);
		
	}
	
	public int getBookMark(int pdNo, int mNo) {
		
		HashMap<String,Integer> hMap = new HashMap();
		
		hMap.put("pdNo", pdNo);
		hMap.put("mNo", mNo);
		
		return sqlSession.selectOne("productMapper.getBookMark_lee", hMap);
	}
	
	public int deleteBookMark(int mno, int pno) {
		
		HashMap<String,Integer> hMap = new HashMap();
		
		hMap.put("mno", mno);
		hMap.put("pno", pno);
		
		return sqlSession.delete("productMapper.deleteBookMark_lee", hMap);
	}
	
	public int insertBookMark(int mno, int pno) {
		
		HashMap<String,Integer> hMap = new HashMap();
		
		hMap.put("mno", mno);
		hMap.put("pno", pno);
		
		return sqlSession.delete("productMapper.insertBookMark_lee", hMap);
	}
	
	public int selectBookMark(int pdNo, int mNo) {
		
	
	HashMap<String,Integer> hMap = new HashMap();
	
	hMap.put("pdNo", pdNo);
	hMap.put("mNo", mNo);
	
	return sqlSession.selectOne("productMapper.getBookMark_lee", hMap);
	}

	public ArrayList<BookMark> checkBookMark(int mNo) {
		
		
		
		
		return (ArrayList)sqlSession.selectList("productMapper.checkBookMark_lee" ,mNo);
		
	}

	public ArrayList<ProductReview> getProductReview(int pno){
		
		return (ArrayList)sqlSession.selectList("productMapper.getProductReview_lee", pno);
	}

	public int insertAnswer(InqueryAnswer ia) {
		
		return sqlSession.update("productMapper.insertAnswer_lee",ia);
	}
	
	public ArrayList<Product> getNextProduct(int pdNo){
		
		HashMap<String,Integer> hMap = new HashMap();
		
		int nextNum1 = pdNo +1;
		int nextNum2 = pdNo +2;
		int nextNum3 = pdNo +3;
		
		hMap.put("nextNum1", nextNum1);
		hMap.put("nextNum2", nextNum2);
		hMap.put("nextNum3", nextNum3);
		
		return (ArrayList)sqlSession.selectList("productMapper.getNextProduct_lee", hMap);
		
	}

}
