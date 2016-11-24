package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.service.ShoesOrderService;

public class ModifyShoesOrderAmountServlet extends HttpServlet {
	ShoesOrderService sos = new ShoesOrderService();
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id = " + id);
		int newAmount = Integer.parseInt(request.getParameter("newAmount"));
		System.out.println("newAmount = " + newAmount);
		try {
			if(sos.modifyShoesOrderAmount(newAmount, id)){
				System.out.println("modifyshoesorderamount success!");
			}else{
				System.out.println("modifyshoesorderamount fail!");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
