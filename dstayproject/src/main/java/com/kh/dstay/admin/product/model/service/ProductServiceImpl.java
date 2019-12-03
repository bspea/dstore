package com.kh.dstay.admin.product.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dstay.admin.product.model.dao.ProductDao;
import com.kh.dstay.admin.product.model.vo.Ingredient;
import com.kh.dstay.admin.product.model.vo.IngredientCategory;
import com.kh.dstay.admin.product.model.vo.Product;
import com.kh.dstay.admin.product.model.vo.ProductCategory;
import com.kh.dstay.admin.product.model.vo.ProductImage;
import com.kh.dstay.admin.product.model.vo.ProductSale;
import com.kh.dstay.admin.product.model.vo.ProductStorage;

@Service("adminPService")
public class ProductServiceImpl {

	

	@Autowired
	private ProductDao adminPDao;
	// ----------------------- ADMIN -------------------------
	public ArrayList<Product> selectProductList() {
		// TODO Auto-generated method stub
		return adminPDao.selectProductList();
	}
	
	public ArrayList<ProductImage> selectProductImageList() {
		// TODO Auto-generated method stub
		return adminPDao.selectProductImageList();
	}
	
	
	public int insertProduct(Product p) {
		return adminPDao.insertProduct(p);
	}
	
	public int insertIngredient(ArrayList<Ingredient> list) {
		return adminPDao.insertIngredient(list);
	}
	
	
	public int insertProductImage(ProductImage contentImg) {
		return adminPDao.insertProductImage(contentImg);
	}
	
	
	public int insertProductImageList(ArrayList<ProductImage> list) {
		return adminPDao.insertProductImageList(list);
		
	}
	
	public Product selectPrduct(int pNo) {
		// TODO Auto-generated method stub
		return adminPDao.selectProduct(pNo);
	}
	
	
	public ArrayList<ProductStorage> selectStorage(int pNo) {
		// TODO Auto-generated method stub
		return adminPDao.selectStorage(pNo);
	}
	
	
	public ArrayList<ProductImage> selectProductAllImages(int pNo) {
		return adminPDao.selectProductAllImages(pNo);
	}
	
	
	public ArrayList<IngredientCategory> selectProductAllIngredients(int pNo) {
		return adminPDao.selectProductAllIngredients(pNo);
	}


	public ArrayList<IngredientCategory> selectAllIngredients() {
		return adminPDao.selectAllIngredients();
	}

	
	public ArrayList<ProductCategory> selectAllPCategories() {
		// TODO Auto-generated method stub
		return adminPDao.selectAllPCategories();
	}

	public int updateProduct(Product p) {
		// TODO Auto-generated method stub
		return adminPDao.updateProduct(p);
	}

	public int updateProductIngredient(ArrayList<Ingredient> list) {
		// TODO Auto-generated method stub
		return adminPDao.updateProductIngredient(list);
	}

	public int deleteProductImageList(int no) {
		// TODO Auto-generated method stub
		return adminPDao.deleteProductImageList(no);
	}

	
	public int getProductCurrval() {
		// TODO Auto-generated method stub
		return adminPDao.selectProductCurrval();
	}

	
	public ArrayList<ProductStorage> selectAllStorages() {
		// TODO Auto-generated method stub
		return adminPDao.selectAllStorages();
	}

	
	public int changingQuantity(ProductStorage ps) {
		// TODO Auto-generated method stub
		return adminPDao.changingQuantity(ps);
	}

	
	public ArrayList<ProductSale> selectAllDiscounts() {
		// TODO Auto-generated method stub
		return adminPDao.selectAllDiscounts();
	}

	
	public int addingNewDiscount(ProductSale sale) {
		// TODO Auto-generated method stub
		return adminPDao.addingNewDiscount(sale);
	}

	// ----------------------- END of ADMIN -------------------------


}
