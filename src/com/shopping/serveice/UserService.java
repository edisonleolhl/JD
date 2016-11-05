package com.shopping.serveice;

import java.util.ArrayList;
import java.util.List;

import com.shopping.BAO.UserDao;
import com.shopping.models.User;


public class UserService {
	UserDao dao = new UserDao();
	
	public User loginByAccount(String account, String Userpwd){
		System.out.println("loginbyaccount");
		List<User> ul = new ArrayList<User>();
		ul = dao.queryBySql("select * from [User] where account=? and Userpwd=?", account, Userpwd);
		System.out.println(ul.size());
		User u = new User();
		if(ul.size() != 0){
			u = ul.get(0);
			return u;
		}
		return null;
		
	}
	
	public User loginByPhone(String phone, String Userpwd){
		System.out.println("loginbyphone");
		List<User> ul = new ArrayList<User>();
		ul = dao.queryBySql("select * from [User] where phone=? and Userpwd=?", phone, Userpwd);
		User u = new User();
		if(ul.size() != 0){
			u = ul.get(0);
			return u;
		}
		return null;
		
	}
	
	public List<User> loadUserList(){
		System.out.println("loaduserlist");
		return dao.queryBySql("select * from [User]");
	}
	public boolean update(User u){
		return dao.update(u);
	}
	
	public boolean register(User u){
		return dao.insert(u);
	}
}
