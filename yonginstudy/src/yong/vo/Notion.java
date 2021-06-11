package yong.vo;

public class Notion {
	
	private int notionkey;
	private String title;
	private String contents;
	private String file;
	private String notiondate;
	
	public Notion() {}
	
	
	public Notion( String title, String contents, String file) {
		this.title = title;
		this.contents = contents;
		this.file = file;
	}
	public int getNotionkey() {
		return notionkey;
	}
	public void setNotionkey(int notionkey) {
		this.notionkey = notionkey;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getNotiondate() {
		return notiondate;
	}
    public void setNotiondate(String notiondate) {
		this.notiondate = notiondate;
	}
	
	
	
	

}
