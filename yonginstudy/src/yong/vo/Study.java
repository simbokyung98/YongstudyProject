package yong.vo;

public class Study {
	
	private int studykey;
	private String title;
	private String user;
	private String major;
	private int maxpeople;
	private String location;
	private String img;
	private String contents;
	
	public Study() {}
	
	
	public Study(String title, String user, String major, int maxpeople, String location, String img,
			String contents) {
		this.title = title;
		this.user = user;
		this.major = major;
		this.maxpeople = maxpeople;
		this.location = location;
		this.img = img;
		this.contents = contents;
	}
	
	
	
	public Study(int studykey, String title, String user, String major, int maxpeople, String location, String img,
			String contents) {
		this.studykey = studykey;
		this.title = title;
		this.user = user;
		this.major = major;
		this.maxpeople = maxpeople;
		this.location = location;
		this.img = img;
		this.contents = contents;
	}


	public int getStudykey() {
		return studykey;
	}
	public void setStudykey(int studykey) {
		this.studykey = studykey;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public int getMaxpeople() {
		return maxpeople;
	}
	public void setMaxpeople(int maxpeople) {
		this.maxpeople = maxpeople;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	} 
	
	
	

}
