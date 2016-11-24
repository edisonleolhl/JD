package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.Address;
import com.shopping.utils.JDBCUtils;

public class AddressDAO{

	//test ok!
	public List<Address> queryBySql(String sql,Object... params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<Address>(Address.class), params);
	}

	//test ok!
	public List<Address> SelectAll(String UserAccount) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from address where userAccount=?";
		Object[] params = {UserAccount};
		return queryRunner.query(sql, new BeanListHandler<Address>(Address.class), params);
	}

	//test ok!
	public boolean insert(Address ad) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="insert into dbo.Address (userAccount,province,city,area,reName,phone) values(?,?,?,?,?,?)";
		Object[] params = {ad.getUserAccount(), ad.getProvince(), ad.getCity(), ad.getArea(), ad.getReName(), ad.getPhone()};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
	
	//test ok!
	public Address SelectById(int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from address where addressId=?";
		Object[] params = {id};
		return queryRunner.query(sql, new BeanHandler<Address>(Address.class), params);
	}
}
