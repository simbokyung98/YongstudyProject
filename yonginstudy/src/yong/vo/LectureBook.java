package yong.vo;

public class LectureBook {
	
	private int bookkey;
	private String userid;
	private String lecturename;
	private String bookdate;
	private String booktime;
	private String confirm;
	
	private String count;
	
	public LectureBook() {}
	
	public LectureBook( String userid, String lecturename, String bookdate, String booktime) {
		this.userid = userid;
		this.lecturename = lecturename;
		this.bookdate = bookdate;
		this.booktime = booktime;
	}
	public int getBookkey() {
		return bookkey;
	}
	public void setBookkey(int bookkey) {
		this.bookkey = bookkey;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getLecturename() {
		return lecturename;
	}
	public void setLecturename(String lecturename) {
		this.lecturename = lecturename;
	}
	public String getBookdate() {
		return bookdate;
	}
	public void setBookdate(String bookdate) {
		this.bookdate = bookdate;
	}
	public String getBooktime() {
		return booktime;
	}
	public void setBooktime(String booktime) {
		this.booktime = booktime;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}
	
	
	
	

}
