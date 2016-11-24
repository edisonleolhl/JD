package com.shopping.Servlet; 

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.Address;
import com.shopping.models.User;
import com.shopping.models.addr;
import com.shopping.service.AddressService;
import com.shopping.service.addrService;

public class AddAddress extends HttpServlet {

	AddressService addse=new AddressService();
	addrService adse=new addrService();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		request.setAttribute("add", request.getAttribute("add"));
		request.setAttribute("adds", request.getAttribute("adds"));
		request.setAttribute("addr", request.getAttribute("addr"));
		request.setAttribute("map", request.getAttribute("map"));
		request.setAttribute("money", request.getAttribute("money"));
		request.setAttribute("count", request.getAttribute("count"));
		
		
		String name=(String)request.getParameter("name");
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("USER");
		String useraccount=user.getUserAccount();
		String provincial=(String)request.getParameter("provincial");
		String city=(String)request.getParameter("city");
		if(provincial=="0" ||provincial.equals("0"))
		{
			out.write("<script>alert('请选择省份！');window.history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}else if(city=="0" || city.equals("0"))
		{
			out.write("<script>alert('请选择城市！');window.history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}
		String area=request.getParameter("area");
		String phone=request.getParameter("phone1");
		String number=request.getParameter("number");
		
		Address ad=new Address ();
		ad.setAddressId(0);
		ad.setUserAccount(useraccount);
		ad.setProvince(provincial);
		ad.setCity(city);
		ad.setArea(area);
		ad.setReName(name);
		if(phone=="" || phone.equals(""))
		{
			ad.setPhone(number);
		}else if(number=="" || number.equals(""))
		{
			ad.setPhone(phone);
		}
		
		
		try {
			boolean b=addse.insert(ad);
			if(b)
			{
				out.write("<script>alert('添加成功！');</script>");
				List<addr> addr=adse.sele();
				List<Address> add=addse.SelectAll(useraccount);
				request.setAttribute("add", add);
				request.setAttribute("addr", addr);
				request.getRequestDispatcher("/dingDan/ddd.jsp").forward(request, response);
			}else
			{
				out.write("<script>alert('添加失败！');</script>");
				List<addr> addr=adse.sele();
				List<Address> add=addse.SelectAll(useraccount);
				request.setAttribute("add", add);
				request.setAttribute("addr", addr);
				request.getRequestDispatcher("/dingDan/ddd.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
