package com.shopping.serveice;

import java.util.List;

import com.shopping.BAO.AddressDAO;
import com.shopping.models.Address;

public class AddressService {

	AddressDAO dao=new AddressDAO();
	public boolean insert(Address ad)
	{
		
		return dao.insert(ad);
	}
	
	public List<Address> SelectAll(String UserAccount)
	{
		return dao.SelsectAll(UserAccount);
	}
	
	public Address SelectById(int id)
	{
		return dao.SelectById(id);
	}
	
}
