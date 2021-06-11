package yong.vo;

public class StudyApply {
	private int applykey;
	private int studykey;
	private String userid;
	private String applocation;
	
	public StudyApply() {}
	
	public StudyApply( int studykey, String userid, String applocation) {

		this.studykey = studykey;
		this.userid = userid;
		this.applocation = applocation;
	}

	public int getApplykey() {
		return applykey;
	}

	public void setApplykey(int applykey) {
		this.applykey = applykey;
	}

	public int getStudykey() {
		return studykey;
	}

	public void setStudykey(int studykey) {
		this.studykey = studykey;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getApplocation() {
		return applocation;
	}

	public void setApplocation(String applocation) {
		this.applocation = applocation;
	}
	
	
	
	
}
