package com.shopping.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.DAO.OrderDAO;
import com.shopping.models.Order;
import com.shopping.models.ShoesOrder;
import com.shopping.models.User;

public class OrderService {
	OrderDAO dao = new OrderDAO();
	ShoesOrderService sos = new ShoesOrderService();
	public int queryNumOfNotPay(User user) throws SQLException{
		List<Order> olNotPay = dao.queryBySql("select * from [Order] where status = '待付款' and isCancel = 'NO' and UserAccount = ?", user.getUserAccount());
		System.out.println("olNotPay.size() = " + olNotPay.size());
		return olNotPay.size();
		
	}
	
	public int queryNumOfNotSend(User user) throws SQLException{
		List<Order> olNotSend = dao.queryBySql("select * from [Order] where status = '待发货' and isCancel = 'NO' and UserAccount = ?", user.getUserAccount());
		System.out.println("olNotSend.size() = " + olNotSend.size());
		return olNotSend.size();

	}
	
	public int queryNumOfNotRec(User user) throws SQLException{
		List<Order> olNotRec = dao.queryBySql("select * from [Order] where status = '待收货' and isCancel = 'NO' and UserAccount = ?", user.getUserAccount());
		System.out.println("olNotRec.size() = " + olNotRec.size());
		return olNotRec.size();
		
	}
	
	public int queryNumOfNotAppr(User user) throws SQLException{
		List<Order> olNotAppr = dao.queryBySql("select * from [Order] where status = '待评价' and isCancel = 'NO' and UserAccount = ?", user.getUserAccount());
		System.out.println("olNotAppr.size() = " + olNotAppr.size());
		return olNotAppr.size();
		
	}
	
	public List<String> queryAllOrderNum() throws SQLException{
		List<Order> olAll = dao.queryBySql("select OrderNumber from [Order]");
		List<String> onlAll = new ArrayList<String>();
		for(Order temp : olAll){
			onlAll.add(temp.getOrderNumber());
		}
		return onlAll;

	}
	public List<Order> queryAllOrder(User user) throws SQLException{
		List<Order> olAll = dao.queryBySql("select * from [Order] where userAccount = ? and isCancel = 'NO' ", user.getUserAccount());
		List<ShoesOrder> shoesorderlist;
		for(Order order : olAll){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olAll;
	}
	
	public List<Order> queryAllOrderBySeller(String Seller) throws SQLException{
		List<Order> olAllBySeller = dao.queryBySql("select * from [Order] where Seller = ? and isCancel = 'NO' ", Seller);
		List<ShoesOrder> shoesorderlist;
		for(Order order : olAllBySeller){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olAllBySeller;
		
	}
	
	public List<Order> queryOrderByUserAndStatus(String userAccount, String status) throws SQLException{
		List<Order> olByUserAndStatus = dao.queryBySql("select * from [Order] where userAccount = ? and status = ? and isCancel = 'NO' ", userAccount, status);
		List<ShoesOrder> shoesorderlist;
		for(Order order : olByUserAndStatus){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olByUserAndStatus;
	}
	
	public List<Order> queryOrderBySellerAndStatus(String Seller, String status) throws SQLException{
		List<Order> olBySellerAndStatus = dao.queryBySql("select * from [Order] where Seller = ? and status = ? and isCancel = 'NO' ", Seller, status);
		List<ShoesOrder> shoesorderlist;
		for(Order order : olBySellerAndStatus){
			shoesorderlist = sos.queryShoesOrderByOrderNumber(order.getOrderNumber());
			order.setShoesOrderList(shoesorderlist);
		}
		return olBySellerAndStatus;
	}
	
	public boolean addOrder(Order order) throws SQLException
	{
		return dao.insertOrder(order);
	}
	
	public boolean recOrder(String Receivetime, String OrderNumber) throws SQLException
	{
		return dao.recOrder(Receivetime, OrderNumber);
	}	
	
	public boolean sendOrder(String Sendtime, String OrderNumber) throws SQLException{
		return dao.sendOrder(Sendtime, OrderNumber);
	}
	
	public boolean cancelOrder(String OrderNumber) throws SQLException{
		return dao.cancelOrder(OrderNumber);
	}
	public Order queryByOrderNum(String num) throws SQLException
	{
		return dao.queryByOrderNum(num);
	}
	
	public boolean updateByNum(String num) throws SQLException
	{
		return dao.updateByNum(num);
	}

	public List<Order> selectByNum(String num) throws SQLException
	{
		
		return dao.selectByNum(num);
	}
}
