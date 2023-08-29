package com.kh.semi01.manager.controller.regist;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ManagerRegistProductController
 */
@WebServlet("/manager-regist-product.do")
public class ManagerRegistProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerRegistProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");

        String savePath = request.getSession().getServletContext().getRealPath("/product_upfiles/");
        System.out.println(savePath);
        int maxSize = 10 * 1024 * 1024; // 최대 파일 크기 설정 (10MB)

        MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8");

        // 각각의 파일 업로드 처리
        String[] inputNames = {"customFile1", "customFile2", "customFile3", "customFile4", "customFile5", "customFile6"};
        for (String inputName : inputNames) {
            if (multiRequest.getFile(inputName) != null) {
                String originalFileName = multiRequest.getOriginalFileName(inputName);
                String savedFileName = multiRequest.getFilesystemName(inputName);

                System.out.println("Original File Name: " + originalFileName);
                System.out.println("Saved File Name: " + savedFileName);
            }
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
