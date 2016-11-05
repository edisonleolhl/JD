package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.models.PageBean;
import com.shopping.serveice.PageShoesService;
import com.shopping.serveice.ShoesImgService;


public class Myservlet extends HttpServlet {
	ShoesImgService sis = new ShoesImgService();
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		doPost(req,resp);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		int currentPage = 1;
		int pageSize = 20;
		
		
		String input=req.getParameter("input");
		
		if(req.getParameter("currentPage") != null && !"".equals(req.getParameter("currentPage"))){
			currentPage = Integer.parseInt(req.getParameter("currentPage"));
		}
		
		if(req.getParameter("pageSize") != null && !"".equals(req.getParameter("pageSize"))){
			pageSize = Integer.parseInt(req.getParameter("pageSize"));
		}
		
		PageBean page = new PageShoesService().queryByPage(pageSize, currentPage,input);
		//Integer = shoesId
		//
		Map<Integer,List<String>> map = sis.queryAllLittleImg();
		req.setAttribute("page", page);
		req.setAttribute("map", map);
	    req.setAttribute("input", input);
	
		req.getRequestDispatcher("/showfristpage/middle.jsp").forward(req, resp);
		
	}
	

}
