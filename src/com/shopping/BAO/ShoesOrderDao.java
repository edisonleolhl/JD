package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.ShoesOrder;

public class ShoesOrderDao extends databaseBAO{
	public List<ShoesOrder> queryBySql(String sql, Object...objects){
		ResultSet rs = super.qureall(sql,objects);
		List<ShoesOrder> list = new ArrayList<ShoesOrder>();
		ShoesOrder shoesorder = null;
		try {
			while(rs.next()){
				shoesorder = new ShoesOrder();
				shoesorder.setId(rs.getInt(1));
				shoesorder.setOrderNumber(rs.getString(2));
				shoesorder.setUserAccount(rs.getString(3));
				shoesorder.setShoesId(rs.getInt(4));
				shoesorder.setShoesName(rs.getString(5));
				shoesorder.setShoesPrice(rs.getDouble(6));
				shoesorder.setShoesColor(rs.getString(7));
				shoesorder.setSeller(rs.getString(8));
				shoesorder.setSimg(rs.getString(9));
				shoesorder.setAmount(rs.getInt(10));
				shoesorder.setSize(rs.getInt(11));
				list.add(shoesorder);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public List<String> queryAllSeller(String sql, Object...objects){
		ResultSet rs = super.qureall(sql,objects);
		List<String> list = new ArrayList<String>();
		String seller = null;
		try {
			while(rs.next()){
				seller = new String();
				seller = rs.getString(1);
				list.add(seller);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	public boolean incShoesOrderAmount(int incAmount, int id){
		String sql = "update ShoesOrder set Amount = Amount + ? where id= ? ";
		return super.update(sql, incAmount, id);
	}
	
	public boolean modifyShoesOrderAmount(int newAmount, int id){
		String sql = "update ShoesOrder set Amount = ? where id = ?";
		return super.update(sql, newAmount, id);
	}
	
	public boolean insertShoesOrder(ShoesOrder shoesorder){
		String sql = "insert into ShoesOrder " +
				"(OrderNumber,UserAccount,ShoesId,ShoesName,ShoesPrice,ShoesColor,Seller,Simg,Amount,Size) " +
				"values(?,?,?,?,?,?,?,?,?,?)";
		return super.update(sql, 
				shoesorder.getOrderNumber(), shoesorder.getUserAccount(), shoesorder.getShoesId(), 
				shoesorder.getShoesName(),shoesorder.getShoesPrice(), shoesorder.getShoesColor(), 
				shoesorder.getSeller(), shoesorder.getSimg(),shoesorder.getAmount(), shoesorder.getSize());
		
	}
	
	public boolean delShoesOrder(int id){
		String sql = "delete from ShoesOrder where id = ?";
		return super.update(sql, id);
	}
	
	public ShoesOrder queryById(int id)
	{
		String sql="select * from ShoesOrder where id=?";
		return this.queryBySql(sql, id).get(0);
	}
	
	public List<String> querySellerByUid(String uid,String ords){
		String sql = "select Seller from shoesOrder where UserAccount=? and id in "
			 + ords	+ " group by Seller";
		List<String> list = new ArrayList<String>();
		ResultSet rs = super.qureall(sql, new Object[]{uid});
		try {
			while(rs.next()){
				list.add(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			super.closeAll(rs);
		}
		return list;
		
	}
	
	
	public List<ShoesOrder> queryOrderBySeller(String seller,String uid,String ords){
		String sql = "select * from shoesOrder where Seller=? and UserAccount=? and id in " + ords;
		return this.queryBySql(sql, seller,uid);
	}
	
	public boolean UpdateOrderNumber(String num,int id)
	{
		String sql="update dbo.ShoesOrder set OrderNumber=? where id=?";
		return super.update(sql, num,id);
	}
	
	public double SelectTotalPrice(String num)
	{
		String sql="select SUM(ShoesPrice*Amount) from dbo.ShoesOrder where OrderNumber=?";
		return super.TotalPrice(sql, num);
	}
	
	public List<ShoesOrder> selectAmount(String num)
	{
		String sql="select * from dbo.ShoesOrder where OrderNumber=?";
		return this.queryBySql(sql, num);
	}
}
