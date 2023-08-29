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
	
	public int deleteUser(int userNo) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().deleteUser(conn, userNo);
		
		if(result > 0) {
			commit(conn);
		}
		else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	public int updatePwd(int userNo, String updatePwd) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().updatePwd(conn, userNo, updatePwd);
		
		if(result > 0) {
			commit(conn);
		}
		else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}

	public User findIdWithEmail(String chPwd, String chBday, String chEmail) {
		Connection conn = getConnection();
		
		User u = new UserDao().findIdWithEmail(conn,chPwd,chBday,chEmail);
		
		close(conn);
		
		return u;
	}

	public User findIdWithPhone(String chPwd, String chBday, String chPhone) {
		Connection conn = getConnection();
		
		User u = new UserDao().findIdWithPhone(conn,chPwd,chBday,chPhone);
		
		close(conn);
		
		return u;
	}

	public User findPwdWithEmail(String chId, String chBday, String chEmail) {
		Connection conn = getConnection();
		
		User u = new UserDao().findPwdWithEmail(conn,chId,chBday,chEmail);
		
		close(conn);
		
		return u;
	}

	public User findPwdWithPhone(String chId, String chBday, String chPhone) {
		Connection conn = getConnection();
		
		User u = new UserDao().findPwdWithPhone(conn,chId,chBday,chPhone);
		
		close(conn);
		
		return u;
	}

	public int changePwd(String fine_pwd, String userNo, String userId, String userPwd) {
		Connection conn = getConnection();
		
		int result = new UserDao().changePwd(conn,fine_pwd,userNo,userId,userPwd);
		
		if(result > 0) { 
			commit(conn);
		}else { 
			rollback(conn); 
		}
		
		close(conn);
		
		return result;
	}

}
