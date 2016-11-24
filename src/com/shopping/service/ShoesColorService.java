package com.shopping.service;

import java.sql.SQLException;
import com.shopping.DAO.ShoesColorDAO;
import com.shopping.models.ShoesColor;

public class ShoesColorService {

	ShoesColorDAO dao=new ShoesColorDAO();
	public ShoesColor SelectlById(int id) throws SQLException
	{
		return dao.SelectById(id);
	}
}
