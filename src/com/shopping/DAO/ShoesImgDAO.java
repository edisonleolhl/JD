package com.shopping.DAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;

import com.shopping.models.ShoesImg;
import com.shopping.utils.JDBCUtils;

public class ShoesImgDAO{
	public Map<Integer,List<String>> queryAllLittleImg() throws SQLException{
	
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
	
		//查询所有鞋子的ID
		String sql = "select shoesId from shoes";
		List<Integer> shoesIdList = queryRunner.query(sql, new ColumnListHandler<Integer>("shoesId"));
		Map<Integer,List<String>> map = new HashMap<Integer, List<String>>();
	
		for(Integer shoesId : shoesIdList){
			String sql1 = "select * from ShoesImg where shoesId = ?";
			Object[] params = {shoesId};
			ShoesImg shoesImg= queryRunner.query(sql1, new BeanHandler<ShoesImg>(ShoesImg.class), params);
			List<String> shoesImgList = new ArrayList<String>();
			shoesImgList.add(shoesImg.getShoesImg1());
			shoesImgList.add(shoesImg.getShoesImg2());
			shoesImgList.add(shoesImg.getShoesImg3());
			shoesImgList.add(shoesImg.getShoesImg4());
			shoesImgList.add(shoesImg.getShoesImg5());
			shoesImgList.add(shoesImg.getShoesImg6());
			map.put(shoesId, shoesImgList);
		}
		return map;
	}
	
	public List<ShoesImg> queryBySql(String sql,Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<ShoesImg>(ShoesImg.class), params);
	}
	
	public ShoesImg queryById(int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql = "select * from ShoesImg where shoesId= ? ";
		Object[] params = {id};
		return queryRunner.query(sql, new BeanHandler<ShoesImg>(ShoesImg.class), params);
	}
	
}
