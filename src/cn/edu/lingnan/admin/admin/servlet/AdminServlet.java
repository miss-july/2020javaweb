package cn.edu.lingnan.admin.admin.servlet;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.lingnan.admin.admin.bean.Admin;
import cn.edu.lingnan.admin.admin.service.AdminService;
import cn.edu.lingnan.admin.admin.service.impl.AdminServiceImpl;
import cn.edu.lingnan.category.bean.Category;
import cn.edu.lingnan.user.bean.User;
import cn.edu.lingnan.util.IDGenerator;

/**
 * admin模块的控制层
 * @author 
 *
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//声明AdminService对象
	AdminService adminService=new AdminServiceImpl();
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		//获取操作符
		String oper=req.getParameter("oper");
		//调用操作符对应方法
		if("adminLoginByAdminNameAndAdminPwd".equals(oper)) {
			//调用管理员登录方法
			adminLoginByAdminNameAndAdminPwdServlet(req,resp);
		}else if("adminQuit".equals(oper)) {
			//调用管理员退出的方法
			adminQuitServlet(req,resp);
		}else if("findAllxiaoshou".equals(oper)) {
			//查看销售人员列表的方法
			findAllxiaoshouServlet(req,resp);
		}else if("addxiaoshou".equals(oper)) {
			//添加销售人员的方法
			addxiaoshouServlet(req,resp);
		}else if("deletexiaoshouByid".equals(oper)) {
			//添加销售人员的方法
			deletexiaoshouByidServlet(req,resp);
		}else if("resetxiaoshou".equals(oper)) {
			//添加销售人员的方法
			resetxiaoshouServlet(req,resp);
		}
		else if("loadxiaoshouByid".equals(oper)) {
			//添加销售人员的方法
			loadxiaoshouByidServlet(req,resp);
		}
	}

	private void findAllxiaoshouServlet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//处理请求信息
		List<Admin> adminList=adminService.findAllxiaoshouService();
		//响应处理结果
		if(adminList!=null) {
			req.setAttribute("adminList", adminList);
			req.getRequestDispatcher("/adminjsps/admin/xiaoshou/xiaoshou.jsp").forward(req, resp);
		}
		else {
			req.setAttribute("msg","还没有销售人员的信息");
			req.getRequestDispatcher("/jsps/main.jsp").forward(req, resp);
		}	
	}

	/**
	 * 管理员退出登录
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	private void adminQuitServlet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		Admin admin=(Admin) req.getSession().getAttribute("admin");
		adminService.updateexittimeService(admin.getAdminName(),admin.getAdminPwd());
		//处理请求信息
		req.getSession().invalidate();
		//响应处理结果
		resp.sendRedirect(req.getContextPath()+"/adminjsps/login.jsp");
		return;
	}

	/**
	 * 管理员登录功能方法
	 * @param req
	 * @param resp
	 * @throws IOException
	 * @throws ServletException
	 */
	private void adminLoginByAdminNameAndAdminPwdServlet(HttpServletRequest req, HttpServletResponse resp) 
			throws IOException, ServletException {
		//获取数据
		String adminName=req.getParameter("adminName");
		String adminPwd=req.getParameter("adminPwd");
		//处理请求信息
		Admin admin=adminService.findAdminByAdminNameAndAdminPwdDao(adminName, adminPwd);
		//响应处理结果
		if(admin!=null) {
			adminService.updatelogintimeService(adminName, adminPwd,req.getRemoteAddr());
			adminName=URLEncoder.encode(adminName,"utf-8");
			Cookie cookie=new Cookie("adminname",adminName);
			cookie.setMaxAge(3*24*3600);
			cookie.setPath(req.getContextPath()+"/adminjsps/login.jsp");
			resp.addCookie(cookie);
			req.setAttribute("name", adminName);
			req.getSession().setAttribute("admin", admin);
			if(adminName.equals("guanYu")) {
				resp.sendRedirect(req.getContextPath()+"/adminjsps/admin/index2.jsp");
			}
			else {
			    resp.sendRedirect(req.getContextPath()+"/adminjsps/admin/index.jsp");
			}
			return;
		}else {
			req.setAttribute("msg", "用户名或密码错误");
			req.getRequestDispatcher("/adminjsps/login.jsp").forward(req, resp);
			return;
		}
	}
	
	/**
	 *添加销售人员的方法
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	@SuppressWarnings("unused")
	private void addxiaoshouServlet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		//获取数据
		String id=req.getParameter("adminid");
		String name=req.getParameter("adminname");
		String pwd=req.getParameter("adminpwd");
		//处理请求信息
		Admin admin=new Admin();
		admin.setAdminId(id);
		admin.setAdminName(name);
		admin.setAdminPwd(pwd);
		adminService.addxiaoshouService(admin);
		findAllxiaoshouServlet(req, resp);
		return;
	}
	
	private void deletexiaoshouByidServlet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// 获取数据
		String id=req.getParameter("id");
		//处理请求信息
		adminService.deletexiaoshouByidService(id);
		findAllxiaoshouServlet(req, resp);
			return;
	}
	
	private void resetxiaoshouServlet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		//获取数据
		String id=req.getParameter("id");
		String name=req.getParameter("adminname");
		String pwd=req.getParameter("adminpwd");
		String pwd2=req.getParameter("adminpwd2");
		Admin admin=adminService.findAdminByAdminNameAndAdminPwdDao(name, pwd);
		if(admin!=null) {
			//处理请求信息
			Admin admin1=new Admin();
			admin1.setAdminId(id);
			admin1.setAdminName(name);
			admin1.setAdminPwd(pwd2);
			adminService.resetxiaoshouService(admin1);
			findAllxiaoshouServlet(req, resp);
		}else {
			req.setAttribute("msg", "id或用户名或旧密码错误");
			req.getRequestDispatcher("/adminjsps/admin/xiaoshou/xiaoshou.jsp").forward(req, resp);
			return;
		}
		return;
	}
	/**
	 * 加载信息
	 * @param req
	 * @param resp
	 * @throws IOException 
	 * @throws ServletException 
	 */
	@SuppressWarnings("unused")
	private void loadxiaoshouByidServlet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// 获取数据
		String id=req.getParameter("id");
		//处理请求信息
		Admin admin=adminService.loadxiaoshouByidService(id);
		//响应处理结果
		req.setAttribute("admin", admin);
		req.getRequestDispatcher("/adminjsps/admin/xiaoshou/edit.jsp").forward(req, resp);
		return;
	}

}
