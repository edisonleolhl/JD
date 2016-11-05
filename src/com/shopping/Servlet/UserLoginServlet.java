package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.User;
import com.shopping.serveice.UserService;

@SuppressWarnings("serial")
public class UserLoginServlet extends HttpServlet {
	UserService us = new UserService();

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String accountOrPhone = request.getParameter("accountOrPhone");
		String Userpwd = request.getParameter("Userpwd");
		System.out.println("accountOrPhone = " + accountOrPhone);
		System.out.println("Userpwd = " + Userpwd);
		User u = us.loginByAccount(accountOrPhone, Userpwd);
		PrintWriter out=response.getWriter();
		if(u==null){
			u = us.loginByPhone(accountOrPhone, Userpwd);
		}
		if(u==null){
			System.out.println("��");
			out.write("<script>alert('��������ʺŻ��������������������룡');history.go(-1);</script>");
		}
		if(u!=null){
			String flag=request.getParameter("isCheck");
			if("yes".equals(flag)){
				Cookie cookie1 = new Cookie("USERACCOUNT", URLEncoder.encode(u.getAccount(), "UTF-8"));
				Cookie cookie2 = new Cookie("USERPWD", URLEncoder.encode(u.getUserpwd(), "UTF-8"));
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
