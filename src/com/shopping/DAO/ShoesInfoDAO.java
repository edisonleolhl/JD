package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.ShoesInfo;
import com.shopping.utils.JDBCUtils;

public class ShoesInfoDAO{

	public List<ShoesInfo> queryBySql(String sql,Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<ShoesInfo>(ShoesInfo.class), params);
	}
	
	public ShoesInfo queryById(int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from ShoesInfo where shoesId=?";
		Object[] params = {id};
		return queryRunner.query(sql, new BeanHandler<ShoesInfo>(ShoesInfo.class), params);
	}
}
