package com.kh.semi01.manager.model.service;

import static com.kh.semi01.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi01.manager.model.dao.RegistDao;
import com.kh.semi01.manager.model.vo.Select;
import com.kh.semi01.product.model.vo.Product;
import com.kh.semi01.product.model.vo.ProductIMG;

public class RegistService {

	public ArrayList<Select> getMovieSelectBoxList() {
		Connection conn = getConnection();
		
		ArrayList<Select> sel = new RegistDao().getMovieSelectBoxList(conn);
		
		close(conn);
		
		return sel;
	}
	
	public ArrayList<Select> getDisplaySelectBoxList(){
		Connection conn = getConnection();
		
		ArrayList<Select> sel = new RegistDao().getDisplaySelectBoxList(conn);
		
		close(conn);
		
		return sel;
	}
	
	public ArrayList<Select> getShowSelectBoxList(){
		Connection conn = getConnection();
		
		ArrayList<Select> sel = new RegistDao().getShowSelectBoxList(conn);
		
		close(conn);
		
		return sel;
	}
	
	public int insertProduct(Product p, ProductIMG img, int dayOrNight, int seatsNum) {
		Connection conn = getConnection();
		
		int result = new RegistDao().insertProduct(conn, p, img, dayOrNight, seatsNum);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
