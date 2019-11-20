package com.kh.dstay.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
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
}
