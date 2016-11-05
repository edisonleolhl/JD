package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.Address;
import com.shopping.models.GoodAppraise;
import com.shopping.models.addr;

public class AddressDAO extends databaseBAO {

	public List<Address> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql, objects);
		try {
			List<Address> list = new ArrayList<Address>();
			Address sh = new Address();
			while(rs.next()){
				sh = new Address();
				sh.setAddressid(rs.getInt("addressid"));
				sh.setUseraccount(rs.getString("useraccount"));
				sh.setProvincial(rs.getString("provincial"));
				sh.setCity(rs.getString("city"));
				sh.setArea(rs.getString("area"));
				sh.setReName(rs.getString("rename"));
				sh.setPhone(rs.getString("phone"));
				list.add(sh);
			}
			
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			super.closeAll(rs);
		}
		return null;
	}

	public List<Address> SelsectAll(String UserAccount)
	{
		String sql="select * from address where UserAccount=?";
		return this.queryBySql(sql,UserAccount);
	}
	
	public boolean insert(Address ad)
	{
		String sql="insert dbo.Address values(?,?,?,?,?,?)";
		return super.update(sql, ad.getUseraccount(),ad.getProvincial(),ad.getCity(),ad.getArea(),ad.getReName(),ad.getPhone());
	}
	
	public Address SelectById(int id)
	{
		String sql="select * from address where addressid=?";
		return this.queryBySql(sql,id).get(0);
	}
	
	
}
