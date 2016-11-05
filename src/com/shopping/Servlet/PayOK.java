package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.models.ShoesOrder;
import com.shopping.serveice.OrderService;
import com.shopping.serveice.ShoesOrderService;
import com.shopping.serveice.ShoesService;

public class PayOK extends HttpServlet {
	
	OrderService orse=new OrderService();
	ShoesOrderService sose=new ShoesOrderService();
	ShoesService shse=new ShoesService();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
	
		String OrderNum=(String)req.getParameter("orderId");
		System.out.println(OrderNum);
		OrderNum = OrderNum.substring(1,OrderNum.length()-1);
		String []orders = OrderNum.split(",");
		boolean b=false;
		for (String string : orders) {
			b=orse.updateByNum(string.trim());
			
		}
		List<ShoesOrder> list=new ArrayList<ShoesOrder>();
		boolean f=false;
		for(String string : orders)
		{
			list=sose.selectAmount(string.trim());
			for(ShoesOrder li:list)
			{
				f=shse.UpdateCount(li.getAmount(), li.getShoesId());
			}
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req,resp);
	}
}
