package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.Order;

public class OrderDao extends databaseBAO {
	public List<Order> queryBySql(String sql, Object...objects){
		ResultSet rs = super.qureall(sql,objects);
		List<Order> list = new ArrayList<Order>();
		Order order = null;
		try {
			while(rs.next()){
				order = new Order();
				order.setOrderNumber(rs.getString(1));
				order.setUserAccount(rs.getString(2));
				order.setAddress(rs.getInt(3));
				order.setTotalPrice(rs.getDouble(4));
				order.setIscancel(rs.getString(5));
				order.setStatus(rs.getString(6));
				order.setOrdertime(rs.getString(7));
				order.setPaytime(rs.getString(8));
				order.setSendtime(rs.getString(9));
				order.setReceivetime(rs.getString(10));
				order.setSeller(rs.getString(11));

				list.add(order);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean insertOrder(Order order){
		String sql = "insert into [Order] " +
				"(OrderNumber,UserAccount,address,TotalPrice,Iscancel,Status,Ordertime,Paytime,Sendtime,Receivetime,Seller) " +
				"values(?,?,?,?,?,?,?,?,?,?,?)";
		return super.update(sql, order.getOrderNumber(), order.getUserAccount(), order.getAddress(),
				order.getTotalPrice(), order.getIscancel(), order.getStatus(), order.getOrdertime(), 
				order.getPaytime(), order.getSendtime(), order.getReceivetime(), order.getSeller());
		
	}
	
	public boolean recOrder(String Receivetime, String OrderNumber){
		String sql = "update [Order] set Status = '待评价' , Receivetime = ? where OrderNumber = ?  ";
		return super.update(sql, Receivetime, OrderNumber);
	}
	
	public boolean sendOrder(String Sendtime, String OrderNumber){
		String sql = "update [Order] set Status = '待收货' , Sendtime = ? where OrderNumber = ?  ";
		return super.update(sql, Sendtime, OrderNumber);
	}
	
	public boolean cancelOrder(String OrderNumber){
		String sql = "update [Order] set Iscancel = 'YES' where OrderNumber = ?";
		return super.update(sql, OrderNumber);
	}
	public Order queryByOrderNum(String num)
	{
		String sql="select * from [Order] where OrderNumber=?";
		return this.queryBySql(sql, num).get(0);
	}
	
	public boolean updateByNum(String num)
	{
		String sql="update [Order] set Status='待发货' where OrderNumber=?";
		return super.update(sql, num);
	}
	
	public List<Order> selectByNum(String num)
	{
		String sql="select * from [Order] where OrderNumber=? and Status='待发货'";
		return this.queryBySql(sql, num);
	}
}
