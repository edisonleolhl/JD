package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.Shoes;
import com.shopping.models.ShoesInfo;

public class ShoesInfoDAO extends databaseBAO{

	public List<ShoesInfo> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql, objects);
		try {
			List<ShoesInfo> list = new ArrayList<ShoesInfo>();
			ShoesInfo sh = new ShoesInfo();
			while(rs.next()){
				sh = new ShoesInfo();
				sh.setShoesId(rs.getInt("shoesId"));
				sh.setShoesInfoImg1(rs.getString("ShoesInfoImg1"));
				sh.setShoesInfoImg2(rs.getString("ShoesInfoImg2"));
				sh.setShoesInfoImg3(rs.getString("ShoesInfoImg3"));
				sh.setShoesInfoImg4(rs.getString("ShoesInfoImg4"));
				sh.setShoesInfoImg5(rs.getString("ShoesInfoImg5"));
				sh.setShoesInfoImg6(rs.getString("ShoesInfoImg6"));
				sh.setShoesInfoImg7(rs.getString("ShoesInfoImg7"));
				sh.setShoesInfoImg8(rs.getString("ShoesInfoImg8"));
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
	
	public ShoesInfo queryById(int id)
	{
		String sql="select * from ShoesInfo where ShoesId=?";
		return this.queryBySql(sql, id).get(0);
	}
}
