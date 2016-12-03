package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.service.ShoesOrderService;

public class DelShoesOrderServlet extends HttpServlet {
	ShoesOrderService sos = new ShoesOrderService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		int id = Integer.parseInt(req.getParameter("ShoesOrderid"));
		System.out.println("id = " + id);
		try {
			if(sos.delShoesOrder(id)){
				out.write("<script>alert('delete success!');location.href='/JD/shoppingcar/GouWuChe.jsp';</script>");
			}else{
				out.write("<script>alert('delete fail!');location.href='/JD/shoppingcar/GouWuChe.jsp';</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
		return;
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doGet(req, res);
	}
	

}
