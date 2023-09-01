package com.kh.semi01.payment;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi01.user.model.vo.Book;

/**
 * Servlet implementation class PaymentController
 */
@WebServlet("/payment.pa")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bookedDate = request.getParameter("bookedDate");
		String time = request.getParameter("time");
		int seat = Integer.parseInt(request.getParameter("seat"));
		
		String result = time + ", " + bookedDate + ", " + seat;
		
		System.out.println(time + ", " + bookedDate + ", " + seat);
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("views/payment/paymentPopUp.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
