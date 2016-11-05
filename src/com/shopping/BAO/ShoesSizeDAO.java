package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.ShoesColor;
import com.shopping.models.ShoesSize;

public class ShoesSizeDAO extends databaseBAO {

	public List<ShoesSize> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql, objects);
		try {
			List<ShoesSize> list = new ArrayList<ShoesSize>();
			ShoesSize sh = new ShoesSize();
			while(rs.next()){
				sh = new ShoesSize();
				sh.setId(rs.getInt("SizeId"));
				sh.setShoesSize(rs.getInt("SizeName"));
				
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
	
	public List<ShoesSize> SelectlById()
	{
		String sql="select * from Size";
		return this.queryBySql(sql);
	}
}
