package com.shopping.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.DAO.UserDao;
import com.shopping.models.User;


public class UserService {
	UserDao dao = new UserDao();
	
	public User loginByAccount(String userAccount, String password) throws SQLException{
		System.out.println("loginbyaccount");
		List<User> ul = new ArrayList<User>();
		ul = dao.queryBySql("select * from [User] where userAccount = ? and password = ?", userAccount, password);
		System.out.println(ul.size());
		User u = new User();
		if(ul.size() != 0){
			u = ul.get(0);
			return u;
		}
		return null;
		
	}
	
	public User loginByPhone(String phone, String password) throws SQLException{
		System.out.println("loginbyphone");
		List<User> ul = new ArrayList<User>();
		ul = dao.queryBySql("select * from [User] where phone = ? and password = ?", phone, password);
		User u = new User();
		if(ul.size() != 0){
			u = ul.get(0);
			return u;
		}
		return null;
		
	}
	
	public List<User> loadUserList() throws SQLException{
		System.out.println("loaduserlist");
		return dao.queryBySql("select * from [User]");
	}
	public boolean update(User u) throws SQLException{
		return dao.update(u);
	}
	
	public boolean register(User u) throws SQLException{
		return dao.insert(u);
	}
}
