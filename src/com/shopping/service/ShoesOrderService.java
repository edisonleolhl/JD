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
				"select * from ShoesOrder where OrderNumber is NULL anduserAccount=? and Seller=?", userAccount, Seller);
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
	
	public Map<String,List<ShoesOrder>> queryOrderByUid(String uid,String ords) throws SQLException{
		List<String> list = dao.querySellerByUid(uid,ords);
		Map<String,List<ShoesOrder>> map = new HashMap<String,List<ShoesOrder>>();
		for(String str : list){
			List<ShoesOrder> list_ = dao.queryOrderBySeller(str, uid,ords);
			map.put(str, list_);
		}
		return map;
	}
	
	public boolean UpdateOrderNumber(String num,int id) throws SQLException
	{
		return dao.UpdateOrderNumber(num,id);
	}
	
	public double SelectTotalPrice(String num) throws SQLException
	{
		return dao.SelectTotalPrice(num);
	}
	
	public List<ShoesOrder> selectAmount(String num) throws SQLException
	{
		return dao.selectAmount(num);
	}
}
