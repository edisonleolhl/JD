package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;


import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.addr;
import com.shopping.utils.JDBCUtils;

public class AddrDAO{

	public List<addr> seleAll(String sql, Object... params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		List<addr> addrList = queryRunner.query(sql, new BeanListHandler<addr>(addr.class), params);
		return addrList;
	}
	
	public List<addr> sele() throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from addr where area=0";
		List<addr> addrList = queryRunner.query(sql, new BeanListHandler<addr>(addr.class));
		return addrList;		
	}
}
