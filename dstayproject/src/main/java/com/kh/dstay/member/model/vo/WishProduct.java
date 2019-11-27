package com.kh.dstay.member.model.vo;

import java.sql.Date;

import com.kh.dstay.lee.products.model.vo.Product;

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
public class WishProduct {
	
	private int productNo;
	private int memberNo;
	private String productName;
	private String imgPath;
	private int price;
	private int point;
	private String status;
	
}
