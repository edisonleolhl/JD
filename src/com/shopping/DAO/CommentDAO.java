package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.Comment;
import com.shopping.utils.JDBCUtils;

public class CommentDAO{

	public List<Comment> queryBySql(String sql,Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<Comment>(Comment.class), params);
	}
	
	//test ok!
	public List<Comment> SelectById(int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from Comment where shoesId = ?";
		Object[] params = {id};
		return queryRunner.query(sql, new BeanListHandler<Comment>(Comment.class), params);
	}
	
}
