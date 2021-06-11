package yong.service;

import java.util.ArrayList;

import yong.dao.YongDao;
import yong.vo.Lecture;
import yong.vo.Notion;
import yong.vo.Study;
import yong.vo.StudyApply;
import yong.vo.User;

public class Service {
	private static Service service = new Service();
	private YongDao dao = YongDao.getInstance();
	private Service() {}
	public static Service getInstance() {
		return service;
	}
	public String login(String id, String pwd) {
		// TODO Auto-generated method stub
		return dao.login(id,pwd);
	}
	public void join(User user) {
		dao.join(user);
		
	}
	public ArrayList<Lecture> lecturesearch() {
		ArrayList<Lecture> lectures = dao.lecturesearch();
		return lectures;
	}
	public ArrayList<Lecture> eachlecturesearch(String job) {
		ArrayList<Lecture> lectures = dao.eachlecturesearch(job);
		return lectures;
	}
	public Lecture lecturedetail(String detail) {
		Lecture lecture = dao.lecturedetail(detail);
		return lecture;
	}
	public void studywrite(Study study) {
		dao.studywrite(study);
		
	}
	public ArrayList<Study> studylist() {
		ArrayList<Study> studies = dao.studylist(); 
		return studies;
	}
	public Study studyview(String key) {
		Study study = dao.studyview(key);
		return study;
	}
	public void studyapply(StudyApply studyapplyuser) {
		dao.studyapply(studyapplyuser);
		
	}
	public String countapply(int studykey) {
		return dao.countapply(studykey);
	}
	public boolean comcompleted(int studykey, String userid) {
		
		return dao.comcompleted(studykey, userid);
	}
	public void notionwrite(Notion notion) {
		dao.notionwrite(notion);
		
	}
	public ArrayList<Notion> notionlist() {
		ArrayList<Notion> notions = dao.notionlist();
		return notions;
	}
	public ArrayList<Notion> notionsearch(String title) {
		ArrayList<Notion> notions = dao.notionsearch(title);
		return notions;
	}
	public Notion notionview(String key) {
		Notion notion = dao.notionview(key);
		return notion;
	}
	
	

}
