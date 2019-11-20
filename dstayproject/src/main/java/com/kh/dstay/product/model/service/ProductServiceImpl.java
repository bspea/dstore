package com.kh.dstay.product.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.product.model.dao.ProductDao;
import com.kh.dstay.product.model.vo.Product;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao pDao;

	/** 차종환
	 *  이번 주 가장 많이 팔린 상품을 조회합니다.
	 */
	@Override
	public ArrayList<Product> selectWeekFavourites() {
		// TODO Auto-generated method stub
		return pDao.selectWeekFavourites();
	}
	
}
