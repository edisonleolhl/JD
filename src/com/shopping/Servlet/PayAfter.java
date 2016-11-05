package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aptech.util.GenImg;

public class PayAfter extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");		
		request.setCharacterEncoding("utf-8");
		String orderId=request.getParameter("orderId"); 
		String basePath = request.getScheme()+"://172.20.10.2:"
				+ request.getServerPort() + request.getContextPath() +"/";
		String content = basePath + "payok?orderId=" + orderId;
		System.out.println(orderId);
        GenImg encoder = new GenImg();  
        encoder.encoderQRCoder(content, response); 
	}
	
}
