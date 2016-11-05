package com.shopping.serveice;

import java.util.List;

import com.shopping.BAO.ShoesDAO;
import com.shopping.models.Shoes;

public class ShoesService {

	ShoesDAO dao=new ShoesDAO();
	
	public Shoes SeleceAll(int id)
	{
		return dao.SelectlById(id).get(0);
	}
	
	public Shoes SelectlById(int id)
	{
		return dao.SelectlById(id).get(0);
	}
	
	public boolean UpdateCount(int amount,int id)
	{
		return dao.UpdateCount(amount,id);
	}
}
