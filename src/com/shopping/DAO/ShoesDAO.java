package com.shopping.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;

import com.shopping.models.PageBean;
import com.shopping.models.Shoes;
import com.shopping.utils.JDBCUtils;

public class ShoesDAO{

	public List<Shoes> queryBySql(String sql,Object...params) throws SQLException{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		return queryRunner.query(sql, new BeanListHandler<Shoes>(Shoes.class), params);
	}
	
	public Shoes SelectById(int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="select * from Shoes where ShoesId=?";
		Object[] params = {id};
		return queryRunner.query(sql, new BeanHandler<Shoes>(Shoes.class), params);
	}
	
	public boolean UpdateAmount(int amount,int id) throws SQLException
	{
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		String sql="update Shoes set shoesAvailableAmount = shoesAvailableAmount - ? where shoesId = ?";
		Object[] params = {amount, id};
		if(queryRunner.update(sql, params) == 1){
			return true;
		}
		else{
			return false;
		}
	}
	
	public PageBean queryByPage(int pageSize,int currentPage,String input) throws SQLException{
		//查询总记录数
		String sqlCount = "select count(1) from Shoes where 1=1 ";
		if(input != null){
			sqlCount += " and shoesName like '%" + input + "%' ";
		}
		
		int count = Integer.parseInt(this.queryByUnique(sqlCount).toString());

		if(currentPage<1){
			currentPage=1;
		}
		
		int pageCount = count%pageSize!=0?count/pageSize+1:count/pageSize;
		if(currentPage>=pageCount){
			currentPage=pageCount;
		}

		System.out.println("count:" + count +"; pageCount:" + pageCount + ";pageSize:" +pageSize);
		System.out.println("currentPage:"+currentPage);
		//查询每页相关的数据
		String sqlPage = "select top "+ pageSize +" * " +
			" from Shoes where 1=1 ";

		if(input != null && !input.equals("")){
			sqlPage += " and shoesName like '%" + input + "%' ";
		}
		sqlPage +=" and shoesId not in " +
			" (select top " + (pageSize*(currentPage-1)) + " shoesId from Shoes where 1=1 ";
		if(input != null && !input.equals("")){
			sqlPage += " and shoesName like '%" + input + "%' ";
		}
		sqlPage += " order by shoesId)" +
			" order by shoesId";
		
		System.out.println(sqlPage);
		
		QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
		
		List<Shoes> data = queryRunner.query(sqlPage, new BeanListHandler<Shoes>(Shoes.class));
		
		//封装pageBean
		PageBean page = new PageBean(currentPage,pageSize,count,data);
		
		return page;
	}

	public Object queryByUnique(String sql,Object...objects) throws SQLException{
		Connection conn=JDBCUtils.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			if (objects != null) {
				for (int i = 0; i < objects.length; i++) {
					if (objects[i] instanceof Date) {

						Date d = (Date) objects[i];
						pstmt.setTimestamp(i + 1, new Timestamp(d.getTime()));
					} else {
						pstmt.setObject(i + 1, objects[i]);
					}
				}
			}
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				return rs.getObject(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			JDBCUtils.release(pstmt, conn);
		}
		return null;
	}
	
}
