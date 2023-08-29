package com.kh.semi01.manager.model.dao;

import static com.kh.semi01.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi01.manager.model.vo.Select;
import com.kh.semi01.product.model.vo.Product;
import com.kh.semi01.product.model.vo.ProductIMG;

public class RegistDao {
	private Properties prop = new Properties();
	
	public RegistDao(){
		try {
			prop.loadFromXML(new FileInputStream(MemberDao.class.getResource("/db/sql/regist-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Select> getMovieSelectBoxList(Connection conn) {
		ArrayList<Select> sel = new ArrayList<Select>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getMovieSelectBoxList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				sel.add(new Select(rset.getInt("category_type"),rset.getString("category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return sel;
	}
	
	public ArrayList<Select> getDisplaySelectBoxList(Connection conn){
		ArrayList<Select> sel = new ArrayList<Select>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getDisplaySelectBoxList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				sel.add(new Select(rset.getInt("category_type"),rset.getString("category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return sel;
	}
	
	public ArrayList<Select> getShowSelectBoxList(Connection conn){
		ArrayList<Select> sel = new ArrayList<Select>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getShowSelectBoxList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				sel.add(new Select(rset.getInt("category_type"),rset.getString("category_name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return sel;
	}
	
	public int insertProduct(Connection conn, Product p, ProductIMG img, int dayOrNight, int seatsNum) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public int insertScreenInfo(Connection conn, String[] dateArray) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectLastPno");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			int currval = rset.getInt("val");
			for(int i=0; i<dateArray.length; i++) {
				sql = prop.getProperty("insertScreenInfo");
				SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
		        Date date;
		        try {
					date = inputFormat.parse(dateArray[i]);
				} catch (ParseException e) {
					e.printStackTrace();
				} 
	            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
	            pstmt = conn.prepareStatement(sql);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
