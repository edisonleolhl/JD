package com.shopping.service;

import java.sql.SQLException;
import java.util.List;

import com.shopping.DAO.AddressDAO;
import com.shopping.models.Address;

public class AddressService {

	AddressDAO dao=new AddressDAO();
	public boolean insert(Address ad) throws SQLException
	{
		
		return dao.insert(ad);
	}
	
	public List<Address> SelectAll(String UserAccount) throws SQLException
	{
		return dao.SelectAll(UserAccount);
	}
	
	public Address SelectById(int id) throws SQLException
	{
		return dao.SelectById(id);
	}
	
}
