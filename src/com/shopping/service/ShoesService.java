package com.shopping.service;

import java.sql.SQLException;
import com.shopping.DAO.ShoesDAO;
import com.shopping.models.Shoes;

public class ShoesService {

	ShoesDAO dao=new ShoesDAO();
	
	public Shoes SelectAll(int id) throws SQLException
	{
		return dao.SelectById(id);
	}
	
	public Shoes SelectById(int id) throws SQLException
	{
		return dao.SelectById(id);
	}
	
	public boolean UpdateCount(int amount,int id) throws SQLException
	{
		return dao.UpdateAmount(amount,id);
	}
}
