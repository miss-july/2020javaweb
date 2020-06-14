package cn.edu.lingnan.admin.admin.bean;
/**
 * 管理员模块的实体类
 * @author 
 *
 */
public class Admin {
	private String adminId;//主键
	private String adminName;//管理员的登录名
	private String adminPwd;//管理员的登录密码
	private String logintime=null;
	private String exittime=null;
	private String ip=null;
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPwd() {
		return adminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		this.adminPwd = adminPwd;
	}
	public String getlogintime() {
		return logintime;
	}

	public void setlogintime(String logintime) {
		this.logintime = logintime;
	}
	public String getexittime() {
		return exittime;
	}

	public void setexittime(String exittime) {
		this.exittime = exittime;
	}
	public String getip() {
		return ip;
	}

	public void setip(String ip) {
		this.ip = ip;
	}

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName + ", adminPwd=" + adminPwd + 
				", logintime=" + logintime + ", exittime=" + exittime + ", ip=" + ip + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((adminId == null) ? 0 : adminId.hashCode());
		result = prime * result + ((adminName == null) ? 0 : adminName.hashCode());
		result = prime * result + ((adminPwd == null) ? 0 : adminPwd.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Admin other = (Admin) obj;
		if (adminId == null) {
			if (other.adminId != null)
				return false;
		} else if (!adminId.equals(other.adminId))
			return false;
		if (adminName == null) {
			if (other.adminName != null)
				return false;
		} else if (!adminName.equals(other.adminName))
			return false;
		if (adminPwd == null) {
			if (other.adminPwd != null)
				return false;
		} else if (!adminPwd.equals(other.adminPwd))
			return false;
		return true;
	}
	public Admin(String adminId, String adminName, String adminPwd) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminPwd = adminPwd;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(String adminId, String adminName, String adminPwd,String logintime,String exittime, String ip) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminPwd = adminPwd;
		this.logintime=logintime;
		this.exittime=exittime;
		this.ip=ip;
	}
}
