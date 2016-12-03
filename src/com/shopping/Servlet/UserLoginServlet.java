package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.User;
import com.shopping.service.UserService;

@SuppressWarnings("serial")
public class UserLoginServlet extends HttpServlet {
	UserService us = new UserService();

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		String userAccount = request.getParameter("userAccount");
		String password = request.getParameter("password");
		User u = null;
		try {
			u = us.loginByAccount(userAccount, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(u==null){
			try {
				u = us.loginByPhone(userAccount, password);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(u==null){
			out.write("<script>alert('用户名或密码错误！');history.go(-1);</script>");
		}
		if(u!=null){
			String autoLogin=request.getParameter("autoLogin");
			if("yes".equals(autoLogin)){
				Cookie cookie1 = new Cookie("USERACCOUNT", URLEncoder.encode(u.getUserAccount(), "UTF-8"));
				Cookie cookie2 = new Cookie("USERPWD", URLEncoder.encode(u.getPassword(), "UTF-8"));
				cookie1.setMaxAge(24*60*60);
				cookie2.setMaxAge(24*60*60);
				response.addCookie(cookie1);
				response.addCookie(cookie2);
			}
			HttpSession session=request.getSession();
			session.setAttribute("USER", u);
			response.sendRedirect("/JD/fristpage/search.jsp");
		}
		out.flush();
		out.close();
	}

}
