package com.manager.service;

import static com.manager.common.JDBCTemplate.close;
import static com.manager.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.manager.dao.RegistDao;
import com.manager.vo.Select;

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
}
