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
import javax.servlet.http.HttpSession;

import com.shopping.models.Order;
import com.shopping.models.User;
import com.shopping.service.OrderService;

public class CancelOrderServlet extends HttpServlet {
	OrderService os = new OrderService();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER");
		String OrderNumber = request.getParameter("OrderNumber");
		PrintWriter out = response.getWriter();
		try {
			if(os.cancelOrder(OrderNumber)){
				System.out.println("取消成功！");
			}else{
				System.out.println("取消失败！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Order> orderlist = new ArrayList<Order>();
		try {
			orderlist = os.queryAllOrder(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("ORDERLIST", orderlist);
		request.getRequestDispatcher("/dingDan/myordercenterdiv.jsp").forward(request, response);
		out.flush();
		out.close();
	}

}
