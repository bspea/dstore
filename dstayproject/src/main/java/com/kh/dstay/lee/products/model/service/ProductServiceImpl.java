package com.kh.dstay.lee.products.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.lee.products.model.dao.ProductDao;
import com.kh.dstay.lee.products.model.vo.PdPageInfo;
import com.kh.dstay.lee.products.model.vo.Product;
import com.kh.dstay.lee.products.model.vo.ProductCategory;
import com.kh.dstay.lee.products.model.vo.ProductInquery;

@Service("pService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao pDao;
	
	
	@Override
	public ArrayList<ProductCategory> cateSelect() {
		
		return pDao.cateSelect();
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

	@Override
	public ArrayList<ProductInquery> selectProductInquery(PdPageInfo pipg, int pdNo) {
		
		return pDao.selectProductInquery(pipg,pdNo);
	}


	
	
}
