package com.shopping.serveice;

import java.util.List;

import com.shopping.BAO.ShoesColorDAO;
import com.shopping.models.ShoesColor;

public class ShoesColorService {

	ShoesColorDAO dao=new ShoesColorDAO();
	public ShoesColor SelectlById(int id)
	{
		return dao.SelectlById(id).get(0);
	}
}
