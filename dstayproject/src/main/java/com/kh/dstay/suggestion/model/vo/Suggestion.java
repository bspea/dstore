package com.kh.dstay.suggestion.model.vo;

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
public class Suggestion {
	
	private int suggestionNo;
	private String suggestionWriter;
	private String suggestionTitle;
	private String suggestionContents;
	private Date writeDate;
	private String suggestionCategory;
	private String suggestionDivision;
	private String progress;			// 진행여부. n은 안 읽은 거, c는 확인한 거, p는 넘긴거
}
