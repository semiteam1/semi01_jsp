package com.manager.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.manager.service.MemberService;
import com.manager.vo.Member;

/**
 * Servlet implementation class ManagerMemberReadController
 */
@WebServlet("/manager-member-read.do")
public class ManagerMemberReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerMemberReadController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userNo = Integer.parseInt(request.getParameter("userNum"));
		Member m = new MemberService().selectManagerMember(userNo);
		
		JSONObject jObj = new JSONObject(); 
		jObj.put("userNo", m.getUserNo()); 
		jObj.put("userId", m.getUserId()); 
		jObj.put("userPwd", m.getUserPwd());
		jObj.put("userName", m.getUserName());
		jObj.put("userBirth", m.getUserBirth());
		jObj.put("interestMovie", m.getInterestMovie());
		jObj.put("interestDisplay", m.getInterestDisplay());
		jObj.put("interestShow", m.getInterestShow());
		jObj.put("email", m.getEmail());
		jObj.put("phone", m.getPhone());
		jObj.put("gradeNo", m.getGradeNo());
		jObj.put("status", m.getStatus());
		
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().print(jObj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
