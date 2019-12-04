package com.kh.dstay.lee.perchase.model.vo;

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
public class Order {

	private int ono;
	private int pno;
	private int mno;
	private int payno;
	private int ocount;
	private int mpost;
	private String maddress;
	private String maddressdetail;
	private String orequest;
	private Date odate;
	private String ostatus;
	private int owaybillno;
	
	
	
	
}
