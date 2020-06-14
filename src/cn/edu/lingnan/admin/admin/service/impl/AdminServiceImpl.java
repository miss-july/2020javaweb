package cn.edu.lingnan.admin.admin.service.impl;

import java.util.List;

import org.apache.log4j.Logger;

import cn.edu.lingnan.admin.admin.bean.Admin;
import cn.edu.lingnan.admin.admin.dao.AdminDao;
import cn.edu.lingnan.admin.admin.dao.impl.AdminDaoImpl;
import cn.edu.lingnan.admin.admin.service.AdminService;
/**
 * admin模块的业务层的实现类
 * @author Administrator
 *
 */
public class AdminServiceImpl implements AdminService {
	//声明日志对象
	Logger logger=Logger.getLogger(AdminServiceImpl.class);
	//声明AdminDao对象
	AdminDao adminDao=new AdminDaoImpl();
	
	/**
	 * 查询管理员用户
	 * @param adminName
	 * @param adminPwd
	 */
	public Admin findAdminByAdminNameAndAdminPwdDao(String adminName, String adminPwd) {
		return adminDao.findAdminByAdminNameAndAdminPwdDao(adminName, adminPwd);
	}
	public boolean updatelogintimeService(String adminname, String adminpwd,String ip) {
		return adminDao.updatelogintime(adminname, adminpwd,ip);
	}
	public boolean updateexittimeService(String adminname, String adminpwd) {
		return adminDao.updateexittime(adminname, adminpwd);
	}
	public List<Admin> findAllxiaoshouService() {
		// TODO 自动生成的方法存根
		return adminDao.findAllxiaoshou();
	}
	public boolean addxiaoshouService(Admin admin) {
		// TODO 自动生成的方法存根
		return adminDao.addxiaoshou(admin);
	}
	public boolean deletexiaoshouByidService(String id) {
		// TODO 自动生成的方法存根
		return adminDao.deletexiaoshouByid(id);
	}
	public boolean resetxiaoshouService(Admin admin1) {
		// TODO 自动生成的方法存根
		return adminDao.resetxiaoshou(admin1);
	}
	public Admin loadxiaoshouByidService(String id) {
		// TODO 自动生成的方法存根
		return adminDao.loadxiaoshouByid(id);
	}
	
}
