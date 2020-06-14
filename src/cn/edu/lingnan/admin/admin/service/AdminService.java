package cn.edu.lingnan.admin.admin.service;

import java.util.List;

import cn.edu.lingnan.admin.admin.bean.Admin;

/**
 * admin模块的业务层
 * @author Administrator
 *
 */

public interface AdminService {
	/**
	 * 查询管理员用户
	 * @param adminName
	 * @param adminPwd
	 */
	Admin findAdminByAdminNameAndAdminPwdDao(String adminName, String adminPwd);
	boolean updatelogintimeService(String adminname, String adminpwd,String ip);
	boolean updateexittimeService(String adminname, String adminpwd);
	List<Admin> findAllxiaoshouService();
	boolean addxiaoshouService(Admin admin);
	boolean deletexiaoshouByidService(String id);
	boolean resetxiaoshouService(Admin admin1);
	Admin loadxiaoshouByidService(String id);
}
