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

import com.shopping.models.ShoesOrder;
import com.shopping.service.OrderService;
import com.shopping.service.ShoesOrderService;
import com.shopping.service.ShoesService;

public class PayOK extends HttpServlet {
	
	OrderService orse=new OrderService();
	ShoesOrderService sose=new ShoesOrderService();
	ShoesService shse=new ShoesService();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String OrderNum=(String)req.getParameter("orderId");
		System.out.println(OrderNum);
		OrderNum = OrderNum.substring(1,OrderNum.length()-1);
		String []orders = OrderNum.split(",");
		boolean b=false;
		for (String string : orders) {
			try {
				b=orse.updateByNum(string.trim());
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		List<ShoesOrder> list=new ArrayList<ShoesOrder>();
		boolean f=false;
		for(String string : orders)
		{
			try {
				list=sose.selectAmount(string.trim());
			} catch (SQLException e) {
				e.printStackTrace();
			}
			for(ShoesOrder li:list)
			{
				try {
					f=shse.UpdateCount(li.getAmount(), li.getShoesId());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req,resp);
	}
}
