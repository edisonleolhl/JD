package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoPay extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("OK.....");
		String OrderNumber=request.getParameter("OrderId");
		System.out.println(OrderNumber);
		List<String> list =new ArrayList<String>();
		list.add(OrderNumber);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/dingDan/pay.jsp").forward(request, response);
	}

}
