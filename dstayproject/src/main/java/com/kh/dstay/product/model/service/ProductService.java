package com.kh.dstay.product.model.service;

import java.util.ArrayList;
import com.kh.dstay.product.model.vo.Product;

public interface ProductService {
	
	// Author: 차종환
	public ArrayList<Product> selectWeekFavourites(); // 메인 페이지의 전체 상품 불러들이는 메소드.
	public ArrayList<Product> selectBestMenu(); // 메인페이지의 이번 주 판매량 높은 상품 불러들이는 메소드
	public ArrayList<Product> selectSortMenu_Price();
	public ArrayList<Product> selectSortMenu_New();
	public ArrayList<Product> selectSortMenu_Cell();
	// Author: 한도빈
	
	// Author: 이상화
	
	// Author: 김현지
	
	// Author: 윤인섭
	
	// Author: 박현정
}
