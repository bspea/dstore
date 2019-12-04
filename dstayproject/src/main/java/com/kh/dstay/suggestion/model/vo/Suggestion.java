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
	private int suggestionWriter;
	private String suggestionWriterName;
	private String suggestionWriterNickName;
	private String suggestionWriterPhone;
	private String suggestionTitle;
	private String suggestionContents;
	private Date writeDate;
	private String suggestionCategory;
	private String suggestionDivision;
	private String progress;			// 진행여부. N은 안 읽은 거(No), C는 확인한 거(Checked), p는 넘긴거(Proceeding)
}
