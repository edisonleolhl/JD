package com.shopping.service;

import java.sql.SQLException;
import java.util.List;

import com.shopping.DAO.ShoesSizeDAO;
import com.shopping.models.ShoesSize;

public class ShoesSizeService {

	ShoesSizeDAO dao=new ShoesSizeDAO();
	public List<ShoesSize> SelectlAllSize() throws SQLException
	{
		return dao.SelectAll();
	}
}
