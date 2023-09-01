package com.kh.semi01.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi01.product.model.service.ProductService;
import com.kh.semi01.product.model.vo.Product;

/**
 * Servlet implementation class ProductCategoryRankController
 */
@WebServlet("/crank.pr")
public class ProductCategoryRankController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductCategoryRankController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int userNo = Integer.parseInt((request.getParameter("userNo")));
			
			ArrayList<Product> dlist = new ProductService().selectProductDisplayRank(userNo);
			ArrayList<Product> mlist = new ProductService().selectProductMovieRank(userNo);
			ArrayList<Product> slist = new ProductService().selectProductShowRank(userNo);
			
			request.setAttribute("dlist", dlist);
			request.setAttribute("mlist", mlist);
			request.setAttribute("slist", slist);
			
			System.out.println("컨트롤러 dlist" + dlist);
			System.out.println("컨트롤러 mlist" + mlist);
			System.out.println("컨트롤러 slist" + slist);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
