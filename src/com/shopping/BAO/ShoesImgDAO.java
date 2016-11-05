package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shopping.models.Shoes;
import com.shopping.models.ShoesImg;

public class ShoesImgDAO extends databaseBAO{
	public Map<Integer,List<String>> queryAllLittleImg(){
		//查询所有鞋子的ID
		String sql = "select shoesid from shoes";
		ResultSet rs = super.qureall(sql,null);
		Map<Integer,List<String>> map = new HashMap<Integer, List<String>>();
		try {
			while(rs.next()){
				String sql1 = "select shoesimg1,shoesimg2,shoesimg3,shoesimg4,shoesimg5,shoesimg6 from shoesimg where shoesid=";
				sql1=sql1 + rs.getInt(1);
				ResultSet rs2 = super.qureall(sql1,null);
				List<String> list = new ArrayList<String>();
				while(rs2.next()){
					for(int j = 1;j<=6;j++){
						if(rs2.getString(j) != null && !rs2.getString(j).equals("")){
							list.add(rs2.getString(j));
						}
					}
				}
				map.put(rs.getInt(1), list);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			super.closeAll(rs);
		}

		return map;
	}
	
	public List<ShoesImg> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql, objects);
		try {
			List<ShoesImg> list = new ArrayList<ShoesImg>();
			ShoesImg sh = new ShoesImg();
			while(rs.next()){
				sh = new ShoesImg();
				sh.setId(rs.getInt("Id"));
				sh.setShoesId(rs.getInt("Shoesid"));
				sh.setShoesimg1(rs.getString("Shoesimg1"));
				sh.setShoesimg2(rs.getString("Shoesimg2"));
				sh.setShoesimg3(rs.getString("Shoesimg3"));
				sh.setShoesimg4(rs.getString("Shoesimg4"));
				sh.setShoesimg5(rs.getString("Shoesimg5"));
				sh.setShoesimg6(rs.getString("Shoesimg6"));
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
	
	public List<ShoesImg> queryById(int id)
	{
		String sql = "select id,Shoesid,shoesimg1,shoesimg2,shoesimg3,shoesimg4,shoesimg5,shoesimg6 from shoesimg where shoesid=?";
		return this.queryBySql(sql, id);
	}
	
}
