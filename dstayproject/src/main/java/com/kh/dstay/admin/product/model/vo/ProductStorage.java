package com.kh.dstay.admin.product.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ProductStorage {
	private int no;			// 입출고내역 번호
	private int productNo;	// ref - 물품번호
	private String productName;// ref - 물품 이름
	private int count;		// 추가/감소 수량
	private Date createDate;// 작성된 날짜
	private String type;	// 추가/감소 타입
}
