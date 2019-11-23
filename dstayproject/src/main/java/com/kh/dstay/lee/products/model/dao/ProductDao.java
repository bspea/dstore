package com.kh.dstay.lee.products.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;

@Repository("pDao")
public class ProductDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	public ArrayList<ProductCategory> cateSelect() {
		
		return (ArrayList)sqlSession.selectList("productMapper.cateSelect");
		
	}
	
	
	public int getCateListCount(int caNo) {
		
		return sqlSession.selectOne("productMapper.getCateListCount",caNo);
	}
	
	
	public ArrayList<Product> selectCategory(PdPageInfo pp, int caNo){
		
		int offset = (pp.getCurrentPage()-1)*pp.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pp.getBoardLimit());
		
		ArrayList<Product> list = (ArrayList)sqlSession.selectList("productMapper.selectCategory",caNo,rowBounds);
		
		return list;
		
	}
	
	public Product selectProduct(int pdNo) {
		
		return sqlSession.selectOne("productMapper.selectProduct",pdNo);
	}
	
	
}
