package com.shopping.serveice;

import java.util.List;

import com.shopping.BAO.addrBAO;
import com.shopping.models.addr;

public class addrService {

	addrBAO dao=new addrBAO();
	
	public List<addr> sele(){
		return dao.sele();		
	}
}
