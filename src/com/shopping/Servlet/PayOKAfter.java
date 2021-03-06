package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.service.OrderService;


public class PayOKAfter extends HttpServlet{
	
	OrderService orse=new OrderService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String method=req.getParameter("method");
	    System.out.println("1111111111111111");
	    if(method.equals("queryOrdById"))
	    {
	    	queryOrdById(req,resp);
	    }
	    else if(method.equals("queryOrderAndqueryCollect"))
	    {
	    	queryOrderAndqueryCollect(req,resp);
	    }
	}
	
	
	public void queryOrdById(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException 
	{
		String OrderNum=req.getParameter("orderId");
		System.out.println(OrderNum);
		OrderNum = OrderNum.substring(1,OrderNum.length()-1);
		String []orders = OrderNum.split(",");
		List<Integer> list=new ArrayList<Integer>();
		for (String string : orders) 
		{
			System.out.println(string);
			int count = 0;
			try {
				count = orse.selectByNum(string.trim()).size();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if(count==1){
			list.add(count);
			}
		}
		
		if(list.size()==orders.length)
		{
			resp.getWriter().print(1);
		}
	}
	
	public void queryOrderAndqueryCollect(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException 
	{
		req.getRequestDispatcher("/dingDan/center.jsp").forward(req, resp);
	}
	
}
