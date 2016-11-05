package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserLoginOutServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		session.invalidate();
		PrintWriter out=response.getWriter();
		out.write("<script>alert('注销成功!');location.href='/JD/fristpage/search.jsp';</script>");			
		out.flush();
		out.close();
	}

}
