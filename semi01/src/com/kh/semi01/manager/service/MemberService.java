package com.manager.service;

import static com.manager.common.JDBCTemplate.*;
import static com.manager.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.manager.common.model.vo.PageInfo;
import com.manager.dao.MemberDao;
import com.manager.vo.Member;

public class MemberService {

	public int selectListCount() {
		Connection conn = getConnection();
		
		int listCount = new MemberDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Member> selectList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Member> searchMemberByUserNo(int userNo, PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().searchMemberByUserNo(conn, userNo, pi);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Member> searchMemberByUserId(String userId, PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().searchMemberByUserId(conn, userId, pi);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Member> searchMemberByUserName(String userName, PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Member> list = new MemberDao().searchMemberByUserName(conn, userName, pi);
		
		close(conn);
		
		return list;
	}
	
	public int selectListCountByUserNo(int userNo) {
		Connection conn = getConnection();
		
		int count = new MemberDao().selectListCountByUserNo(conn, userNo);
		
		close(conn);
		
		return count;
	}
	
	public int selectListCountByUserId(String userId) {
		Connection conn = getConnection();
		
		int count = new MemberDao().selectListCountByUserId(conn, userId);
		
		close(conn);
		
		return count;
	}
	
	public int selectListCountByUserName(String userName) {
		Connection conn = getConnection();
		
		int count = new MemberDao().selectListCountByUserName(conn, userName);
		
		close(conn);
		
		return count;
	}
	
	public Member selectManagerMember(int userNo) {
		Connection conn = getConnection();
		
		Member m = new MemberDao().selectManagerMember(conn, userNo);
		
		close(conn);
		
		return m;
	}
	
	public int updateMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().updateMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int deleteMemberByUserNo(int userNo) {
		Connection conn = getConnection();
		
		int result = new MemberDao().deleteMemberByUserNo(conn, userNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
