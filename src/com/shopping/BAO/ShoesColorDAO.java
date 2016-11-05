package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.Shoes;
import com.shopping.models.ShoesColor;

public class ShoesColorDAO extends databaseBAO {

	public List<ShoesColor> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql, objects);
		try {
			List<ShoesColor> list = new ArrayList<ShoesColor>();
			ShoesColor sh = new ShoesColor();
			while(rs.next()){
				sh = new ShoesColor();
				sh.setShoesId(rs.getInt("ShoesId"));
				sh.setColor1(rs.getString("Color1"));
				sh.setColor2(rs.getString("Color2"));
				sh.setColor3(rs.getString("Color3"));
				sh.setColor4(rs.getString("Color4"));
				sh.setColor5(rs.getString("Color5"));
				sh.setColor6(rs.getString("Color6"));
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
	
	public List<ShoesColor> SelectlById(int id)
	{
		String sql="select * from ShoesColor where ShoesId=?";
		return this.queryBySql(sql, id);
	}
}
