package com.kh.dstay.lee.products.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode

public class Product{

	private int pno;			// 상품번호
	private int pcno;			// 상품카테고리번
	private String pname;		// 상품명
	private int price;			// 가격
	private String pcontents;	// 상품간단설명
	private String precipe;		// 조리법
	private Date penrolldate;	// 등록일
	private String pingredient;	// 성분
	private int calorie;		// 칼로리
	private String pstatus;		// 상태
	private String pcname;		// 카테고리명
	private int paverage;		// 평점
	private String pnotice; 	// 공지
	private String pi1;			// 이미지1경로(카테고리 상품목록 대표 이미지)
	private String pi2;			// 이미지2경로
	private String pi3;			// 이미지3경로
	private int inquerySum;		// 문의 총 갯수
								// 리뷰 총 갯수(추가예정)
}

