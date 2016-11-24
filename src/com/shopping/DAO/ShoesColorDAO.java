package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.ShoesColor;
import com.shopping.utils.JDBCUtils;

public class ShoesColorDAO{

	public List<ShoesColor> queryBySql(String sql,Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<ShoesColor>(ShoesColor.class), params);
	}
	
	public ShoesColor SelectById(int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from ShoesColor where shoesId = ?";
		Object[] params = {id};
		return queryRunner.query(sql, new BeanHandler<ShoesColor>(ShoesColor.class), params);
	}
}
