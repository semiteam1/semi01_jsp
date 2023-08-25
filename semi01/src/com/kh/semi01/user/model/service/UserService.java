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

}
