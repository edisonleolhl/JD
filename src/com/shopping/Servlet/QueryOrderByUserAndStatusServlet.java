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

public class QueryOrderByUserAndStatusServlet extends HttpServlet {
	OrderService os = new OrderService();
	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("USER");
		PrintWriter out = response.getWriter();
		String status = request.getParameter("status");
		List<Order> orderlist = new ArrayList<Order>();
		try {
			if(status.equals("allorder")){
				orderlist = os.queryAllOrder(user);
			}else if(status.equals("notpay")){
				orderlist = os.queryOrderByUserAndStatus(user.getUserAccount(), "待付款");
			}else if(status.equals("notsend")){
				orderlist = os.queryOrderByUserAndStatus(user.getUserAccount(), "待发货");
			}else if(status.equals("notrec")){
				orderlist = os.queryOrderByUserAndStatus(user.getUserAccount(), "待收货");
			}else if(status.equals("notappr")){
				orderlist = os.queryOrderByUserAndStatus(user.getUserAccount(), "待评价");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("orderlistsize() = " + orderlist.size());
		request.setAttribute("ORDERLIST", orderlist);
		request.getRequestDispatcher("/dingDan/myordercenterdiv.jsp").forward(request, response);
		out.flush();
		out.close();
	}

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
		doGet(request, response);

	}

}
