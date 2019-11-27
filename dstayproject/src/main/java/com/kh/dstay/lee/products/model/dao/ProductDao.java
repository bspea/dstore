package com.kh.dstay.lee.products.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;

@Repository("pDao")
public class ProductDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	public ArrayList<ProductCategory> cateSelect() {
		
		return (ArrayList)sqlSession.selectList("productMapper.cateSelect_lee");
		
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
	
	public ArrayList<ProductInquery> selectProductInquery(PdPageInfo pipg, int pdNo){
		
		int offset = (pipg.getCurrentPage()-1)*pipg.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pipg.getBoardLimit());
		
		ArrayList<ProductInquery> list = (ArrayList)sqlSession.selectList("productMapper.selectProductInquery_lee",pdNo,rowBounds);
		
		return list;
	}
	
}