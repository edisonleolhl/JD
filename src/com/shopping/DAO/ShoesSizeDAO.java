package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.ShoesSize;
import com.shopping.utils.JDBCUtils;

public class ShoesSizeDAO{

	public List<ShoesSize> queryBySql(String sql,Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<ShoesSize>(ShoesSize.class), params);
	}
	
	public List<ShoesSize> SelectAll() throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select * from ShoesSize";
		return queryRunner.query(sql, new BeanListHandler<ShoesSize>(ShoesSize.class));
	}
}
