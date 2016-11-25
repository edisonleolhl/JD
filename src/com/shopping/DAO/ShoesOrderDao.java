package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.shopping.models.ShoesOrder;
import com.shopping.utils.JDBCUtils;

public class ShoesOrderDao{
	public List<ShoesOrder> queryBySql(String sql, Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<ShoesOrder>(ShoesOrder.class), params);

	}
	
	public List<String> queryAllSeller(String sql, Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new ColumnListHandler<String>("Seller"), params);
	}
	
	public boolean incShoesOrderAmount(int incAmount, int id) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "update ShoesOrder set Amount = Amount + ? where id= ? ";
		Object[] params = {incAmount, id};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
	
	public boolean modifyShoesOrderAmount(int newAmount, int id) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "update ShoesOrder set Amount = ? where id = ?";
		Object[] params = {newAmount, id};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
	
	public boolean insertShoesOrder(ShoesOrder shoesorder) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "insert into ShoesOrder "
				+ "(OrderNumber,userAccount,shoesId,shoesName,ShoesPrice,ShoesColor,Seller,Simg,Amount,Size) "
				+ "values(?,?,?,?,?,?,?,?,?,?)";
		Object[] params = { shoesorder.getOrderNumber(),
				shoesorder.getUserAccount(), shoesorder.getShoesId(),
				shoesorder.getShoesName(), shoesorder.getShoesPrice(),
				shoesorder.getShoesColor(), shoesorder.getSeller(),
				shoesorder.getSimg(), shoesorder.getAmount(),
				shoesorder.getSize() };
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}	
	}
	
	public boolean delShoesOrder(int id) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "delete from ShoesOrder where id = ?";
		Object[] params = {id};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}		
	}
	
	public ShoesOrder queryById(int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from ShoesOrder where id=?";
		Object[] params = {id};
		return queryRunner.query(sql, new BeanHandler<ShoesOrder>(ShoesOrder.class), params);
	}
	
	public List<String> querySellerByUid(String userAccount,String OrderNumber) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select Seller from ShoesOrder where userAccount = ? and id in "
			 + OrderNumber	+ " group by Seller";
		Object[] params = {userAccount};
		return queryRunner.query(sql, new ColumnListHandler<String>("Seller"), params);
	}
	
	
	public List<ShoesOrder> queryOrderBySeller(String seller,String userAccount,String OrderNumber) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select * from ShoesOrder where Seller = ? and userAccount = ? and id in "
				+ OrderNumber;
		Object[] params = {seller, userAccount};
		return queryRunner.query(sql, new BeanListHandler<ShoesOrder>(ShoesOrder.class), params);
	}
	
	public boolean UpdateOrderNumber(String OrderNumber,int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="update ShoesOrder set OrderNumber = ? where id = ?";
		Object[] params = {OrderNumber, id};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}		
	}
	
	public double SelectTotalPrice(String OrderNumber) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select SUM(ShoesPrice*Amount) from ShoesOrder where OrderNumber = ?";
		Object[] params = {OrderNumber};
		//解决类型转换错误：java.math.BigDecimal cannot be cast to java.lang.String
		Object  ob = queryRunner.query(sql, new ScalarHandler<Double>(1), params);
		return Double.parseDouble(ob.toString()); 
	}
	
	public List<ShoesOrder> selectAmount(String OrderNumber) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from ShoesOrder where OrderNumber = ?";
		Object[] params = {OrderNumber};
		return queryRunner.query(sql, new BeanListHandler<ShoesOrder>(ShoesOrder.class), params); 
	}
}
