package com.kh.semi01.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.semi01.common.JDBCTemplate.*;
import com.kh.semi01.product.model.dao.ProductDao;
import com.kh.semi01.product.model.vo.Product;
import com.kh.semi01.product.model.vo.ProductIMG;
import com.kh.semi01.product.model.vo.ScreeningInfo;

public class ProductService {
	
	public ArrayList<Product> searchProduct(String sKeyWord) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().searchProduct(conn, sKeyWord);

		close(conn);
		
		return list;
		
	}
	
	public Product selectProductDetail(int productNo) {
		Connection conn = getConnection();
		Product p = new ProductDao().selectProductDetail(conn, productNo);
		
		close(conn);
		return p;
		
	}
	
	public ProductIMG selectProductIMG(int productNo) {
		Connection conn = getConnection();
		ProductIMG pi = new ProductDao().selectProductIMG(conn, productNo);
		
		close(conn);
		return pi;
	}
	
	public ScreeningInfo selectScreeningInfo(int productNo) {
		Connection conn = getConnection();
		ScreeningInfo si = new ProductDao().selectScreeningInfo(conn, productNo);
		
		close(conn);
		return si;
	}
	
	public ArrayList<Product> selectProductTotalRank(){
		Connection conn = getConnection();
		ArrayList<Product> plist = new ProductDao().selectProductTotalRank(conn);
		
		close(conn);
		return plist;
	}
	
	public ArrayList<ProductIMG> selectProductTotalRankIMG(){
		Connection conn = getConnection();
		ArrayList<ProductIMG> ilist = new ProductDao().selectProductTotalRankIMG(conn);
		
		close(conn);
		return ilist;
	}
	
	public ArrayList<Product> selectProductDisplayRank(int userNo){
		Connection conn = getConnection();
		ArrayList<Product> dlist = new ProductDao().selectProductDisplayRank(conn, userNo);
		
		close(conn);
		return dlist;
	}
	
	public ArrayList<Product> selectProductMovieRank(int userNo){
		Connection conn = getConnection();
		ArrayList<Product> mlist = new ProductDao().selectProductMovieRank(conn, userNo);
		
		close(conn);
		return mlist;
	}
	
	public ArrayList<Product> selectProductShowRank(int userNo){
		Connection conn = getConnection();
		ArrayList<Product> slist = new ProductDao().selectProductShowRank(conn, userNo);
		
		close(conn);
		return slist;
	}
	

}
