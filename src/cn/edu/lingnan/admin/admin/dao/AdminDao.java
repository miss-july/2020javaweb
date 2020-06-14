package cn.edu.lingnan.admin.admin.dao;
/**
 * admin模块的持久层
 * @author 
 *
 */

import java.sql.ResultSet;
import java.util.List;

import cn.edu.lingnan.admin.admin.bean.Admin;

public interface AdminDao {
	
	
	
	/**
	 * 查询管理员
	 * @param adminName
	 * @param adminPwd
	 * @return
	 */
	Admin findAdminByAdminNameAndAdminPwdDao(String adminName,String adminPwd);
	
	/**
	 * 封装admin信息
	 * @param rSet
	 * @return
	 */
	Admin EncapsulationAdmin(ResultSet rSet);
	/**
	 * 更新登录时间
	 * @param uid
	 * @return
	 */
	boolean updatelogintime(String adminname, String adminpwd,String ip);
	/**
	 * 更新退出时间
	 * @param uid
	 * @return
	 */
	boolean updateexittime(String adminname, String adminpwd);

	List<Admin> findAllxiaoshou();

	boolean addxiaoshou(Admin admin);

	boolean deletexiaoshouByid(String id);

	boolean resetxiaoshou(Admin admin1);

	Admin loadxiaoshouByid(String id);
	Admin EncapsulationAdmin1(ResultSet rSet);
	Admin Encapsulation1(ResultSet rSet);
	List<Admin> Encapsulation(ResultSet rSet);
}
