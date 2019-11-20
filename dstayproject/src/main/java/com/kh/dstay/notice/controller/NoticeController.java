package com.kh.dstay.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dstay.common.Pagination;
import com.kh.dstay.notice.model.service.NoticeService;
import com.kh.dstay.notice.model.vo.Notice;
import com.kh.dstay.notice.model.vo.PageInfo;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService nService;
	
	@RequestMapping("noticeList.do")
	public ModelAndView noticeList(ModelAndView mv, @RequestParam(value="currentPage", defaultValue="1") int currentPage) {
		
		int listCount = nService.getNoticeListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.selectNoticeList(pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("3_han/notice_main");
		
		return mv;
	}
	
	
	@RequestMapping("noticeInsertForm.do")
	public String noticeInsertView() {
		return "3_han/noticeInsertForm";
	}
	
	@RequestMapping("noticeInsert.do")
	public String insertNotice(Notice n,
							   @RequestParam(value="uploadFile", required=false) MultipartFile file) {
		
		System.out.println(n);
		System.out.println(file);
		
		return "redirect:noticeList.do";
	}
}
