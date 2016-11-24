package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.Address;
import com.shopping.models.ShoesOrder;
import com.shopping.models.User;
import com.shopping.models.addr;
import com.shopping.service.AddressService;
import com.shopping.service.ShoesOrderService;
import com.shopping.service.addrService;

public class SubmitOrderServlet extends HttpServlet {

	addrService adse=new addrService();
	AddressService addse=new AddressService();
	ShoesOrderService sose=new ShoesOrderService();
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		submitOrder(request,response);
		
		
	}
	
	public void submitOrder(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		

		String strs[] = request.getParameterValues("sh");
		ShoesOrder so=new ShoesOrder();
		int count=0;
		double money=0;
		
		
		if(strs==null || strs.length==0)
		{
			PrintWriter out=response.getWriter();
			out.write("<script>alert('至少选择一件商品!');location.href='/JD/shoppingcar/GouWuChe.jsp';</script>");			
			out.flush();
			out.close();
		}

		String ords = "(";
		for (String string : strs) {
			ords+= string + ",";
		}
		ords = ords.substring(0,ords.length()-1);
		ords+=")";
		
		User user = (User) session.getAttribute("USER");
		
		Map<String, List<ShoesOrder>> map = null;
		try {
			map = sose.queryOrderByUid(user.getUserAccount(),ords);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		for (String string : strs) 
		{
			so=new ShoesOrder();
			int i=Integer.parseInt(string);
		    try {
				so=sose.queryById(i);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		    count=count+so.getAmount();
		    money=money+(so.getShoesPrice()*so.getAmount());
		}
		Address adds = null;
		List<addr> addr = null;
		List<Address> add = null;
		try {
			adds = addse.SelectAll(user.getUserAccount()).get(0);
			addr = adse.sele();
			add = addse.SelectAll(user.getUserAccount());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("add", add);
		request.setAttribute("adds", adds);
		request.setAttribute("addr", addr);
		request.setAttribute("map", map);
		request.setAttribute("money", money);
		request.setAttribute("count", count);
	    request.getRequestDispatcher("/dingDan/ddd.jsp").forward(request, response);
	}
	
	 

}
