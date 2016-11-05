package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.GoodAppraise;
import com.shopping.models.ShoesColor;

public class GoodAppraiseDAO extends databaseBAO {

	public List<GoodAppraise> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql, objects);
		try {
			List<GoodAppraise> list = new ArrayList<GoodAppraise>();
			GoodAppraise sh = new GoodAppraise();
			while(rs.next()){
				sh = new GoodAppraise();
				sh.setGoodid(rs.getInt("Goodid"));
				sh.setShoesid(rs.getInt("ShoesId"));
				sh.setGoodtype(rs.getString("Goodtype"));
				sh.setGooddesc(rs.getString("GoodDesc"));
				sh.setUseraccount(rs.getString("useraccount"));
				sh.setGoodtime(rs.getDate("goodtime"));
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
	
	public List<GoodAppraise> SelectlById(int id)
	{
		String sql="select * from GoodsAppraise where ShoesId=?";
		return this.queryBySql(sql, id);
	}
	
}
