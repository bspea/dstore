package com.kh.dstay.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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
	
	@RequestMapping("bestMenuByPrice.do")
	public void selectBestMenu(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<Product> bestList = pService.selectBestMenu();
		
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(bestList, response.getWriter());
	}
	
	@RequestMapping("menuSortPrice.do")
	public void selectMenuSortPrice(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<Product> bestList = pService.selectSortMenu_Price();
		
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(bestList, response.getWriter());
	}
	
	@RequestMapping("menuSortNew.do")
	public void selectMenuSortNew(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<Product> bestList = pService.selectSortMenu_New();
		
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(bestList, response.getWriter());
	}
	
	@RequestMapping("menuSortCell.do")
	public void selectMenuSortCell(HttpServletResponse response) throws JsonIOException, IOException {
		ArrayList<Product> bestList = pService.selectSortMenu_Cell();
		
		response.setContentType("application/json; charset=UTF-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(bestList, response.getWriter());
	}
}
