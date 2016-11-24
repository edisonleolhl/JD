package com.shopping.service;


import java.sql.SQLException;

import com.shopping.DAO.ShoesInfoDAO;
import com.shopping.models.ShoesInfo;

public class ShoesInfoService {

	ShoesInfoDAO dao=new ShoesInfoDAO();
	public ShoesInfo queryByid(int id) throws SQLException
	{
		return dao.queryById(id);
	}
}
