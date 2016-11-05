package com.shopping.serveice;

import java.util.List;

import com.shopping.BAO.ShoesSizeDAO;
import com.shopping.models.ShoesSize;

public class ShoesSizeService {

	ShoesSizeDAO dao=new ShoesSizeDAO();
	public List<ShoesSize> SelectlAllSize()
	{
		return dao.SelectlById();
	}
}
