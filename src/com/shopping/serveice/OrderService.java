package com.shopping.serveice;

import java.util.ArrayList;
import java.util.List;

import com.shopping.BAO.OrderDao;
import com.shopping.models.Order;
import com.shopping.models.ShoesOrder;
import com.shopping.models.User;

public class OrderService {
	OrderDao dao = new OrderDao();
	ShoesOrderService sos = new ShoesOrderService();
	public int queryNumOfNotPay(User user){
		List<Order> olNotPay = dao.queryBySql("select * from [Order] where Status = '待付款' and Iscancel = 'NO' and UserAccount = ?", user.getAccount());
		System.out.println("olNotPay.size() = " + olNotPay.size());
		return olNotPay.size();
		
	}
	
	public int queryNumOfNotSend(User user){
		List<Order> olNotSend = dao.queryBySql("select * from [Order] where Status = '待发货' and Iscancel = 'NO' and UserAccount = ?", user.getAccount());
		System.out.println("olNotSend.size() = " + olNotSend.size());
		return olNotSend.size();

	}
	
	public int queryNumOfNotRec(User user){
		List<Order> olNotRec = dao.queryBySql("select * from [Order] where Status = '待收货' and Iscancel = 'NO' and UserAccount = ?", user.getAccount());
		System.out.println("olNotRec.size() = " + olNotRec.size());
		return olNotRec.size();
		
	}
	
	public int queryNumOfNotAppr(User user){
		List<Order> olNotAppr = dao.queryBySql("select * from [Order] where Status = '待评价' and Iscancel = 'NO' and UserAccount = ?", user.getAccount());
		System.out.println("olNotAppr.size() = " + olNotAppr.size());
		return olNotAppr.size();
		
	}
	
	public List<String> queryAllOrderNum(){
		List<Order> olAll = dao.queryBySql("select OrderNumber from [Order]");
		List<String> onlAll = new ArrayList<String>();
		for(Order temp : olAll){
			onlAll.add(temp.getOrderNumber());
		}
		return onlAll;

	}
	public List<Order> queryAllOrder(User user){
		List<Order> olAll = dao.queryBySql("select * from [Order] where UserAccount = ? and Iscancel = 'NO' ", user.getAccount());
		List<ShoesOrder> shoesorderlist;
		for(Order order : olAll){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olAll;
	}
	
	public List<Order> queryAllOrderBySeller(String Seller){
		List<Order> olAllBySeller = dao.queryBySql("select * from [Order] where Seller = ? and Iscancel = 'NO' ", Seller);
		List<ShoesOrder> shoesorderlist;
		for(Order order : olAllBySeller){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olAllBySeller;
		
	}
	
	public List<Order> queryOrderByUserAndStatus(String UserAccount, String Status){
		List<Order> olByUserAndStatus = dao.queryBySql("select * from [Order] where UserAccount = ? and Status = ? and Iscancel = 'NO' ", UserAccount, Status);
		List<ShoesOrder> shoesorderlist;
		for(Order order : olByUserAndStatus){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olByUserAndStatus;
	}
	
	public List<Order> queryOrderBySellerAndStatus(String Seller, String Status){
		List<Order> olBySellerAndStatus = dao.queryBySql("select * from [Order] where Seller = ? and Status = ? and Iscancel = 'NO' ", Seller, Status);
		List<ShoesOrder> shoesorderlist;
		for(Order order : olBySellerAndStatus){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olBySellerAndStatus;
	}
	
	public boolean addOrder(Order order)
	{
		return dao.insertOrder(order);
	}
	
	public boolean recOrder(String Receivetime, String OrderNumber)
	{
		return dao.recOrder(Receivetime, OrderNumber);
	}	
	
	public boolean sendOrder(String Sendtime, String OrderNumber){
		return dao.sendOrder(Sendtime, OrderNumber);
	}
	
	public boolean cancelOrder(String OrderNumber){
		return dao. cancelOrder(OrderNumber);
	}
	public Order queryByOrderNum(String num)
	{
		return dao.queryByOrderNum(num);
	}
	
	public boolean updateByNum(String num)
	{
		return dao.updateByNum(num);
	}

	public List<Order> selectByNum(String num)
	{
		
		return dao.selectByNum(num);
	}
}
