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
public class Guest {

	private int gono;
	private int pno;
	private int payno;
	private int gocount;
	private String gname;
	private String gphone;
	private String gemail;
	private int gpost;
	private String gaddress;
	private String gdetailaddress;
	private String gorequest;
	private Date godate;
	private String gostatus;
	private int gowaybillno;
	
	
	
	
}
