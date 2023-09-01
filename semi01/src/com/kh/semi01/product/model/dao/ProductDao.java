package com.kh.semi01.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.semi01.common.JDBCTemplate.*;
import com.kh.semi01.product.model.vo.Product;
import com.kh.semi01.product.model.vo.ProductIMG;
import com.kh.semi01.product.model.vo.ScreeningInfo;

public class ProductDao {
	
	private Properties prop = new Properties();
	
	public ProductDao() {
		String filePath = ProductDao.class.getResource("/db/sql/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Product> searchProduct(Connection conn, String sKeyWord) {
		ArrayList<Product> list = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			if(sKeyWord.isEmpty()) {
				list.isEmpty();
			}else {
			
			pstmt.setString(1, "%" +  sKeyWord + "%");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("product_no"),
								   rset.getString("product_title"),
								   rset.getString("address"),
								   rset.getString("start_period"),
								   rset.getString("end_period"),
								   rset.getInt("price"),
								   rset.getString("image_path"),
								   rset.getString("poster_name")
								   ));
			}
			}
			System.out.println(list);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
		}
	
	public Product selectProductDetail(Connection conn, int productNo) {
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, productNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product(rset.getInt("product_no"),
								rset.getString("product_title"),
								rset.getString("address"),
								rset.getString("start_period"),
								rset.getString("end_period"),
								rset.getString("level_name"),
								rset.getInt("run_time"),
								rset.getInt("price"),
								rset.getString("image_path"),
								rset.getString("poster_name")
								);
								
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}
	
	public ProductIMG selectProductIMG(Connection conn, int productNo) {
		ProductIMG pi = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductIMG");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				pi = new ProductIMG(rset.getInt("product_no"),
							 		rset.getString("poster_name"),
							 		rset.getString("detail1_name"),
							 		rset.getString("detail2_name"),
							 		rset.getString("detail3_name"),
							 		rset.getString("detail4_name"),
							 		rset.getString("detail5_name"),
							 		rset.getString("image_path"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return pi;
		
	}
	
	public ScreeningInfo selectScreeningInfo(Connection conn, int productNo) {
		ScreeningInfo si = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectScreeningInfo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				si = new ScreeningInfo(rset.getInt("product_no"),
							 		rset.getString("screening_date"),
							 		rset.getString("screening_day_time"),
							 		rset.getString("screening_night_time"),
							 		rset.getInt("screening_day_seat"),
							 		rset.getInt("screening_night_seat"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return si;
	}
	
	public ArrayList<Product> selectProductTotalRank(Connection conn){
		ArrayList<Product> plist = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductTotalRank");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				plist.add(new Product(rset.getInt("product_no"),
								   rset.getString("product_title"),
								   rset.getString("start_period"),
								   rset.getString("end_period")
								   ));
			}
			
			System.out.println("asdasd : " + plist);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return plist;
	}
	
	public ArrayList<ProductIMG> selectProductTotalRankIMG(Connection conn){
		ArrayList<ProductIMG> ilist = new ArrayList<ProductIMG>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductTotalRankIMG");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ilist.add(new ProductIMG(rset.getInt("product_no"),
				 					  rset.getString("poster_name"),
				 					  rset.getString("detail1_name"),
				 					  rset.getString("detail2_name"),
				 					  rset.getString("detail3_name"),
				 					  rset.getString("detail4_name"),
				 					  rset.getString("detail5_name"),
				 					  rset.getString("image_path")
								   ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return ilist;
		
	}
	
	public ArrayList<Product> selectProductDisplayRank(Connection conn, int userNo){
		ArrayList<Product> dlist = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductDisplayRank");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				dlist.add(new Product(rset.getInt("product_no"),
				 					  rset.getString("product_title"),
				 					  rset.getString("start_period"),
				 					  rset.getString("end_period"),
				 					  rset.getString("poster_name"),
				 					  rset.getString("image_path")
								   ));
			}
		
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
			return dlist;
	
	}
	
	public ArrayList<Product> selectProductMovieRank(Connection conn, int userNo){
		ArrayList<Product> mlist = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductMovieRank");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				mlist.add(new Product(rset.getInt("product_no"),
				 					  rset.getString("product_title"),
				 					  rset.getString("start_period"),
				 					  rset.getString("end_period"),
				 					  rset.getString("poster_name"),
				 					  rset.getString("image_path")
								   ));
			}
		
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
			return mlist;
	
	}
	
	public ArrayList<Product> selectProductShowRank(Connection conn, int userNo){
		ArrayList<Product> slist = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductShowRank");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				slist.add(new Product(rset.getInt("product_no"),
				 					  rset.getString("product_title"),
				 					  rset.getString("start_period"),
				 					  rset.getString("end_period"),
				 					  rset.getString("poster_name"),
				 					  rset.getString("image_path")
								   ));
			}
		
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
			return slist;
	
	}
}
