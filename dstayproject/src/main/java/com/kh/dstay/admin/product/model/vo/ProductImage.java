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
public class ProductImage {
	private int no;
	private int productNo;
	private String path;
	private Date createDate;
	private int orderBy;	// 0~3 : 썸네일이미지, 4: : 본문이미지(긴거하나)
	private String status;
}
