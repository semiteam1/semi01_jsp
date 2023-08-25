package com.kh.semi01.user.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import com.kh.semi01.user.model.vo.User;

public class UserDao {
	
private Properties prop = new Properties();
	
	public UserDao() { // 메소드 아니라 memberdao의 기본 생성자 생성자는 반환형 x 괄호안에 변수 없으니까 기본 생성자다 ~ 실행할 내용이 있어서 쓴거임
		// 언제 실행됨? service.java 가보면 dao호출할 때마다 읽을 거 서버 구동없이 쿼리를 읽을 수가 있음
		String filePath = UserDao.class.getResource("/db/sql/user-mapper.xml").getPath(); // 멤버dao 클래스 이 파일패스 경로에가서 있으면 찾아와달라
		
		try {
			prop.loadFromXML(new FileInputStream(filePath)); // 파일패스에 있는 파일을 읽어들여 xml파일을 읽어들이면서 키는 벨류
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public User loginMember(Connection conn, String userId, String userPwd) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User u = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				u = new User(rset.getInt("USER_NO"),
							 rset.getString("USER_ID"). 
							)
						
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return u;
	}

}
