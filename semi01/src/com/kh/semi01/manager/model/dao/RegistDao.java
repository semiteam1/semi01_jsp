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
	
	public int insertProduct(Connection conn, Product p, ProductIMG img) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertProduct");
		
        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
        
        Date startDate = null;
        Date endDate = null;
        
        try {
        	startDate = (Date) inputFormat.parse(p.getStartPeriod());
			endDate = (Date) inputFormat.parse(p.getEndPeriod());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        java.sql.Date start = new java.sql.Date(startDate.getTime());
        java.sql.Date end = new java.sql.Date(endDate.getTime());
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(p.getCategory()));
			pstmt.setString(2, p.getProductTitle());
			pstmt.setInt(3, Integer.parseInt(p.getLocal()));
			pstmt.setString(4, p.getAddress());
			pstmt.setDate(5, start);
			pstmt.setDate(6, end);
			pstmt.setInt(7, Integer.parseInt(p.getProductLevel()));
			pstmt.setInt(8, p.getRunTime());
			pstmt.setInt(9, p.getPrice());
			
			pstmt.setString(10, img.getPosterName());
			pstmt.setString(11, img.getDetail1Name());
			pstmt.setString(12, img.getDetail2Name());
			pstmt.setString(13, img.getDetail3Name());
			pstmt.setString(14, img.getDetail4Name());
			pstmt.setString(15, img.getDetail5Name());
			pstmt.setString(16, img.getImagePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertScreenInfo(Connection conn, String[] dateArray, String dayOrNight, int seatsNum) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectLastPno");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			int num1 = rset.getInt("NUM");
			for(int i=0; i<dateArray.length; i++) {
				sql = prop.getProperty("insertScreenInfo");
				SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
		        Date date = null;
		        try {
					date = (Date) inputFormat.parse(dateArray[i]);
				} catch (ParseException e) {
					e.printStackTrace();
				} 
	            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, num1);
	            pstmt.setDate(2, date);
	            if(dayOrNight.equals("오전")) {
	            	pstmt.setString(3, "Y");
	            	pstmt.setString(4, "N");
	            	pstmt.setInt(5, seatsNum);
	            	pstmt.setInt(6, 0);
	            }else if(dayOrNight.equals("오후")) {
	            	pstmt.setString(3, "N");
	            	pstmt.setString(4, "Y");
	            	pstmt.setInt(5, 0);
	            	pstmt.setInt(6, seatsNum);
	            }else {
	            	pstmt.setString(3, "Y");
	            	pstmt.setString(4, "Y");
	            	pstmt.setInt(5, seatsNum);
	            	pstmt.setInt(6, seatsNum);
	            }
	            result = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
