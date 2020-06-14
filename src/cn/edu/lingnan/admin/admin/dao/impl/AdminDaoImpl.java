package cn.edu.lingnan.admin.admin.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.edu.lingnan.admin.admin.bean.Admin;
import cn.edu.lingnan.admin.admin.dao.AdminDao;
import cn.edu.lingnan.category.bean.Category;
import cn.edu.lingnan.user.bean.User;
import cn.edu.lingnan.util.JDBC;
/**
 * admin模块持久层的实现类
 * @author 
 *
 */
public class AdminDaoImpl implements AdminDao {

	/**
	 * 查询管理员
	 * @param adminName
	 * @param adminPwd
	 * @return
	 */
	public Admin findAdminByAdminNameAndAdminPwdDao(String adminName, String adminPwd) {
		//创建jdbc对象
		ResultSet rSet=null;
		//创建sql语句
		String sql="select * from t_admin where adminname=? and adminpwd=?";
		//给占位符赋值
		Object[] params= {adminName,adminPwd};
		//执行sql语句
		rSet=JDBC.executeQuery(sql, params);
		//声明Admin对象
		Admin admin=EncapsulationAdmin(rSet);
		return admin;
	}

	/**
	 * 封装admin信息
	 * @param rSet
	 * @return
	 */
	public Admin EncapsulationAdmin(ResultSet rSet) {
		Admin admin=null;
		try {
			//遍历结果
			if(rSet.next()) {
				admin=new Admin();
				admin.setAdminId(rSet.getString("adminId"));
				admin.setAdminName(rSet.getString("adminname"));
				admin.setAdminPwd(rSet.getString("adminpwd"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
		}	
		return admin;
	}
	
    /**
     * 更新登录时间
     * @param uid
     * @return
     */
     public boolean updatelogintime(String adminName, String adminPwd,String ip) {
    	//创建sql命令
    	 String sql="update t_admin set logintime=?,ip=? where adminname=? and adminpwd=?";
    	 //为占位符赋值
    	 Object[] params= {String.format("%tF %<tT", new Date()),ip,adminName,adminPwd};
    	 //执行sql
    	 return JDBC.executeUpdate(sql, params);
     }
     
     /**
      * 更新退出时间
      * @param uid
      * @return
      */
      public boolean updateexittime(String adminname, String adminpwd) {
     	//创建sql命令
     	 String sql="update t_admin set exittime=? where adminname=? and adminpwd=?";
     	 //为占位符赋值
     	 Object[] params= {String.format("%tF %<tT", new Date()),adminname,adminpwd};
     	 //执行sql
     	 return JDBC.executeUpdate(sql, params);
      }

	public List<Admin> findAllxiaoshou() {
		//创建jdbc对象
		ResultSet rSet=null;
		//创建sql语句
		String sql="select * from t_admin";
		//执行sql语句
		rSet=JDBC.executeQuery(sql, null);
		//遍历结果
		List<Admin> admins=Encapsulation(rSet);
		return admins;
	}
	/**
	 * 封装admin信息到List<admin>
	 * @param rSet
	 * @return
	 */
	public List<Admin> Encapsulation(ResultSet rSet) {
		List<Admin> admins = new ArrayList<Admin>();
		//声明变量
		try {
			while(rSet.next())
			{
				String id=rSet.getString("adminId");
				String name=rSet.getString("adminname");
				String pwd=rSet.getString("adminpwd");
				String logintime=rSet.getString("logintime");
				String exittime=rSet.getString("exittime");
				String ip=rSet.getString("ip");
				Admin admin=new Admin(id, name, pwd, logintime,exittime, ip);
				admins.add(admin);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
		}
		return admins;
	}

	public boolean addxiaoshou(Admin admin) {
		//创建sql语句
		String sql="insert into t_admin(adminId,adminname,adminpwd) values(?,?,?)";
		//给占位股赋值
		Object[] params= {admin.getAdminId(),admin.getAdminName(),admin.getAdminPwd()};
		//执行sql语句
		boolean flag=JDBC.executeUpdate(sql, params);
		return flag;
	}

	public boolean deletexiaoshouByid(String id) {
		//创建sql语句
		String sql="delete from t_admin where adminId=?";
		//给占位股赋值
		Object[] params= {id};
		//执行sql语句
		boolean flag=JDBC.executeUpdate(sql, params);
		return flag;
	}

	public boolean resetxiaoshou(Admin admin1) {
		//创建sql语句
		String sql="update t_admin set adminpwd=? where adminId=?";
		//给占位股赋值
		Object[] params= {admin1.getAdminPwd(),admin1.getAdminId()};
		//执行sql语句
		boolean flag=JDBC.executeUpdate(sql, params);
		return flag;
	}

	public Admin loadxiaoshouByid(String id) {
		//创建jdbc对象
		ResultSet rSet=null;
		//创建sql语句
		String sql="select * from t_admin where adminId=?";
		//给占位符赋值
		Object[] params= {id};
		//执行sql语句
		rSet=JDBC.executeQuery(sql, params);
		//遍历结果
		Admin admin=EncapsulationAdmin1(rSet);
		return admin;
	}
	/**
	 * 对于查询操作，遍历结果的时候，需要封装信息到admin对象中，将封装代码提取出来，供每一个查询的操作使用
	 * @param rSet
	 * @return
	 */
	public Admin EncapsulationAdmin1(ResultSet rSet) {
		//声明变量
		Admin admin=null;
		try {
			//遍历结果
			if(rSet.next()) {
				admin=Encapsulation1(rSet);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBC.closeAll(rSet, JDBC.ps, JDBC.conn);
		}
		//返回结果
		return admin;
	}
	
	/**
	 * 封装
	 * @param rSet
	 * @return
	 */
	public Admin Encapsulation1(ResultSet rSet) {
		//声明变量
		Admin admin=new Admin();
		try {
			admin.setAdminId(rSet.getString("adminId"));
			admin.setAdminName(rSet.getString("adminname"));
			admin.setAdminPwd(rSet.getString("adminpwd"));
			admin.setlogintime(rSet.getString("logintime"));
			admin.setexittime(rSet.getString("exittime"));
			admin.setip(rSet.getString("ip"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
	
}
