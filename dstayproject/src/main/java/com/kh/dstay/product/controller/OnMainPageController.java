package com.kh.dstay.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.JsonIOException;
import com.kh.dstay.product.model.service.ProductService;
import com.kh.dstay.product.model.vo.Product;

/**
 * @author 차종환
 * 메인 페이지에 접속할 때 설정하는 Controller 입니다.
 */
@Controller
public class OnMainPageController {
	@Autowired
	private ProductService pService;
	
	@RequestMapping("main.do")
	public String boardList(Model model) throws JsonIOException, IOException {
		
		ArrayList<Product> list = pService.selectWeekFavourites();
		
		model.addAttribute("list", list);
		
		return "4_jong/mainPage";
	}
}
