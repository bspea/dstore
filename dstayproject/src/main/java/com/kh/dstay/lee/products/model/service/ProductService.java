package com.kh.dstay.lee.products.model.service;

import java.util.ArrayList;

import com.kh.dstay.lee.products.model.vo.BookMark;
import com.kh.dstay.lee.products.model.vo.InqueryAnswer;
import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;
import com.kh.dstay.lee.products.model.vo.ProductReview;

public interface ProductService {
	
	
	
	// 카테고리 객체 가져오기
	ArrayList<ProductCategory> cateSelect();
	
	// 상품 총 갯수 조회
	int getProductListCount();
	
	// 상품 리스트 조회
	ArrayList<Product> getProductList(PdPageInfo pp);
	
	// 카테고리 별 상품 총 갯수 가져오기
	int getCateListCount(int caNo);

	// 카테고리 별 상품 가져오기
	ArrayList<Product> selectCategory(PdPageInfo pp, int caNo);
	
	// 상품 디테일
	Product selectProduct(int pdNo);
	
	// 해당 상품 문의 총 갯수 가져오기
	int getProductInqueryList(int pdNo);
	
	// 문의 가져오기 (후에하자)
	//ArrayList<ProductInquery> selectProductInquery(PdPageInfo pipg, int pdNo);
	// 문의 가져오기
//	ArrayList<ProductInquery> selectProductInquery( int pdNo);
	
	// 문의 작성하기
	int insertInquery(ProductInquery pi);

	// 문의 가져오기
	ArrayList<ProductInquery> selectInqueryList(int pno);
	
	// 찜하기 가져오기
	int getBookMark(int pdNo, int mNo);
	
	int selectBookMark(int pno, int mno);
	
	// 찜하기 딜리튼
	int deleteBookMark(int mno, int pno);
	
	// 찜하기 인설트
	int insertBookMark(int mno, int pno);
	
	ArrayList<BookMark> checkBookMark(int mNo);

	ArrayList<ProductReview> getProductReview(int pno);
	
	int insertAnswer(InqueryAnswer ia);
	
	ArrayList<Product> getNextProduct(int pdNo);

}
