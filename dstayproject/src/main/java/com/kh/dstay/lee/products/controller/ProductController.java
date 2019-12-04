package com.kh.dstay.lee.products.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.dstay.common.ProductPagination;
import com.kh.dstay.lee.products.model.service.ProductService;
import com.kh.dstay.lee.products.model.vo.BookMark;
import com.kh.dstay.lee.products.model.vo.InqueryAnswer;
import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;
import com.kh.dstay.lee.products.model.vo.ProductReview;
import com.kh.dstay.member.model.vo.Member;

@Controller
public class ProductController {

	@Autowired
	private ProductService pService;

	// 상품 리스트로 이동
	@RequestMapping("product.do")
	public ModelAndView productPage(HttpSession session,ModelAndView mv,HttpServletRequest request, 
							@RequestParam(value="currentPage",defaultValue="1")int currentPage) {

		// 카테고리 가져오기
		ArrayList<ProductCategory> pc = pService.cateSelect(); // 카테고리 객체
			
		session.setAttribute("pc", pc);
		
		Member mem = (Member)session.getAttribute("loginUser");
		
		String cookie = (String)session.getAttribute("cookie1");
		
		
		
//		 int mNo = Integer.parseInt(request.getParameter("${loginUser}"));
	
		
		// 상품 총 갯수 가져오기
		int productListCount = pService.getProductListCount();
		
		PdPageInfo pp = ProductPagination.getProductPageInfo(currentPage, productListCount);
		
		// 상품 가져오기(최근 출시 일자로)
		ArrayList<Product> pd = pService.getProductList(pp);
		
		// 찜하기 가져오기
		ArrayList<BookMark> bm = new ArrayList<>();
		if(mem != null) {
			bm = pService.checkBookMark(mem.getNo());
		}
		
		
		
		mv.addObject("pd",pd).addObject("bm",bm).addObject("pp",pp).setViewName("6_lee/products");
		
		return mv;
	}

	// 카테고리 별 상품 가져오기
	@RequestMapping("productCotegory.do")
	public ModelAndView productCategory(HttpServletRequest request, ModelAndView mv,HttpSession session,
									    @RequestParam(value="currentPage",defaultValue="1")int currentPage){
		int caNo = 0; // 카테고리 번호
		
		caNo = Integer.parseInt(request.getParameter("pcno").trim()); 
		
		
		
		int cateListCount = pService.getCateListCount(caNo); // 해당 카테고리의 상품 총 갯수
		
		PdPageInfo pp = ProductPagination.getProductPageInfo(currentPage, cateListCount); // 상품 목록 페이징 처리
		
		ArrayList<Product> pd = pService.selectCategory(pp,caNo); // 해당 번호 카테고리의 상품 가져오기(페이징처리 포함) 
		
		Member mem = (Member)session.getAttribute("loginUser");
		ArrayList<BookMark> bm = new ArrayList<>();
		
		if(mem != null) {
			bm = pService.checkBookMark(mem.getNo());
		}
		
		
		
		
		
		mv.addObject("pd",pd).addObject("pp",pp).addObject("caNo",caNo).addObject("bm",bm).setViewName("6_lee/productsCategory");
			
		
		return mv;
	}
	
	// 상품 디테일
	@RequestMapping("productDetail.do")
	public ModelAndView productDetail(HttpServletRequest request, ModelAndView mv, HttpSession session,
			 						@RequestParam(value="currentPage",defaultValue="1")int currentPage) {
		
		int pdNo = 0;	// 상품번호
		
		pdNo = Integer.parseInt(request.getParameter("pdno"));
		
		
		ArrayList<Product> nextProduct = pService.getNextProduct(pdNo);
		
		
		
		int bookMark = 0; 	// 해당 상품 찜 여부
		
		
		Member mem = (Member)session.getAttribute("loginUser");
	  
		String cookie = (String)session.getAttribute("cookie");
		
		if(mem != null) { // 회원일경우
			
			int mNo = mem.getNo();
			
			ArrayList<ProductReview> pr = pService.getProductReview(pdNo);
		    
		    double pointSum = 0;
		    String result = null;
		    for(int i=0; i<pr.size(); i++) {
		    	pointSum += pr.get(i).getPoint();
		    	
		    	result = String.format("%.1f", pointSum/pr.size());
		    }
		
			
			
			bookMark = pService.getBookMark(pdNo,mNo);
			
			
			Product pd = pService.selectProduct(pdNo); // 상품 객체 가져오기
			
			int ProductInquery  = pService.getProductInqueryList(pdNo); // 해당상품의 문의사항 총 갯수 가져오기
			
			mv.addObject("pd",pd).addObject("nextProduct",nextProduct).addObject("result",result).addObject("pr",pr).addObject("bookMark",bookMark).addObject("ProductInquery",ProductInquery).setViewName("6_lee/productDetail");
		
		}else { // 비회원 (쿠키)
			
			
			
			
			ArrayList<ProductReview> pr = pService.getProductReview(pdNo);
		    
		    double pointSum = 0;
		    String result = null;
		    for(int i=0; i<pr.size(); i++) {
		    	pointSum += pr.get(i).getPoint();
		    	
		    	result = String.format("%.1f", pointSum/pr.size());
		    }
			
		    Product pd = pService.selectProduct(pdNo); // 상품 객체 가져오기
			
			int ProductInquery  = pService.getProductInqueryList(pdNo); // 해당상품의 문의사항 총 갯수 가져오기
			
			
			mv.addObject("pd",pd).addObject("result",result).addObject("nextProduct",nextProduct).addObject("pr",pr).addObject("ProductInquery",ProductInquery).setViewName("6_lee/productDetail");
			
			
			return mv;
		}
	    
		
		
		return mv;
	}
	@ResponseBody
	@RequestMapping("insertInquiry.do")
	public String insertInquiry(ProductInquery pi) {
	
		int result = pService.insertInquery(pi);
		
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="getInqueryList.do", produces="application/json; charset=UTF-8")
	public String getInqueryList(int pno) {
		
		ArrayList<ProductInquery> list = pService.selectInqueryList(pno);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		return gson.toJson(list);
	}
	
	@ResponseBody
	@RequestMapping("selectBookMark.do")
	public String selectBookMark(HttpServletRequest request, HttpSession session) {
		
		Member mem = (Member)session.getAttribute("loginUser");
		  
		int mno = mem.getNo();
		
	    int pno = Integer.parseInt(request.getParameter("pno"));
		
		int result = pService.selectBookMark(pno,mno);
		
		
		
		if(result == 0) {
			
			return "insert";
		}else {
			
			return "delete";
		}
	}
	
	
	
	@ResponseBody
	@RequestMapping("deleteBookMark.do")
	public String deleteBookMark(HttpServletRequest request,HttpSession session) {
		
		Member mem = (Member)session.getAttribute("loginUser");
		  
		int mno = mem.getNo();
		   
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		int result = pService.deleteBookMark(mno,pno);
		
		if(result != 0) {
			return "ok";
		}else {
			return "no";
		}
		
		
	}
	@ResponseBody
	@RequestMapping("insertBookMark.do")
	public String insertBookMark(HttpServletRequest request,HttpSession session) {
		
		Member mem = (Member)session.getAttribute("loginUser");
		  
		int mno = mem.getNo();
		
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		int result = pService.insertBookMark(mno,pno);
		
		if(result != 0) {
			return "ok";
		}else {
			return "no";
		}
	}
	
	@ResponseBody
	@RequestMapping("insertAnswer.do")
	public String insertAnwser(HttpServletRequest request) {

		
		int pino = Integer.parseInt(request.getParameter("pino"));
		System.out.println(pino);
		String content = (String)request.getParameter("content");
		
		InqueryAnswer ia = new InqueryAnswer();
		
		ia.setPino(pino);
		ia.setContent(content);
		
		int result = pService.insertAnswer(ia);
		
		if(result != 0) {
			return "ok";
		}else {
			return "no";
		}
	}
	
	
	
	
	
	
	
	
	
}
