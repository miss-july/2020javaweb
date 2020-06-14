package cn.edu.lingnan.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class JDBC {
	
	//澹版槑JDBC瀵硅薄
	public static Connection conn=null;
	public static PreparedStatement ps=null;
	public static ResultSet rs=null;
	
	/**
	 * mysql閫氱敤鐨勫鍒犳敼
	 * @param sql sql璇彞
	 * @param params sql璇彞涓殑?鍙傛暟鏁扮粍
	 * @return 杩斿洖涓�涓猙oolean鍊�
	 */
	public static boolean executeUpdate(String sql,Object[] params) {
		//澹版槑鍙橀噺
		boolean flag=false;
		try {
			//鍒涘缓sql鍛戒护瀵硅薄,缁欏崰浣嶇璧嬪��
			ps=getPreparedStatement(sql,params);
			//鎵цsql
			int index=ps.executeUpdate();
			if(index>0) {
				flag=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBC.closeAll(null, ps, conn);
		}
		return flag;
	}
	
	/**
	 * mysql閫氱敤鐨勭殑鏌ヨ
	 * @param sql 鏌ヨ鐨剆ql璇彞
	 * @param params sql璇彞涓殑鍙傛暟
	 * @return 杩斿洖鏌ヨ缁撴灉
	 */
	
	public static ResultSet executeQuery(String sql, Object[] params) {
		try {
			//鍒涘缓sql鍛戒护瀵硅薄,缁欏崰浣嶇璧嬪��
			ps=getPreparedStatement(sql, params);
			//鎵цsql
			rs=ps.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//杩斿洖缁撴灉
		return rs;
	}
	
	/**
	 * 鍔犺浇椹卞姩 鑾峰彇杩炴帴
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		//鍔犺浇椹卞姩
		Class.forName("com.mysql.jdbc.Driver");
		//鑾峰彇杩炴帴
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/goods","root","root");
		return conn;
	}
	
	/**
	 * 鍏抽棴璧勬簮
	 * @param rs 缁撴灉闆�
	 * @param state sql鍛戒护瀵硅薄
	 * @param conn 閾炬帴瀵硅薄
	 */
	public static void closeAll(ResultSet rs,Statement state,Connection conn) {
		try {
			if(rs!=null)rs.close();
			if(state!=null)state.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 鍒涘缓sql鍛戒护瀵硅薄锛岀粰鍗犱綅绗﹁祴鍊�
	 * @param sql sql璇彞
	 * @param params 鏁板�兼暟缁�
	 * @return 杩斿洖ps瀵硅薄
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public static PreparedStatement getPreparedStatement(String sql,Object[] params)
			throws SQLException, ClassNotFoundException {
		//鍒涘缓sql鍛戒护瀵硅薄
		ps=getConnection().prepareStatement(sql);
		//缁欏崰浣嶇璧嬪�紁s.setString(1, newPwd);
		if(params!=null) {
			for(int i=0;i<params.length;i++) {
				ps.setObject(i+1, params[i]);
			}
		}
		return ps;		
	}
	
	/**
	 * 鏌ヨ鏁版嵁鎬绘暟
	 * @param sql sql璇彞
	 * @return 杩斿洖鏁版嵁鎬绘暟
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static int getTotalCount(String sql) {
		int count=-1;
		try {
			ps=getPreparedStatement(sql,null);
			rs=ps.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally {
			closeAll(rs, ps, conn);
		}
		return count;
	}
}
