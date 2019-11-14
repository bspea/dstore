package com.kh.dstay.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 김현지
 * admin 페이지의 뷰단사이 이동
 */
@Controller
public class AdminController {

	@RequestMapping("adminMain.do")
	public String adminMain() {
		return "5_kim/common/dashboard";
	}
	
	@RequestMapping("adminMemberList.do")
	public String reportedMemberList() {
		return "5_kim/member/reportedMemberList";
	}

	@RequestMapping("adminMemberDetail.do")
	public String reportedMemberDetail() {
		return "5_kim/member/reportedMemberDetail";
	}
	
	@RequestMapping("adminCouponList.do")
	public String couponList() {
		return "5_kim/coupon/couponList";
	}
	
	@RequestMapping("adminAddingCouponForm.do")
	public String addingCouponForm() {
		return "5_kim/coupon/addingCouponForm";
	}
	
	@RequestMapping("adminProductList.do")
	public String productList() {
		return "5_kim/product/productList";
	}
	
	@RequestMapping("adminProductDetail.do")
	public String productDetail() {
		return "5_kim/product/productDetail";
	}
	
	@RequestMapping("adminQuantityReceiving.do")
	public String quantityReceiving() {
		return "5_kim/product/quantityReceiving";
	}
	
	@RequestMapping("adminAddingProductForm.do")
	public String addingProductForm() {
		return "5_kim/product/addingProductForm";
	}
	
	@RequestMapping("adminStorageList.do")
	public String storageList() {
		return "5_kim/product/storageList";
	}
	
	@RequestMapping("adminDiscountList.do")
	public String discountList() {
		return "5_kim/product/discountList";
	}
	
	@RequestMapping("adminAddingDiscountForm.do")
	public String addingDiscountForm() {
		return "5_kim/product/addingDiscountForm";
	}
	
	@RequestMapping("adminPurchaseList.do")
	public String purchaseList() {
		return "5_kim/revenue/purchaseList";
	}
	
	@RequestMapping("adminPurchaseDetailForm.do")
	public String purchaseDetail() {
		return "5_kim/revenue/purchaseDetail";
	}
	
	@RequestMapping("adminInquiryList.do")
	public String inquiryList() {
		return "5_kim/inquiry/inquiryList";
	}
	
	@RequestMapping("adminInquiryDetail.do")
	public String inquiryDetail() {
		return "5_kim/inquiry/inquiryDetail";
	}
	
}
