package com.kh.dstay.admin.revenue.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Payment {

	private int no;
	private String type;
	private Date payedDate;
	private int price;
	private int totalPrice;
	private String  number;	// 통장입금
}
