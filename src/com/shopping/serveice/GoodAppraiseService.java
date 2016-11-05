package com.shopping.serveice;

import java.util.List;

import com.shopping.BAO.GoodAppraiseDAO;
import com.shopping.models.GoodAppraise;

public class GoodAppraiseService {

	GoodAppraiseDAO dao=new GoodAppraiseDAO();
	public List<GoodAppraise> queryById(int id)
	{
		return dao.SelectlById(id);
	}
}
