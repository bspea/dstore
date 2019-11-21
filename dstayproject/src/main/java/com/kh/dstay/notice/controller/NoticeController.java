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
	public String noticeImageUpload(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile) throws IOException {
		
		//
		JsonObject json = new JsonObject();
		
		//
		PrintWriter printWriter = null;
		
		//
		OutputStream out = null;
		
		// 파일선택 버튼의 name 값
		MultipartFile file = multiFile.getFile("upload");
		
		// webapp 아래 resources 폴더 절대 경로
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		// resources 위치 + nFiles -> 실제 저장되는 경로
		String savePath = root + "/nFiles";
		
		
		// 파일이 있을 때,
		if(file != null) {
			
			// 파일 사이즈가 0이상이고, 빈칸이 아닐 때
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
					
					out = new FileOutputStream(new File(savePath));
					
					out.write(bytes);
					
					printWriter = response.getWriter();
					response.setContentType("text/html");
					String fileUrl = savePath + "/" + renameFileName;
					
					json.addProperty("uploaded", 1);
					json.addProperty("fileName", renameFileName);
					json.addProperty("url", fileUrl);
					
					printWriter.println(json);
					
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
}
