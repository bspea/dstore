package com.kh.dstay.common;

import com.kh.dstay.notice.model.vo.PageInfo;
import com.kh.dstay.suggestion.model.vo.SuggestionPageInfo;

public class SuggestionPagination {

	public static SuggestionPageInfo getPageinfo(int currentPage, int suggestionListCount) {
		
		SuggestionPageInfo spi = null;
		int pageLimit = 5;
		int boardLimit = 5;
		
		int maxPage = (int)(Math.ceil((double)suggestionListCount / boardLimit));
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit -1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		spi = new SuggestionPageInfo(currentPage, suggestionListCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		return spi;
	}
}
