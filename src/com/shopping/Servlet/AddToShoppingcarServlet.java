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

import com.shopping.models.Order;
import com.shopping.models.ShoesOrder;
import com.shopping.models.User;
import com.shopping.service.OrderService;
import com.shopping.service.ShoesOrderService;

public class AddToShoppingcarServlet extends HttpServlet {
	OrderService os = new OrderService();
	ShoesOrderService sos = new ShoesOrderService();

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("USER");
		String UserAccount = null;
		if(user==null){
			out.write("<script>alert('Please Login!');location.href='/JD/enter/DengRu.jsp'</script>");
			out.flush();
			out.close();
			return;
		}else{
			UserAccount = user.getUserAccount();
		}
		
		//when add to shopping car,the 'OrderNumber' is null
		//when submit order ,the 'OrderNumber' becomes not null 
		String OrderNumber = null;
		
		int ShoesId = Integer.parseInt(request.getParameter("ShoesId"));
		String ShoesName = request.getParameter("ShoesName");
		double Shoesprice = Double.parseDouble(request.getParameter("Shoesprice"));
		if(request.getParameter("ShoesColor").equals("choese")){
			out.write("<script>alert('Please choose color!');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}
		String ShoesColor = request.getParameter("ShoesColor");
		String Seller = request.getParameter("Seller");
		String Simg = request.getParameter("Simg");
		int Amount = Integer.parseInt(request.getParameter("Amount"));
		if(request.getParameter("Size").equals("choeseSize")){
			out.write("<script>alert('Please choose Size!');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}
		int Size = Integer.parseInt(request.getParameter("Size"));
		
		//check if there is a same shoesorder in the shoppingcar
		List<ShoesOrder> sol = null;;
		try {
			sol = sos.queryShoesOrderByUserAccount(UserAccount);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		System.out.println("sol.size() = " + sol.size());
		for(ShoesOrder shoesordertemp : sol){
			if(ShoesId == shoesordertemp.getShoesId() && ShoesColor.equals(shoesordertemp.getShoesColor()) && Size == shoesordertemp.getSize()){
				System.out.println("这是用来调试的语句");
				try {
					sos.incShoesOrderAmount(Amount, shoesordertemp.getId());
				} catch (SQLException e) {
					e.printStackTrace();
				}
				out.write("<script>history.go(-1);</script>");
				out.flush();
				out.close();
				return;
			}
		}
		
		ShoesOrder shoesorder = new ShoesOrder(OrderNumber,UserAccount,ShoesId,
				ShoesName,Shoesprice,ShoesColor,Seller,Simg,Amount,Size);
		try {
			if(sos.addShoesOrder(shoesorder)){
				out.write("<script>history.go(-1);</script>");
				out.flush();
				out.close();
				return;
			}else{
				System.out.println("fail!");
				out.write("<script>history.go(-1);</script>");
				out.flush();
				out.close();
				return;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
