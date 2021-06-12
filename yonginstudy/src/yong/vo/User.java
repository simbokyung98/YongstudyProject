package yong.vo;

public class User {
	
	private int userclass;	
	private String id; 			
	private String pwd;			
	private String name;		
	private String major;
	private String phone;
	
	public User() {}
	
	
	public User(int userclass, String id, String pwd, String name, String major, String phone) {
		this.userclass = userclass;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.major = major;
		this.phone = phone;
	}
	
	public int  getUserclass() {
		return userclass;
	}
	public void setUserclass(int  userclass) {
		this.userclass = userclass;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	

}
