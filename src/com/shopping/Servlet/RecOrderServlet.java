package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.Order;
import com.shopping.models.User;
import com.shopping.service.OrderService;

public class RecOrderServlet extends HttpServlet {
	OrderService os = new OrderService();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER");
		String OrderNumber = request.getParameter("OrderNumber");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date currentDate = new Date(System.currentTimeMillis());
		String Receivetime = sdf.format(currentDate);
		System.out.println("Receivetime = " + Receivetime);
		PrintWriter out=response.getWriter();
		try {
			if(os.recOrder(Receivetime, OrderNumber)){
				out.write("<script>alert('确认收货成功！请尽快评价！');</script>");
			}else{
				out.write("<script>alert('发货失败！');</script>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		List<Order> orderlist = new ArrayList<Order>();
		try {
			orderlist = os.queryAllOrder(user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("ORDERLIST", orderlist);
		request.getRequestDispatcher("/dingDan/myordercenterdiv.jsp").forward(request, response);
		out.flush();
		out.close();
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
