package com.shopping.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.shopping.DAO.ShoesImgDAO;
import com.shopping.models.ShoesImg;

public class ShoesImgService {
	ShoesImgDAO dao = new ShoesImgDAO();
	public Map<Integer,List<String>> queryAllLittleImg() throws SQLException
	{
		return dao.queryAllLittleImg();
	}
	
	public ShoesImg queryById(int id) throws SQLException
	{
		return dao.queryById(id);
	}
}
