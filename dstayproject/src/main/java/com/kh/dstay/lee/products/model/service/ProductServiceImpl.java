package com.kh.dstay.lee.products.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.lee.products.model.dao.ProductDao;
import com.kh.dstay.lee.products.model.vo.BookMark;
import com.kh.dstay.lee.products.model.vo.InqueryAnswer;
import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;
import com.kh.dstay.lee.products.model.vo.ProductReview;

@Service("pService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao pDao;
	
	
	@Override
	public ArrayList<ProductCategory> cateSelect() {
		
		return pDao.cateSelect();
	}
	
	@Override
	public int getProductListCount() {
		
		return pDao.getProductListCount();
	}
	
	@Override
	public ArrayList<Product> getProductList(PdPageInfo pp) {
		
		return pDao.getProductList(pp);
	}

	@Override
	public int getCateListCount(int caNo) {
		
		return pDao.getCateListCount(caNo);
	}

	@Override
	public ArrayList<Product> selectCategory(PdPageInfo pp, int caNo) {
		
		
		return pDao.selectCategory(pp,caNo);
	}

	@Override
	public Product selectProduct(int pdNo) {
		
		return pDao.selectProduct(pdNo);
	}

	@Override
	public int getProductInqueryList(int pdNo) {
		
		return pDao.getProductInqueryList(pdNo);
	}

//	@Override
//	public ArrayList<ProductInquery> selectProductInquery(int pdNo) {
//		return pDao.selectProductInquery(pdNo);
//		
//	}

	@Override
	public int insertInquery(ProductInquery pi) {
		
		return pDao.insertInquery(pi);
	}

	@Override
	public ArrayList<ProductInquery> selectInqueryList(int pno) {
		
		return pDao.selectInqueryList(pno);
	}

	@Override
	public int getBookMark(int pdNo, int mNo) {
		
		return pDao.getBookMark(pdNo,mNo);
	}

	@Override
	public int deleteBookMark(int mno, int pno) {
		
		return pDao.deleteBookMark(mno,pno);
		
	}

	@Override
	public int insertBookMark(int mno, int pno) {
		
		return pDao.insertBookMark(mno,pno);
	}

	@Override
	public int selectBookMark(int pno, int mno) {
		
		return pDao.selectBookMark(pno,mno);
	}

	@Override
	public ArrayList<BookMark> checkBookMark(int mNo) {
		
		return pDao.checkBookMark(mNo);
		
	}

	@Override
	public ArrayList<ProductReview> getProductReview(int pno) {
		
		return pDao.getProductReview(pno);
	}

	@Override
	public int insertAnswer(InqueryAnswer ia) {
		
		return pDao.insertAnswer(ia);
	}

	@Override
	public ArrayList<Product> getNextProduct(int pdNo) {
		
		return pDao.getNextProduct(pdNo);
	}

	
	
//	@Override
//	public ArrayList<ProductInquery> selectProductInquery(PdPageInfo pipg, int pdNo) {
//		
//		return pDao.selectProductInquery(pipg,pdNo);
//	}

	



	
	
}
