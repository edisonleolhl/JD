package com.shopping.service;

import java.sql.SQLException;
import java.util.List;

import com.shopping.DAO.AddrDAO;
import com.shopping.models.addr;

public class addrService {

	AddrDAO dao=new AddrDAO();
	
	public List<addr> sele() throws SQLException{
		return dao.sele();		
	}
}
