package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.User;

public class UserDao extends databaseBAO {
	public List<User> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql,objects);
		List<User> list = new ArrayList<User>();
		User u = null;
		try {
			while(rs.next()){
				u = new User();
				u.setUserId(rs.getInt(1));
				u.setUserpwd(rs.getString(2));
				u.setAccount(rs.getString(3));
				u.setSex(rs.getString(4));
				u.setRegistime(rs.getString(5));
				u.setBirth(rs.getString(6));
				u.setPhone(rs.getString(7));
				u.setUserimg(rs.getString(8));
				list.add(u);
			}
			
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public boolean insert(User u){
		String sql = "insert into [User] (Userpwd,account,sex,registime,birth,phone,Userimg) values(?,?,?,?,?,?,?)";
		return super.update(sql, u.getUserpwd(), u.getAccount(), u.getSex(), u.getRegistime(), u.getBirth(), u.getPhone(), u.getUserimg());
		
	}
	
	public boolean update(User u){
		String sql = "update [User] set Userpwd=?,account=?,sex=?,registime=? where UserId=?";
		return super.update(sql, u.getUserpwd(), u.getAccount(), u.getSex(), u.getRegistime(), u.getUserId());
	}
	
	
}
