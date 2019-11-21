package com.kh.dstay.notice.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonObject;
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
	
	@RequestMapping(value="noticeFilesUpload.do", method=RequestMethod.POST)
	public void noticeImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile) {
		
		//
		JsonObject json = new JsonObject();
		
		//
		PrintWriter printWriter = null;
		
		//
		OutputStream out = null;
		
		// 파일선택 버튼의 name 값
		MultipartFile file = multiFile.getFile("upload");
		
		if(file != null) {
			
			if(file.getSize() > 0 && StringUtils.)
		}
		
		
		
		
        
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        
        // webapp/resources의 resources절대경로 알기
        String root = request.getSession().getServletContext().getRealPath("resources");
        
        
        String uploadPath = root + "/nuploadFiles";
        
        
        try {
        	
        	String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        		
        		
        		
	}
}
