package yong.vo;

public class Lecture {
	private String title;
	private String college;
	private String location;
	private String img;
	private Integer maxpeople;
	private Integer count;
	private String category;
	private String detail;
	
	public Lecture(){}
	
	
	public Lecture(String title, String college, String location, String img, Integer maxpeople, Integer count, String category, String detail) {
		super();
		this.title = title;
		this.college = college;
		this.location = location;
		this.img = img;
		this.maxpeople = maxpeople;
		this.count = count;
		this.category = category; 
		this.detail = detail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
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
	public Integer getMaxpeople() {
		return maxpeople;
	}
	public void setMaxpeople(Integer maxpeople) {
		this.maxpeople = maxpeople;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	
	
	
	
}
