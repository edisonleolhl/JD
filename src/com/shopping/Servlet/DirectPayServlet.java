package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.Address;
import com.shopping.models.Order;
import com.shopping.models.ShoesOrder;
import com.shopping.models.User;
import com.shopping.models.addr;
import com.shopping.service.AddressService;
import com.shopping.service.OrderService;
import com.shopping.service.ShoesOrderService;
import com.shopping.service.addrService;

public class DirectPayServlet extends HttpServlet {
	OrderService os = new OrderService();
	ShoesOrderService sos = new ShoesOrderService();
	AddressService addse=new AddressService();
	
	addrService adse=new addrService();
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("USER");
		String UserAccount = null;
		if(user==null){
			out.write("<script>alert('请登录!');location.href='/JD/enter/DengRu.jsp'</script>");
			out.flush();
			out.close();
			return;
		}else{
			UserAccount = user.getUserAccount();
			System.out.println("UserAccount = " + UserAccount);
		}
		
		//when add to shopping car,the 'OrderNumber' is null
		//when submit order ,the 'OrderNumber' becomes not null 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");

		Date date = new Date(System.currentTimeMillis());
		String OrderNumber = sdf.format(date);
		String Ordertime = sdf2.format(date);
		System.out.println(OrderNumber);
		System.out.println(Ordertime);
		
		int ShoesId = Integer.parseInt(request.getParameter("ShoesId"));
		String ShoesName = request.getParameter("ShoesName");
		double Shoesprice = Double.parseDouble(request.getParameter("Shoesprice"));
		if( request.getParameter("ShoesColor").equals("choese")){
			out.write("<script>alert('请选择颜色!');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}
		String ShoesColor = request.getParameter("ShoesColor");
		String Seller = request.getParameter("Seller");
		String Simg = request.getParameter("Simg");
		int Amount = Integer.parseInt(request.getParameter("Amount"));
		if(request.getParameter("Size").equals("choeseSize")){
			out.write("<script>alert('请选择尺码!');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}
		int Size = Integer.parseInt(request.getParameter("Size"));
		
		//default parameter
		int address = 1;
		String Iscancel = "NO";
		String Status="待付款";
		
		double TotalPrice = Shoesprice*Amount;
		Order order = new Order(OrderNumber,UserAccount,address,TotalPrice,
				Iscancel,Status,Ordertime,null,null,null,Seller);
		try {
			if(os.addOrder(order)){
				System.out.println("success？？");
				request.setAttribute("ORDER", order);
			}else{
				System.out.println("fail!");
				out.write("<script>alert('fail!');history.go(-1);</script>");
				out.flush();
				out.close();
				return;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ShoesOrder shoesorder = new ShoesOrder(OrderNumber,UserAccount,ShoesId,
				ShoesName,Shoesprice,ShoesColor,Seller,Simg,Amount,Size);
		try {
			if(sos.addShoesOrder(shoesorder)){
				System.out.println("success??");
				request.setAttribute("SHOESORDER", shoesorder);
			}else{
				System.out.println("fail!");
				out.write("<script>alert('fail!');history.go(-1);</script>");
				out.flush();
				out.close();
				return;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		List<String> list=new ArrayList<String>();
		list.add(OrderNumber);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/dingDan/pay.jsp").forward(request, response);

	}
	
}
