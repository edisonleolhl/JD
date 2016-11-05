package com.shopping.serveice;


import com.shopping.BAO.ShoesInfoDAO;
import com.shopping.models.ShoesInfo;

public class ShoesInfoService {

	ShoesInfoDAO dao=new ShoesInfoDAO();
	public ShoesInfo queryByid(int id)
	{
		return dao.queryById(id);
	}
}
