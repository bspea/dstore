package com.kh.dstay.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.product.model.vo.Product;

@Repository
public class ProductDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Product> selectWeekFavourites() {
		return (ArrayList)sqlSession.selectList("mainPageMapper.selectProduct", null, new RowBounds(0, 6));
	}
	
	public ArrayList<Product> selectBestMenu() {
		return (ArrayList)sqlSession.selectList("mainPageMapper.selectBestProduct", null, new RowBounds(0, 3));
	}
	
	public ArrayList<Product> selectSortMenu_Price() {
		return (ArrayList)sqlSession.selectList("mainPageMapper.selectSortMenuPrice", null, new RowBounds(0, 6));
	}
	
	public ArrayList<Product> selectSortMenu_New() {
		return (ArrayList)sqlSession.selectList("mainPageMapper.selectSortMenuNew", null, new RowBounds(0, 6));
	}
	
	public ArrayList<Product> selectSortMenu_Cell() {
		return (ArrayList)sqlSession.selectList("mainPageMapper.selectSortMenuCell", null, new RowBounds(0, 6));
	}
	
}
