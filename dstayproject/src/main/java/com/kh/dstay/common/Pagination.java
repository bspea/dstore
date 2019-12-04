package com.kh.dstay.common;

import com.kh.dstay.notice.model.vo.PageInfo;

public class Pagination {

	public static PageInfo getPageInfo(int currentPage, int listCount) {
		
		PageInfo pi = null;
		int pageLimit = 10;		// 페이지바 수
		int boardLimit = 10;	// 한 페이지에 게시물 몇 개씩 보여줄 것인가
		
		int maxPage = (int)(Math.ceil((double)listCount / boardLimit));
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit -1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		return pi;
	}
	
	public static PageInfo getOrderInfoPageInfo(int currentPage, int listCount) {
		
		PageInfo pi = null;
		int pageLimit = 10;		
		int boardLimit = 20;	
		
		int maxPage = (int)(Math.ceil((double)listCount / boardLimit));
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit -1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		return pi;
	}
	public static PageInfo getWishesPageInfo(int currentPage, int listCount) {
		
		PageInfo pi = null;
		int pageLimit = 10;		
		int boardLimit = 9;	
		
		int maxPage = (int)(Math.ceil((double)listCount / boardLimit));
		int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		int endPage = startPage + pageLimit -1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		return pi;
	}
	
}
