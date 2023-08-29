package com.kh.semi01.manager.controller.regist;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

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
        System.out.println("sss");

        if (ServletFileUpload.isMultipartContent(request)) {
            int maxSize = 10 * 1024 * 1024; // 최대 파일 크기 설정 (10MB)
            String savePath = request.getSession().getServletContext().getRealPath("/resource/product_upfiles/"); // 파일 저장 경로 설정
            System.out.println(savePath);
            MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8");
            System.out.println(multiRequest);
            // 각각의 파일 업로드 처리
            Enumeration<String> fileNames = multiRequest.getFileNames();
            while (fileNames.hasMoreElements()) {
                String inputName = fileNames.nextElement(); // <input> 필드의 이름을 가져옴
                File uploadedFile = multiRequest.getFile(inputName); // 해당 <input> 필드에 업로드된 파일 객체를 가져옴

                if (uploadedFile != null) {
                    // 파일 처리 로직을 추가하면 됨
                    String originalFileName = multiRequest.getOriginalFileName(inputName); // 업로드된 파일의 원본 파일명
                    String savedFileName = uploadedFile.getName(); // 서버에 저장된 파일명

                    System.out.println(originalFileName);
                    System.out.println(savedFileName);
                }
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
