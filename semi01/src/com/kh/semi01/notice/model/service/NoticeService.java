package com.kh.semi01.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.semi01.common.JDBCTemplate.*;

import com.kh.semi01.notice.model.dao.NoticeDao;
import com.kh.semi01.notice.model.vo.Notice;


public class NoticeService {
	
	public ArrayList<Notice> selectNoticeList(){
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn);
		
		close(conn);
		
		return list;
	}
}
