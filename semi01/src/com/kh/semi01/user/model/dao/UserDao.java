package com.kh.semi01.user.model.dao;

import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import static com.kh.semi01.common.JDBCTemplate.*;
import com.kh.semi01.user.model.vo.User;

public class UserDao {
	
//<<<<<<< Updated upstream
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
							 rset.getString("USER_ID"), 
							 rset.getString("USER_PWD"), 
							 rset.getString("USER_NAME"), 
							 rset.getString("USER_BIRTH"),
							 rset.getString("INTEREST_MOVIE"),
							 rset.getString("INTEREST_DISPLAY"),
							 rset.getString("INTEREST_SHOW"),
							 rset.getString("EMAIL"),
							 rset.getString("PHONE"),
							 rset.getString("GRADE_NAME"),
							 rset.getString("STATUS")
							);
						
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return u;
	}

	public int insertUser(Connection conn, User u) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertUser");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, u.getUserId());
			pstmt.setString(2, u.getUserPwd());
			pstmt.setString(3, u.getUserName());
			pstmt.setString(4, u.getUserBirth());
			pstmt.setInt(5, Integer.parseInt(u.getInterestMovie()));
			pstmt.setInt(6, Integer.parseInt(u.getInterestDisplay()));
			pstmt.setInt(7, Integer.parseInt(u.getInterestShow()));
			pstmt.setString(8, u.getEmail());
			pstmt.setString(9, u.getPhone());
			
			result = pstmt.executeUpdate();	
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
//=======

	public User findIdWithEmail(Connection conn, String chPwd, String chBday, String chEmail) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User u = null;
		
		String sql = prop.getProperty("findIdWithEmail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, chPwd);
			pstmt.setString(2, chBday);
			pstmt.setString(3, chEmail);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				u = new User(rset.getInt("USER_NO"),
							 rset.getString("USER_ID"), 
							 rset.getString("USER_PWD"), 
							 rset.getString("USER_NAME"), 
							 rset.getString("USER_BIRTH"),
							 rset.getString("INTEREST_MOVIE"),
							 rset.getString("INTEREST_DISPLAY"),
							 rset.getString("INTEREST_SHOW"),
							 rset.getString("EMAIL"),
							 rset.getString("PHONE"),
							 rset.getString("GRADE_NAME"),
							 rset.getString("STATUS")
							);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return u;
	}

	public User findIdWithPhone(Connection conn, String chPwd, String chBday, String chPhone) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User u = null;
		
		String sql = prop.getProperty("findIdWithPhone");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, chPwd);
			pstmt.setString(2, chBday);
			pstmt.setString(3, chPhone);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				u = new User(rset.getInt("USER_NO"),
							 rset.getString("USER_ID"), 
							 rset.getString("USER_PWD"), 
							 rset.getString("USER_NAME"), 
							 rset.getString("USER_BIRTH"),
							 rset.getString("INTEREST_MOVIE"),
							 rset.getString("INTEREST_DISPLAY"),
							 rset.getString("INTEREST_SHOW"),
							 rset.getString("EMAIL"),
							 rset.getString("PHONE"),
							 rset.getString("GRADE_NAME"),
							 rset.getString("STATUS")
							);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return u;
	}

	public User findPwdWithEmail(Connection conn, String chId, String chBday, String chEmail) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User u = null;
		
		String sql = prop.getProperty("findPwdWithEmail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, chId);
			pstmt.setString(2, chBday);
			pstmt.setString(3, chEmail);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				u = new User(rset.getInt("USER_NO"),
							 rset.getString("USER_ID"), 
							 rset.getString("USER_PWD"), 
							 rset.getString("USER_NAME"), 
							 rset.getString("USER_BIRTH"),
							 rset.getString("INTEREST_MOVIE"),
							 rset.getString("INTEREST_DISPLAY"),
							 rset.getString("INTEREST_SHOW"),
							 rset.getString("EMAIL"),
							 rset.getString("PHONE"),
							 rset.getString("GRADE_NAME"),
							 rset.getString("STATUS")
							);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return u;
	}

	public User findPwdWithPhone(Connection conn, String chId, String chBday, String chPhone) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User u = null;
		
		String sql = prop.getProperty("findPwdWithPhone");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, chId);
			pstmt.setString(2, chBday);
			pstmt.setString(3, chPhone);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				u = new User(rset.getInt("USER_NO"),
							 rset.getString("USER_ID"), 
							 rset.getString("USER_PWD"), 
							 rset.getString("USER_NAME"), 
							 rset.getString("USER_BIRTH"),
							 rset.getString("INTEREST_MOVIE"),
							 rset.getString("INTEREST_DISPLAY"),
							 rset.getString("INTEREST_SHOW"),
							 rset.getString("EMAIL"),
							 rset.getString("PHONE"),
							 rset.getString("GRADE_NAME"),
							 rset.getString("STATUS")
							);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return u;
	}

	public int changePwd(Connection conn, String fine_pwd, String userNo, String userId, String userPwd) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("changePwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, fine_pwd);
			pstmt.setInt(2, Integer.parseInt(userNo));
			pstmt.setString(3, userId);
			pstmt.setString(4, userPwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}
	
//>>>>>>> Stashed changes
	
	public int updateUser(Connection conn, User u) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateUser");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, u.getUserName());
			pstmt.setInt(2, Integer.parseInt(u.getInterestMovie()));
			pstmt.setInt(3, Integer.parseInt(u.getInterestDisplay()));
			pstmt.setInt(4, Integer.parseInt(u.getInterestShow()));
			pstmt.setString(5, u.getEmail());
			pstmt.setString(6, u.getPhone());
			pstmt.setInt(7, u.getUserNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public User selectUser(Connection conn, int userNo) {
		
		User u = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUser");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				u = new User(rset.getInt("user_no"), 
							 rset.getString("user_id"), 
							 rset.getString("user_pwd"), 
							 rset.getString("user_name"), 
							 rset.getString("user_birth"), 
							 rset.getString("interest_movie"), 
							 rset.getString("interest_display"), 
							 rset.getString("interest_show"), 
							 rset.getString("email"), 
							 rset.getString("phone"), 
							 rset.getString("grade_name"), 
							 rset.getString("status"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return u;
		
	}

}
