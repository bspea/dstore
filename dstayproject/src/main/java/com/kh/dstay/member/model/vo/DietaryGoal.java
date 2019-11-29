package com.kh.dstay.member.model.vo;

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
public class DietaryGoal {

	public int memberNo;
	public String gender;
	public int age;
	public int height;
	public int weight;
	public int targetWeight;
	public double workrate;
	public int goal;
	public Date date;
}
