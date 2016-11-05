package com.shopping.BAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shopping.models.PageBean;

import com.shopping.models.Shoes;

public class ShoesDAO extends databaseBAO {

	public List<Shoes> queryBySql(String sql,Object...objects){
		ResultSet rs = super.qureall(sql, objects);
		try {
			List<Shoes> list = new ArrayList<Shoes>();
			Shoes sh = new Shoes();
			while(rs.next()){
				sh = new Shoes();
				sh.setShoesid(rs.getInt("ShoesId"));
				sh.setShoesname(rs.getString("ShoesName"));
				sh.setShoescount(rs.getInt("Shoescount"));
				sh.setShoesprice(rs.getDouble("ShoesPrice"));
				sh.setShoesdesc(rs.getInt("Shoesdesc"));
				sh.setShoesimg(rs.getString("ShoesImg"));
				sh.setShoesbrand(rs.getString("Shoesbrand"));
				sh.setShoesroom(rs.getString("Shoesroom"));
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
	
	public List<Shoes> SelectlById(int id)
	{
		String sql="select * from Shoes where ShoesId=?";
		return this.queryBySql(sql,id);
	}
	
	public boolean UpdateCount(int amount,int id)
	{
		String sql="update Shoes set Shoescount=Shoescount-? where ShoesId=?";
		return super.update(sql,amount,id);
	}
	
	public PageBean queryByPage(int pageSize,int currentPage,String input){
		//查询总记录数
		String sqlCount = "select count(1) from Shoes where 1=1 ";
		if(input != null){
			sqlCount += " and ShoesName like '%" + input + "%' ";
		}
		
		int count = Integer.parseInt(super.queryByUnique(sqlCount).toString());
		
		if(currentPage<1){
			currentPage=1;
		}
		
		int pageCount = count%pageSize!=0?count/pageSize+1:count/pageSize;
		if(currentPage>=pageCount){
			currentPage=pageCount;
		}
		
		//查询每页相关的数据
		String sqlPage = "select top "+ pageSize +" * " +
			" from Shoes where 1=1 ";

		if(input != null){
			sqlPage += " and ShoesName like '%" + input + "%' ";
		}
		sqlPage +=" and ShoesId not in " +
			" (select top " + (pageSize*(currentPage-1)) + " ShoesId from Shoes where 1=1 ";
		if(input != null){
			sqlPage += " and ShoesName like '%" + input + "%' ";
		}
		sqlPage += " order by ShoesId)" +
			" order by ShoesId";
		
		List<Shoes> date = this.queryBySql(sqlPage);
		
		//封装pageBean
		PageBean page = new PageBean(currentPage,pageSize,count,date);
		
		return page;
	}

	
}
