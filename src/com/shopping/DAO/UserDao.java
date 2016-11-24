package com.shopping.DAO;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.shopping.models.User;
import com.shopping.utils.JDBCUtils;

public class UserDao{
	
	public List<User> queryBySql(String sql,Object... params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<User>(User.class), params);
	}
	
	public boolean insert(User u) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "insert into [User] (password,userAccount,sex,registTime,birthday,phone,userImg) values(?,?,?,?,?,?,?)";
		Object[] params = { u.getPassword(), u.getUserAccount(), u.getSex(), u.getRegistTime(), u.getBirthday(), u.getPhone(), u.getUserImg()};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
	
	public boolean update(User u) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "update [User] set password=?,userAccount=?,sex=?,registTime=? where userId=?";
		Object[] params = { u.getPassword(), u.getUserAccount(), u.getSex(), u.getRegistTime(), u.getUserId()};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
}
