package com.kh.semi01.user.model.service;

import java.net.ConnectException;
import java.sql.Connection;

import static com.kh.semi01.common.JDBCTemplate.*;

import com.kh.semi01.user.model.dao.UserDao;
import com.kh.semi01.user.model.vo.User;

public class UserService {

	public User loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		
		User u = new UserDao().loginMember(conn,userId,userPwd);
		
		close(conn);
		
		
		return u;
	}

	public int insertUser(User u) {
		Connection conn = getConnection();
		
		int result = new UserDao().insertUser(conn,u);
		
		if(result > 0) { 
			commit(conn);
		}else { 
			rollback(conn); 
		}
		
		close(conn);
		
		return result;
	}
	
	public User updateUser(User u) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().updateUser(conn, u);
		
		User updateUser = null;
		
		if(result > 0) {
			commit(conn);
			
			updateUser = new UserDao().selectUser(conn, u.getUserNo());
		}
		else {
			rollback(conn);
		}
		
		close(conn);
		
		return updateUser;
		
	}

}
