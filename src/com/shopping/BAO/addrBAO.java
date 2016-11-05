package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.addr;

public class addrBAO extends databaseBAO{

	
	public List<addr> seleAll(String sql,Object...objects){
		
		ResultSet rs=super.qureall(sql, objects);
		List<addr> list=new ArrayList<addr>();
		try {
			addr addr=null;
			while (rs.next()) {
				addr=new addr();
				addr.setCid(rs.getInt("cid"));
				addr.setCity(rs.getString("city"));
				addr.setArea(rs.getInt("area"));
				list.add(addr);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	
	
	public List<addr> sele(){
		String sql="select * from addr where area=0";
		return this.seleAll(sql);		
	}
}
