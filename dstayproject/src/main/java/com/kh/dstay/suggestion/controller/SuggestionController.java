package com.kh.dstay.suggestion.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;
import com.kh.dstay.notice.model.vo.NoticeFiles;
import com.kh.dstay.suggestion.model.service.SuggestionService;
import com.kh.dstay.suggestion.model.vo.Suggestion;

@Controller
public class SuggestionController {
	
	@Autowired
	private SuggestionService sService;
	
	@RequestMapping("suggestion.do")
	public String suggestionInsertView() {
		return "3_han/suggestionInsertForm";
	}
	
	@RequestMapping("popupSuggestion.do")
	public String popupSuggestion() {
		return "3_han/popupSuggestion";
	}
	
	@RequestMapping(value="suggestionFilesUpload.do", method=RequestMethod.POST)
	public String suggestionImageUpload(HttpServletRequest request,
									HttpServletResponse response,
									MultipartHttpServletRequest multiFile,
									NoticeFiles nf) throws IOException {
		
		
		JsonObject json = new JsonObject();
		PrintWriter printWriter = null;
		OutputStream out = null;
		MultipartFile file = multiFile.getFile("upload");
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		 
		String savePath = root + "/suggestionFiles";
		
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
					String fileUrl = "resources/suggestionFiles/" + renameFileName;
					
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
	
	
	@RequestMapping("suggestionInsert.do")
	public String insertSuggestion(HttpServletRequest request, Suggestion s) {
		
		String suggestionDivision1 = request.getParameter("suggestionDivision1");
		// System.out.println("suggestionDivision1 : " + suggestionDivision1);
		String suggestionDivision2 = request.getParameter("suggestionDivision2");
		// System.out.println("suggestionDivision2 : " + suggestionDivision2);
		
		
		
		if(suggestionDivision1.equals("no") && suggestionDivision2 != null) {
			s.setSuggestionDivision(suggestionDivision2);
		}
		
		if(suggestionDivision1 != null && suggestionDivision2.equals("no")) {
			s.setSuggestionDivision(suggestionDivision1);
		}
		
		
		// System.out.println(s);
		
		int result = sService.insertSuggestion(s);
		
		if(result > 0) {
			return "redirect:customerCenter.do";
		}else {
			return "redirect:customerCenter.do";
		}
		
		
	}
	
	@ResponseBody
	@RequestMapping("suggestionOperation.do")
	public String suggestionOperation(Suggestion s) {
		
		System.out.println(s);
		
		int result = sService.suggestionOperation(s);
		
		if(result > 0) {
			return "success";
		}else {
			return "failed";
		}
	}

}
