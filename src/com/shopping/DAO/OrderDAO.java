package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.Order;
import com.shopping.utils.JDBCUtils;

public class OrderDAO{
	public List<Order> queryBySql(String sql, Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<Order>(Order.class), params);
	}
	
	public boolean insertOrder(Order order) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "insert into [Order] " +
				"(OrderNumber,userAccount,address,totalPrice,isCancel,status,Ordertime,Paytime,Sendtime,Receivetime,Seller) " +
				"values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {order.getOrderNumber(), order.getUserAccount(), order.getAddress(),
				order.getTotalPrice(), order.getIsCancel(), order.getStatus(), order.getOrdertime(), 
				order.getPaytime(), order.getSendtime(), order.getReceivetime(), order.getSeller()};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
	
	public boolean recOrder(String Receivetime, String OrderNumber) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "update [Order] set status = '待评价' , Receivetime = ? where OrderNumber = ?  ";
		Object[] params = {Receivetime, OrderNumber};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
	
	public boolean sendOrder(String Sendtime, String OrderNumber) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "update [Order] set status = '待收货' , Sendtime = ? where OrderNumber = ?  ";
		Object[] params = {Sendtime, OrderNumber};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}	
	}
	
	public boolean cancelOrder(String OrderNumber) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "update [Order] set isCancel = 'YES' where OrderNumber = ?";
		Object[] params = {OrderNumber};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}	
	}
	
	public Order queryByOrderNum(String OrderNumber) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from [Order] where OrderNumber = ?";
		Object[] params = {OrderNumber};
		return queryRunner.query(sql, new BeanHandler<Order>(Order.class), params);
	}
	
	public boolean updateByNum(String OrderNumber) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="update [Order] set Status='待发货' where OrderNumber=?";
		Object[] params = {OrderNumber};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}	
	}
	
	public List<Order> selectByNum(String OrderNumber) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from [Order] where OrderNumber=? and Status='待发货'";
		Object[] params = {OrderNumber};
		return queryRunner.query(sql, new BeanListHandler<Order>(Order.class), params);
	}
}
