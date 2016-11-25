package com.shopping.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shopping.DAO.ShoesOrderDao;
import com.shopping.models.ShoesOrder;

public class ShoesOrderService {
	ShoesOrderDao dao = new ShoesOrderDao();
	
	public List<String> queryAllSeller(String UserAccount) throws SQLException{
		List<String> sl = dao.queryAllSeller(
				"select Seller from ShoesOrder where OrderNumber is NULL and userAccount = ? group by Seller", UserAccount);
		System.out.println("sellerlist.size() = " + sl.size());
		return sl;
		
	}
	
	public List<ShoesOrder> queryShoesOrderBySeller(String userAccount, String Seller) throws SQLException{
		List<ShoesOrder> sol = dao.queryBySql(
				"select * from ShoesOrder where OrderNumber is NULL and userAccount=? and Seller=?", userAccount, Seller);
		System.out.println("Seller = " + Seller + " ,shoesorderlist.size() = " + sol.size());
		return sol;
		
	}
	
	public List<ShoesOrder> queryShoesOrderByUserAccount(String userAccount) throws SQLException{
		List<ShoesOrder> sol = dao.queryBySql(
				"select * from ShoesOrder where OrderNumber is NULL and userAccount= ?", userAccount);
		return sol;
	}
	
	public List<ShoesOrder> queryShoesOrderByOrderNumber(String OrderNumber) throws SQLException{
		List<ShoesOrder> sol = dao.queryBySql(
				"select * from ShoesOrder where OrderNumber = ? ", OrderNumber);
		return sol;
		
	}
	
	public boolean incShoesOrderAmount(int incAmount, int id) throws SQLException{
		return dao.incShoesOrderAmount(incAmount,id);
	}
	
	public boolean modifyShoesOrderAmount(int newAmount, int id) throws SQLException{
		return dao.modifyShoesOrderAmount(newAmount, id);
	}
	
	public boolean addShoesOrder(ShoesOrder shoesorder) throws SQLException{
		return dao.insertShoesOrder(shoesorder);
		
	}
	
	public boolean delShoesOrder(int id) throws SQLException{
		return dao.delShoesOrder(id);
	}
	
	public ShoesOrder queryById(int id) throws SQLException
	{
		
		return dao.queryById(id);
	}
	
	public Map<String,List<ShoesOrder>> queryOrderByOrderNumber(String userAccount,String OrderNumber) throws SQLException{
		List<String> sellList = dao.querySellerByUid(userAccount, OrderNumber);
		Map<String,List<ShoesOrder>> map = new HashMap<String,List<ShoesOrder>>();
		for(String seller : sellList){
			System.out.println("seller:" + seller);
			List<ShoesOrder> sol = dao.queryOrderBySeller(seller, userAccount, OrderNumber);
			map.put(seller, sol);
		}
		return map;
	}
	
	public boolean UpdateOrderNumber(String OrderNumber,int id) throws SQLException
	{
		return dao.UpdateOrderNumber(OrderNumber,id);
	}
	
	public double SelectTotalPrice(String OrderNumber) throws SQLException
	{
		return dao.SelectTotalPrice(OrderNumber);
	}
	
	public List<ShoesOrder> selectAmount(String OrderNumber) throws SQLException
	{
		return dao.selectAmount(OrderNumber);
	}
}
