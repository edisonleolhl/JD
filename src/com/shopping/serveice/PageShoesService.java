package com.shopping.serveice;


import com.shopping.BAO.ShoesDAO;
import com.shopping.models.PageBean;

public class PageShoesService {

	ShoesDAO dao = new ShoesDAO();
	public PageBean queryByPage(int pageSize,int currentPage,String input){
		return dao.queryByPage(pageSize, currentPage,input);
	}
}
