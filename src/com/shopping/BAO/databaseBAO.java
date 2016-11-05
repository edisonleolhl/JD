package com.shopping.BAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

public class databaseBAO {

	
		private String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		private String url = "jdbc:sqlserver://localhost:1433;databaseName=JD";
		private String name = "sa";
		private String pw = "liaohaolin";

		private Connection conn;
		private PreparedStatement pstmt;

		private Connection getConn() {
			try {
				Class.forName(driver);

				conn = DriverManager.getConnection(url, name, pw);

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return conn;
		}

		public boolean update(String sql, Object... objects) {
			try {

				getConn();

				pstmt = conn.prepareStatement(sql);

				bindObjects(objects);

				return pstmt.executeUpdate() > 0;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}

		public void closeAll(ResultSet rs) {
			try {
				if (rs != null) {
					rs.close();
				}

				if (pstmt != null) {
					pstmt.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		private void bindObjects(Object... objects) throws SQLException {
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
		}

		
		
	

	public ResultSet qureall(String sql, Object[] objects) {
		// TODO Auto-generated method stub
		

			getConn();
			ResultSet rs;
			try {
				pstmt = conn.prepareStatement(sql);
				bindObjects(objects);

				rs = pstmt.executeQuery();
				return rs;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return null;

		
	}

	//鏌ヨ鍞竴鍊奸�鐢ㄦ柟娉�
		public Object queryByUnique(String sql,Object...objects){
			conn=getConn();
			try {
				pstmt = conn.prepareStatement(sql);
				bindObjects(objects);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()){
					return rs.getObject(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}
	
		
		public double TotalPrice(String sql,Object...objects) {
			// TODO Auto-generated method stub
			

				getConn();
				ResultSet rs;
				double Total=0;
				try {
					pstmt = conn.prepareStatement(sql);
					bindObjects(objects);
					rs = pstmt.executeQuery();
					while(rs.next()){
						Total=rs.getDouble(1);
						return Total;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				return 0;

			
		}
		
	}

	

