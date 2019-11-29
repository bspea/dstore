package com.kh.dstay.notice.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
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
import com.kh.dstay.notice.model.vo.NoticeFiles;
import com.kh.dstay.notice.model.vo.PageInfo;

import oracle.net.aso.n;

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
	public String insertNotice(Notice n) {
		
		
		System.out.println(n);
		int result = nService.insertNotice(n);
		
		if(result > 0) {
			return "redirect:noticeList.do";
		}else {
			return "redirect:noticeList.do";
		}
		
		
	}
	
	@RequestMapping(value="noticeFilesUpload.do", method=RequestMethod.POST)
	public String noticeImageUpload(HttpServletRequest request,
									HttpServletResponse response,
									MultipartHttpServletRequest multiFile,
									NoticeFiles nf) throws IOException {
		
		
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		 
		String savePath = root + "/nFiles";
		
		if(file != null) {
			
			if(file.getSize() > 0 && StringUtils.isNotBlank(file.getName())) {
				
				String originFileName = file.getOriginalFilename();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + "." + originFileName.substring(originFileName.lastIndexOf(".")+1);
				
				try {
					
					byte[] bytes = file.getBytes();
					
					File uploadFile = new File(savePath);
					
					if(!uploadFile.exists()) {
						uploadFile.mkdir();
					}
					
					out = new FileOutputStream(new File(savePath + "/" + renameFileName));
					
					out.write(bytes);
					
					out.flush();
					
					printWriter = response.getWriter();
					response.setContentType("text/html; charset=utf-8");
					String fileUrl = "resources/nFiles/" + renameFileName;
					
					json.addProperty("uploaded", 1);
					json.addProperty("fileName", renameFileName);
					json.addProperty("url", fileUrl);
					
					nf.setOriginFileName(originFileName);
					nf.setModifiedFileName(renameFileName);
					
					response.setContentType("application/json; charset=UTF-8");
					printWriter.println(json);
					
					printWriter.flush();
					
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					if(out != null){
                        out.close();
                    }
                    if(printWriter != null){
                        printWriter.close();
                    }
				}
			}
		}
		
		return null;

	}
	
	@RequestMapping("noticeDetail.do")
	public ModelAndView noticeDatail(int noticeNo, ModelAndView mv) {
		
		Notice n = nService.selectNotice(noticeNo);
		
		Notice prevN = nService.selectPrevNotice(noticeNo);
		Notice nextN = nService.selectNextNotice(noticeNo);
		
		if(n != null) {
			mv.addObject("n", n).addObject("prevN", prevN).addObject("nextN", nextN).setViewName("3_han/noticeDetailView");
		}
		
		return mv;
	}
}
