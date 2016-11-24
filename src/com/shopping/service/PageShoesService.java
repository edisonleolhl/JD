package com.shopping.service;


import java.sql.SQLException;

import com.shopping.DAO.ShoesDAO;
import com.shopping.models.PageBean;

public class PageShoesService {

	ShoesDAO dao = new ShoesDAO();
	public PageBean queryByPage(int pageSize,int currentPage,String input) throws SQLException{
		return dao.queryByPage(pageSize, currentPage,input);
	}
}
