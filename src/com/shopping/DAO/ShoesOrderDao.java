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
	
	public List<String> querySellerByUid(String uid,String ords) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select Seller from ShoesOrder where userAccount =? and id in "
			 + ords	+ " group by Seller";
		Object[] params = {uid};
		return queryRunner.query(sql, new ColumnListHandler<String>("Seller"), params);
	}
	
	
	public List<ShoesOrder> queryOrderBySeller(String seller,String uid,String ords) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select * from ShoesOrder where Seller=? and UserAccount = ? and id in "
				+ ords;
		Object[] params = {uid};
		return queryRunner.query(sql, new BeanListHandler<ShoesOrder>(ShoesOrder.class), params);
	}
	
	public boolean UpdateOrderNumber(String num,int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="update ShoesOrder set OrderNumber = ? where id = ?";
		Object[] params = {num, id};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}		
	}
	
	public double SelectTotalPrice(String num) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select SUM(ShoesPrice*Amount) from ShoesOrder where OrderNumber = ?";
		Object[] params = {num};
		return queryRunner.query(sql, new ScalarHandler<Double>(1), params); 
	}
	
	public List<ShoesOrder> selectAmount(String num) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from ShoesOrder where OrderNumber = ?";
		Object[] params = {num};
		return queryRunner.query(sql, new BeanListHandler<ShoesOrder>(ShoesOrder.class), params); 
	}
}
