package com.kh.dstay.admin.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.dstay.admin.product.model.vo.Ingredient;
import com.kh.dstay.admin.product.model.vo.IngredientCategory;
import com.kh.dstay.admin.product.model.vo.Product;
import com.kh.dstay.admin.product.model.vo.ProductCategory;
import com.kh.dstay.admin.product.model.vo.ProductImage;
import com.kh.dstay.admin.product.model.vo.ProductSale;
import com.kh.dstay.admin.product.model.vo.ProductStorage;

@Repository("adminPDao")
public class ProductDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// ------------------------- ADMIN -------------------------
	public ArrayList<Product> selectProductList() {
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectProductList");
	}
	
	public ArrayList<ProductImage> selectProductImageList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectProductImageList");
	}
	
	public int insertProduct(Product p) {
		return sqlSession.insert("adminProductMapper.insertProduct", p);
	}

	public int insertIngredient(ArrayList<Ingredient> list) {
		int result = 0;
		for(int i = 0; i < list.size(); i++) {
			Ingredient ing = list.get(i);
			result += sqlSession.insert("adminProductMapper.insertIngredient", ing);
		}
		
		if(result > 0 && (list.size() / result) == 1) {
			return 1;
		}
		
		return 0;
		
	}

	public int insertProductImage(ProductImage contentImg) {
		return sqlSession.insert("adminProductMapper.insertProductImage",contentImg);
	}

	public int insertProductImageList(ArrayList<ProductImage> list) {
		int result = 0;
		
		for(int i = 0; i< list.size(); i++){
			ProductImage pic = list.get(i);
			result += sqlSession.insert("adminProductMapper.insertProductImage", pic);
					
		}
		
		if(result > 0 && (list.size() / result) == 1) {
			return 1;
		}
		return 0;
	}

	public Product selectProduct(int pNo) {
		return sqlSession.selectOne("adminProductMapper.selectProduct", pNo);
	}

	public ArrayList<ProductStorage> selectStorage(int pNo) {
		return (ArrayList) sqlSession.selectList("adminProductMapper.selectStorage", pNo);
	}

	public ArrayList<ProductImage> selectProductAllImages(int pNo) {
		return (ArrayList) sqlSession.selectList("adminProductMapper.selectProductAllImages",pNo);
	}

	public ArrayList<IngredientCategory> selectProductAllIngredients(int pNo) {
		return (ArrayList) sqlSession.selectList("adminProductMapper.selectProductAllIngredients", pNo);
	}

	public ArrayList<IngredientCategory> selectAllIngredients() {
		return (ArrayList) sqlSession.selectList("adminProductMapper.selectAllIngredients");
	}

	public ArrayList<ProductCategory> selectAllPCategories() {
		// TODO Auto-generated method stub
		return (ArrayList) sqlSession.selectList("adminProductMapper.selectAllPCategories");
	}

	public int updateProduct(Product p) {
		// TODO Auto-generated method stub
		return sqlSession.update("adminProductMapper.updateProduct", p);
	}

	// ingredient 테이블에 status가 없기에 해당 product의 모든 성분을 delete하고 다시 insert
	public int updateProductIngredient(ArrayList<Ingredient> list) {
		int pNo = list.get(0).getProductNo();
			
		int result1 = sqlSession.delete("adminProductMapper.deleteProductIngredient", pNo);
		
		if(result1 > 0) {	//삭제성공
			int result = 0;
			for(int i = 0; i < list.size(); i++) {
				Ingredient ing = list.get(i);
				result += sqlSession.insert("adminProductMapper.insertIngredient", ing);
			}
			
			if(result > 0 && (list.size() / result) == 1) {
				return 1;
			}
			
			return 0;
			
		}else {
			return 0;
		}
	}

	public int deleteProductImageList(int no) {
		return sqlSession.update("adminProductMapper.deleteProductImages", no);
	}

	public int selectProductCurrval() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("adminProductMapper.getProductCurrVal");
	}

	public ArrayList<ProductStorage> selectAllStorages() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectAllStorage");
	}

	public int changingQuantity(ProductStorage ps) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminProductMapper.insertStorage",ps);
	}

	public ArrayList<ProductSale> selectAllDiscounts() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminProductMapper.selectAllDiscounts");
	}

	public int addingNewDiscount(ProductSale sale) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminProductMapper.addingNewDiscount", sale);
	}
	
	// ----------------------- END of ADMIN -------------------------

}
