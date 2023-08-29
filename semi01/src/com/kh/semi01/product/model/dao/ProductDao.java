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
								rset.getInt("price"));
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
	
	public ArrayList<Product> selectProductTotalRank(Connection conn){
		ArrayList<Product> list = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProductTotalRank");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("product_no"),
								   rset.getString("product_title"),
								   rset.getString("start_period"),
								   rset.getString("end_period")
								   ));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
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
	

}
