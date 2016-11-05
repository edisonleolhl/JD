package com.shopping.serveice;

import java.util.List;
import java.util.Map;

import com.shopping.BAO.ShoesImgDAO;
import com.shopping.models.ShoesImg;

public class ShoesImgService {
	ShoesImgDAO dao = new ShoesImgDAO();
	public Map<Integer,List<String>> queryAllLittleImg()
	{
		return dao.queryAllLittleImg();
	}
	
	public ShoesImg queryById(int id)
	{
		return dao.queryById(id).get(0);
	}
}
