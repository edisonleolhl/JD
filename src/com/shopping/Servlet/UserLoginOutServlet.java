package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.utils.CookieUtils;

public class UserLoginOutServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		HttpSession session=request.getSession();
		session.invalidate();
		
		Cookie cookie1 = CookieUtils.findCookie(request.getCookies(), "USERACCOUNT");
		if(cookie1 != null){
			cookie1.setMaxAge(0);
		}
		Cookie cookie2 = CookieUtils.findCookie(request.getCookies(), "USERPWD");
		if(cookie2 != null){
			cookie2.setMaxAge(0);
		}
		
		System.out.println("注销成功");
		PrintWriter out=response.getWriter();
		out.write("<script>alert('注销成功!');location.href='/JD/fristpage/search.jsp';</script>");			
		out.flush();
		out.close();
	}

}
