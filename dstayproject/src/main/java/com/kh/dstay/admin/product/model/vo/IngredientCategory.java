package com.kh.dstay.admin.product.model.vo;

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
public class IngredientCategory {

	private int no;	// 성분카테고리번호	 		(1)
	private String name;	// 카테고리 이름		(돼지고기)
	private int productNo; // 물품번호
	private String status; // 삭제 상태 		(디폴트값 : Y)
}
