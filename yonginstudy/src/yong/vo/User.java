package yong.vo;

public class User {
	
	private int userclass;	//ȸ�� �й�
	private String id; 			//ȸ�� ���̵�
	private String pwd;			//ȸ�� ��й�ȣ
	private String name;		//ȸ�� �̸�
	private String major;		//ȸ�� �а�
	
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
