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
public class Pay {

	private int pno;
	private String ptype;
	private Date pdate;
	private int pprice;
	private int ptotalprice;
	private int pnumber;
	
	
	
}
