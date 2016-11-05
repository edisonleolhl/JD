package com.shopping.serveice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shopping.BAO.ShoesOrderDao;
import com.shopping.models.ShoesOrder;

public class ShoesOrderService {
	ShoesOrderDao dao = new ShoesOrderDao();
	
	public List<String> queryAllSeller(String UserAccount){
		List<String> sl = dao.queryAllSeller(
				"select Seller from dbo.ShoesOrder where OrderNumber is NULL and UserAccount=? group by Seller", UserAccount);
		System.out.println("sellerlist.size() = " + sl.size());
		return sl;
		
	}
	
	public List<ShoesOrder> queryShoesOrderBySeller(String UserAccount, String Seller){
		List<ShoesOrder> sol = dao.queryBySql(
				"select * from dbo.ShoesOrder where OrderNumber is NULL and UserAccount=? and Seller=?", UserAccount, Seller);
		System.out.println("Seller = " + Seller + " ,shoesorderlist.size() = " + sol.size());
		return sol;
		
	}
	
	public List<ShoesOrder> queryShoesOrderByUserAccount(String UserAccount){
		List<ShoesOrder> sol = dao.queryBySql(
				"select * from ShoesOrder where OrderNumber is NULL and UserAccount= ?", UserAccount);
		return sol;
	}
	
	public List<ShoesOrder> queryShoesOrderByOrderNumber(String OrderNumber){
		List<ShoesOrder> sol = dao.queryBySql(
				"select * from ShoesOrder where OrderNumber = ? ", OrderNumber);
		return sol;
		
	}
	
	public boolean incShoesOrderAmount(int incAmount, int id){
		return dao.incShoesOrderAmount(incAmount,id);
	}
	
	public boolean modifyShoesOrderAmount(int newAmount, int id){
		return dao.modifyShoesOrderAmount(newAmount, id);
	}
	
	public boolean addShoesOrder(ShoesOrder shoesorder){
		return dao.insertShoesOrder(shoesorder);
		
	}
	
	public boolean delShoesOrder(int id){
		return dao.delShoesOrder(id);
	}
	
	public ShoesOrder queryById(int id)
	{
		
		return dao.queryById( id);
	}
	
	public Map<String,List<ShoesOrder>> queryOrderByUid(String uid,String ords){
		List<String> list = dao.querySellerByUid(uid,ords);
		Map<String,List<ShoesOrder>> map = new HashMap<String,List<ShoesOrder>>();
		for(String str : list){
			List<ShoesOrder> list_ = dao.queryOrderBySeller(str, uid,ords);
			map.put(str, list_);
		}
		return map;
	}
	
	public boolean UpdateOrderNumber(String num,int id)
	{
		return dao.UpdateOrderNumber(num,id);
	}
	
	public double SelectTotalPrice(String num)
	{
		return dao.SelectTotalPrice(num);
	}
	
	public List<ShoesOrder> selectAmount(String num)
	{
		return dao.selectAmount(num);
	}
}
