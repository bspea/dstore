package com.kh.dstay.lee.perchase.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShoppingCartController {

	@RequestMapping("shoppingCart.do")
	public String selectShoppingCart() {
		
		
		return "6_lee/shoppingCart";
		
	}
	
	@RequestMapping("checkout1.do")
	public String selectCheckout() {
		
		return "6_lee/checkout1";
		
	}
	
	
}
