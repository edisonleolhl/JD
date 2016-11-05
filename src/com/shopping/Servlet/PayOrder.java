package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.Order;
import com.shopping.models.ShoesOrder;
import com.shopping.models.User;
import com.shopping.serveice.OrderService;
import com.shopping.serveice.ShoesOrderService;

public class PayOrder extends HttpServlet {
	
	ShoesOrderService sose=new ShoesOrderService();
	OrderService os=new OrderService();
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
		
		SimpleDateFormat sdft=new SimpleDateFormat("yyyyMMddHHmmssSSS");
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("USER");
		String UserAccout=user.getAccount();
		String address=request.getParameter("address");
		String id[]=request.getParameterValues("getid");
		System.out.println("用户"+UserAccout);
		System.out.println("地址"+address);
		ShoesOrder so=new ShoesOrder();
		String seller[]=request.getParameterValues("seller");
		Date date = new Date(System.currentTimeMillis());
		String[] OrderNumber = new String[seller.length];
		for(int i=0;i<seller.length;i++)
		{
			OrderNumber[i]=sdft.format(date)+i;
			
		}
		boolean b=false;
		for(String i : id)
		{
			System.out.println(i);
			so=new ShoesOrder();
			int id1=Integer.parseInt(i);
		    so=sose.queryById(id1);
		    for(int j = 0; j<seller.length;j++){
		    	if(seller[j].equals(so.getSeller()))
			    {
			    	b=sose.UpdateOrderNumber(OrderNumber[j],id1);
			    }
		    }
		}
		
		double Total=0;
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		String Ordertime = sdf2.format(date);
		Order order=new Order();
		String Iscancel = "NO";
		String Status="待付款";
		boolean f=false;
		List<String> list=new ArrayList<String>();
		for(int i=0;i<seller.length;i++)
		{
			int address1=Integer.parseInt(address);
			String Seller=seller[i];
     		Total=sose.SelectTotalPrice(OrderNumber[i]);
     	    order = new Order(OrderNumber[i],UserAccout,address1,Total,
    				Iscancel,Status,Ordertime,null,null,null,Seller);
			f=os.addOrder(order);
			list.add(OrderNumber[i]);
		}
		
		if(b && f)
		{
			System.out.println(list);
			request.setAttribute("list",list);
			request.getRequestDispatcher("/dingDan/pay.jsp").forward(request, response);
		}else
		{
			System.out.println("Oh..No");
		}
	}
	
}
