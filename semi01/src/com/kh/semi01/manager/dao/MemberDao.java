package com.manager.dao;

import static com.manager.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.manager.common.model.vo.PageInfo;
import com.manager.vo.Member;

public class MemberDao {
	private Properties prop = new Properties();
	
	public MemberDao(){
		try {
			prop.loadFromXML(new FileInputStream(MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	
	public ArrayList<Member> selectList(Connection conn, PageInfo pi){
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"), rset.getString("user_name"), rset.getString("user_birth"), String.valueOf(rset.getInt("interest_movie")), String.valueOf(rset.getInt("interest_display")), String.valueOf(rset.getInt("interest_show")), rset.getString("email"), rset.getString("phone"), String.valueOf(rset.getInt("grade_no")), rset.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public ArrayList<Member> searchMemberByUserNo(Connection conn, int userNo, PageInfo pi){
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchMemberByUserNo");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"), rset.getString("user_name"), rset.getString("user_birth"), String.valueOf(rset.getInt("interest_movie")), String.valueOf(rset.getInt("interest_display")), String.valueOf(rset.getInt("interest_show")), rset.getString("email"), rset.getString("phone"), String.valueOf(rset.getInt("grade_no")), rset.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int selectListCountByUserNo(Connection conn, int userNo) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCountByUserNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	public int selectListCountByUserId(Connection conn, String userId) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCountByUserId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + userId + "%");
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	public ArrayList<Member> searchMemberByUserId(Connection conn, String userId, PageInfo pi){
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchMemberByUserId");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + userId + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"), rset.getString("user_name"), rset.getString("user_birth"), String.valueOf(rset.getInt("interest_movie")), String.valueOf(rset.getInt("interest_display")), String.valueOf(rset.getInt("interest_show")), rset.getString("email"), rset.getString("phone"), String.valueOf(rset.getInt("grade_no")), rset.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public int selectListCountByUserName(Connection conn, String userName) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCountByUserName");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + userName + "%");
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	public ArrayList<Member> searchMemberByUserName(Connection conn, String userName, PageInfo pi){
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchMemberByUserName");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() - 1;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + userName + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"), rset.getString("user_name"), rset.getString("user_birth"), String.valueOf(rset.getInt("interest_movie")), String.valueOf(rset.getInt("interest_display")), String.valueOf(rset.getInt("interest_show")), rset.getString("email"), rset.getString("phone"), String.valueOf(rset.getInt("grade_no")), rset.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public Member selectManagerMember(Connection conn, int userNo) {
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectManagerMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				m = new Member(rset.getInt("user_no"), rset.getString("user_id"), rset.getString("user_pwd"), rset.getString("user_name"), rset.getString("user_birth"), rset.getString("category_name1"), rset.getString("category_name2"), rset.getString("category_name3"), rset.getString("email"), rset.getString("phone"), rset.getString("grade_name"), rset.getString("status"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}
	
	public int updateMember(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getUserId());
			pstmt.setString(2, m.getUserPwd());
			pstmt.setString(3, m.getUserName());
			pstmt.setString(4, m.getUserBirth());
			pstmt.setString(5, m.getEmail());
			pstmt.setString(6, m.getPhone());
			pstmt.setInt(7, Integer.parseInt(m.getGradeNo()));
			pstmt.setInt(8, m.getUserNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int deleteMemberByUserNo(Connection conn, int userNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteMemberByUserNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
