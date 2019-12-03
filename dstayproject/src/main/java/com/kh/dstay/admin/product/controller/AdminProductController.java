package com.kh.dstay.admin.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dstay.admin.product.model.service.ProductServiceImpl;
import com.kh.dstay.admin.product.model.vo.Ingredient;
import com.kh.dstay.admin.product.model.vo.IngredientCategory;
import com.kh.dstay.admin.product.model.vo.Product;
import com.kh.dstay.admin.product.model.vo.ProductCategory;
import com.kh.dstay.admin.product.model.vo.ProductImage;
import com.kh.dstay.admin.product.model.vo.ProductSale;
import com.kh.dstay.admin.product.model.vo.ProductStorage;


@Controller
public class AdminProductController {

	@Autowired
	private ProductServiceImpl adminPService;
	
	// 모든 물품가져오기
	@RequestMapping("adminProductList.do")
	public ModelAndView productList(ModelAndView mv) {
		ArrayList<Product> pList = adminPService.selectProductList();
		ArrayList<ProductImage> piList = adminPService.selectProductImageList();

		mv.addObject("pList", pList).addObject("piList", piList).setViewName("5_kim/product/productList");

		return mv;
	}	

	@RequestMapping(value="/adminAddingProduct.do", method=RequestMethod.POST)
	public String addingProduct(Product p, Model model, HttpServletRequest request,
			@RequestParam(value = "thumbs", required = false) MultipartFile[] thumbImgs,
			@RequestParam(value = "contentImg", required = false) MultipartFile contentImg,
			@RequestParam("category") String category, @RequestParam("ingredients") String[] ingres) {
		
		String view;
		
		// product저장 -> 재료 저장 -> 이미지들 저장
		// 1. Product저장
		String[] str = category.split("/");
		p.setCategoryNo(Integer.parseInt(str[0]));
		int result = adminPService.insertProduct(p);
		
		int pNo = adminPService.getProductCurrval();
		
		if (result > 0) { // Product 저장성공시

			// 2. 재료 저장
			int result1 = 0;
			int result2 = 0;
			int result3 = 0;
			
			if (ingres != null) { // 체크된 재료가 있을떄
				ArrayList<Ingredient> list = new ArrayList();
				for (int i = 0; i < ingres.length; i++) {
					list.add(new Ingredient(0, pNo, Integer.parseInt(ingres[i])));
				}
				result1 = adminPService.insertIngredient(list);
			}

			// 3. 사진 저장(contentImg & thumbImgs)
			// 3-1. 썸네일(여러장이미지)저장
			
			if(!thumbImgs[0].getOriginalFilename().equals("")) {
				
				ArrayList<ProductImage> list = new ArrayList();
				int i=1;
				for(MultipartFile file : thumbImgs) {
					String renamePathes = "/dstay" + saveFile(file, request);
					list.add(new ProductImage(0, pNo, renamePathes, null, i++ ,null));
					
				}
				
				result2 = adminPService.insertProductImageList(list);
				
				if(result2 > 0 && !contentImg.getOriginalFilename().equals("")) {	// 단일이미지 저장 성공 & 다중이미지에 파일이있을때
					// 3-2. 본문이미지(한장) 저장
					String renamePath = saveFile(contentImg, request);
					result3 = adminPService.insertProductImage(new ProductImage(0, p.getNo(), renamePath, null, 4, null));
				}
			}
			
			if(result1 > 0 && result2 > 0 && result3 > 0) {
				view="5_kim/common/dashboard";
			}else {
				model.addAttribute("msg","물품 성분 & 이미지 저장실패!");
				view="5_kim/common/error";
			}
		
		}else {
			model.addAttribute("msg","물품 저장실패!");
			view="5_kim/common/error";
		}
			
		return view;

	}

	// 파일 저장(한개의 파일)
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "/images/productImages";
		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs();
		}

		String originFileName = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String renameFileName = sdf.format(new Date(System.currentTimeMillis())) + (int)(Math.random()*1000000 + 1) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

		String renamePath = savePath + "/" + renameFileName;
		

		try {
			file.transferTo(new File(renamePath));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
//		System.out.println(renamePath);
		return "/resources/images/productImages/" + renameFileName;

	}

	
	// 물품의 모든 상세정보
	@RequestMapping("adminProductDetail.do")
	public String productDetail(int pNo, Model model) {
		// 물품 상세정보
		Product p = adminPService.selectPrduct(pNo);
		
		if(p != null) {
			// 물품 이미지들
			ArrayList<ProductImage> imgs= adminPService.selectProductAllImages(pNo);
			
			// 물품 상세성분들
			ArrayList<IngredientCategory> iclist = adminPService.selectProductAllIngredients(pNo);
			
			// 입고내역(모든 입출고내역)
			ArrayList<ProductStorage> slist = adminPService.selectStorage(pNo);

			model.addAttribute("p", p);
			model.addAttribute("imgs", imgs);
			model.addAttribute("iclist", iclist);
			model.addAttribute("slist",slist);
			
			return "5_kim/product/productDetail";
		}else {
			model.addAttribute("msg", "물품 조회실패!!");
			return "5_kim/common/error";
		}
		
	}
	

	@RequestMapping("adminAddingProductForm.do")
	public String addingProductForm(Model model) {
		// 물품 상세성분(모든 항목)
		ArrayList<IngredientCategory> alliclist = adminPService.selectAllIngredients();
		
		// 모든 카테고리 들고오기
		ArrayList<ProductCategory> allpclist = adminPService.selectAllPCategories();
		
		model.addAttribute("alliclist",alliclist);
		model.addAttribute("allpclist", allpclist);
		return "5_kim/product/addingProductForm";
	}
	

	// 물품 수정페이지
	 
	
	@RequestMapping("adminProductUpdate.do")
	public String updateProduct(int pNo, Model model) {
		// 물품 상세정보
		Product p = adminPService.selectPrduct(pNo);
		
		if(p != null) {
			// 물품 이미지들
			ArrayList<ProductImage> imgs= adminPService.selectProductAllImages(pNo);
			
			// 물품 상세성분들(체크된것만)
			ArrayList<IngredientCategory> iclist = adminPService.selectProductAllIngredients(pNo);
			
			// 물품 상세성분(체크된 상세성분의 no만 가져오기)
			String  ingArr ="";
			for(int i = 0 ; i < iclist.size(); i++) {
				if(i<iclist.size() -1) {
					ingArr += iclist.get(i).getNo() +",";
				}else {
					ingArr += iclist.get(i).getNo();
				}
			}
			
			// 물품 상세성분(모든 항목)
			ArrayList<IngredientCategory> alliclist = adminPService.selectAllIngredients();
			
			// 모든 카테고리 들고오기
			ArrayList<ProductCategory> allpclist = adminPService.selectAllPCategories();
			
			
			model.addAttribute("p", p);
			model.addAttribute("imgs", imgs);
			model.addAttribute("ingArr", ingArr.toString());
			model.addAttribute("alliclist",alliclist);
			model.addAttribute("allpclist", allpclist);
			
			return "5_kim/product/updateProductForm";
		}else {
			model.addAttribute("msg", "물품 조회실패!!");
			return "5_kim/common/error";
		}
		
	}
	
	// 수정된정보 -> DB
	@RequestMapping(value="/adminuUpdateProductInfo.do", method=RequestMethod.POST)
	public String updateProductInfo(Product p, Model model, HttpServletRequest request,
			@RequestParam(value = "thumbs", required = false) MultipartFile[] thumbImgs,
			@RequestParam(value = "contentImg", required = false) MultipartFile contentImg,
			@RequestParam("ingredients") String[] ingres) {
		
		String view;
		
		int result = adminPService.updateProduct(p);
		

		if (result > 0) { // Product 수정성공시

			int result1 = 0;
			int result2 = 0;
			int result3 = 0;
			
			// 2. 재료 저장
			if (ingres != null) { // 체크된 재료가 있을떄
				ArrayList<Ingredient> list = new ArrayList();
				for (int i = 0; i < ingres.length; i++) {
					list.add(new Ingredient(0, p.getNo(), Integer.parseInt(ingres[i])));
				}
				result1 = adminPService.updateProductIngredient(list);
			}

			// 3. 사진(contentImg & thumbImgs)
			// 3-1. 썸네일(여러장이미지) 새로저장
			if(!thumbImgs[0].getOriginalFilename().equals("")) {
				// 넘어온값이 있다면 기존의 thumbnail 사진들을 삭제 --> 넘어온값으로 재생성
				
				// 경로에서 해당product의 모든파일 삭제
				deleteFiles(p.getNo(), request);
				//  DB에서 해당product의 모든파일 status='N'으로 변경 
				int fileResult = adminPService.deleteProductImageList(p.getNo());
				
					if(fileResult>0){
					// 새로 넘어온 파일 다시 생성
						
						ArrayList<ProductImage> newlist = new ArrayList();
						int i=0;
						for(MultipartFile file : thumbImgs) {
							String renamePathes = saveFile(file, request);
							newlist.add(new ProductImage(0, p.getNo(), renamePathes, null, i++ ,null));
						}
						
						result2 = adminPService.insertProductImageList(newlist);
						
						if(result2 > 0 && !contentImg.getOriginalFilename().equals("")) {	// 단일이미지 저장 성공 & 다중이미지에 파일이있을때
							// 3-2. 본문이미지(한장) 저장
							String renamePath = saveFile(contentImg, request);
							result3 = adminPService.insertProductImage(new ProductImage(0, p.getNo(), renamePath, null, 4, null));
						}
					}else {
						model.addAttribute("msg","기존파일 삭제에 실패했습니다!");
						view="5_kim/common/error";
					}
			}else if(result1>0){
				view="5_kim/common/dashboard";
				return view;
			}
			
			if(result1 > 0 && result2 > 0 && result3 > 0) {
				view="5_kim/common/dashboard";
			}else {
				model.addAttribute("msg","물품 성분 & 이미지 수정실패!");
				view="5_kim/common/error";
			}
		
		}else {
			model.addAttribute("msg","물품 수정실패!");
			view="5_kim/common/error";
		}
			
		return view;
	}



	// 해당 물품의 (기존사진)resources 폴더 사진들 모두 삭제서
	public void deleteFiles(int no, HttpServletRequest request) {
		ArrayList<ProductImage> imgs= adminPService.selectProductAllImages(no);
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String deletePath = root+"/images/productImages";
		
		File file = new File(deletePath);
		
		
		File[] files = file.listFiles();
		
		for(int i =0; i<files.length; i++) {
			
			for(int j =0; j< imgs.size(); j++) {
				String imgPath= imgs.get(j).getPath();
				String fileName = imgPath.substring(imgPath.lastIndexOf('/')+1);
				
				if(fileName.equals(files[i].getName())) {
					if(files[i].delete()) {
						System.out.println(fileName+"파일 삭제 성공");
					}else {
						System.out.println(fileName+"파일 삭제 실패..");
					}
		
				}
			}
		}
	}
	

	@RequestMapping("adminStorageList.do")
	public String storageList(Model model) {
		ArrayList<ProductStorage> pslist = adminPService.selectAllStorages();
		model.addAttribute("pslist",pslist);
		
		return "5_kim/product/storageList";
	}
	

	@RequestMapping("adminQuantityReceiving.do")
	public String quantityReceiving(Model model, int pNo) {
		Product p = adminPService.selectPrduct(pNo);
		ArrayList<ProductImage> imgs= adminPService.selectProductAllImages(pNo);
		
		model.addAttribute("p",p);
		model.addAttribute("imgs", imgs);

		return "5_kim/product/quantityReceiving";
	}
	
	@RequestMapping(value="/adminChangeQuantity.do", method=RequestMethod.POST)
	public String changingQuantity(Model model, int pNo, String type, String amount ) {
		ProductStorage ps = new ProductStorage(0, pNo, null, Integer.parseInt(amount), null, type);
		String view;
		int result = adminPService.changingQuantity(ps);
		if(result>0) {
			view= "redirect:adminStorageList.do";
		}else {
			model.addAttribute("msg","수량조정에 실패했습니다.");
			view="5_kim/common/error";
		}
		
		return view;
		
		
	}
	
	

	@RequestMapping("adminDiscountList.do")
	public String discountList(Model model) {
		ArrayList<ProductSale> salelist = adminPService.selectAllDiscounts();
		
		model.addAttribute("salelist",salelist);
		return "5_kim/product/discountList";
	}
	
	
	@RequestMapping("adminAddingDiscountForm.do")
	public String addingDiscountForm(Model model, int pNo) {
		Product p = adminPService.selectPrduct(pNo);
		model.addAttribute("p", p);
		return "5_kim/product/addingDiscountForm";
	}

	@RequestMapping(value="/adminAddingNewDiscount.do", method=RequestMethod.POST)
	public String addingNewDiscount(Model model, int productNo, String productName, ProductSale sale, String percent) {
		String view;
		float salePercent = (float)(Integer.parseInt(percent)) / 100;

		sale.setProductNo(productNo);
		sale.setProductName(productName);
		sale.setSalePercent(salePercent);
		
		int result = adminPService.addingNewDiscount(sale);
		if(result>0) {
			view= "redirect:adminDiscountList.do";
		}else {
			model.addAttribute("msg","수량조정에 실패했습니다.");
			view="5_kim/common/error";
		}
		
		return view;
		
	}
		
	
}
