package yong.vo;

public class User {
	
	private int userclass;	//회원 학번
	private String id; 			//회원 아이디
	private String pwd;			//회원 비밀번호
	private String name;		//회원 이름
	private String major;		//회원 학과
	
	public User() {}
	
	
	public User(int userclass, String id, String pwd, String name, String major) {
		this.userclass = userclass;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.major = major;
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
	
	

}
