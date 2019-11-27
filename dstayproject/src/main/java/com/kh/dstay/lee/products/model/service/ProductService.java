package com.kh.dstay.lee.products.model.service;

import java.util.ArrayList;

import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;

public interface ProductService {
	
	
	
	// 카테고리 객체 가져오기
	ArrayList<ProductCategory> cateSelect();
	
	// 카테고리 별 상품 총 갯수 가져오기
	int getCateListCount(int caNo);

	// 카테고리 별 상품 가져오기
	ArrayList<Product> selectCategory(PdPageInfo pp, int caNo);
	
	// 상품 디테일
	Product selectProduct(int pdNo);
	
	// 해당 상품 문의 총 갯수 가져오기
	int getProductInqueryList(int pdNo);
	
	// 문의 가져오기
	ArrayList<ProductInquery> selectProductInquery(PdPageInfo pipg, int pdNo);
	
}
