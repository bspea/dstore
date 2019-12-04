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
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
public class ProductReview {

	private int prno;
	private int mno;
	private int pno;
	private String mname;
	private String rcontents;
	private int point;
	private Date prdate;
	private String prstatus;
	
	
}
