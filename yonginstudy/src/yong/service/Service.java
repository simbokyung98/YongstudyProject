package yong.service;

import java.util.ArrayList;

import yong.dao.YongDao;
import yong.vo.Lecture;
import yong.vo.LectureBook;
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
	public void lecturebook(LectureBook lectureBook) {
		dao.lecturebook(lectureBook);
		
	}
	
	public ArrayList<LectureBook> userlectureB(String userid) {
		ArrayList<LectureBook> lectures = dao.userlectureB(userid);
		return lectures;
	}
	public Lecture userlectureA(String leturenaem) {
		 Lecture lecture = dao.userlectureA(leturenaem);
		return lecture;
	}
	public ArrayList<LectureBook> userlecturetime(String lecturename, String bookdate) {
		ArrayList<LectureBook> lecturetimes = dao.userlecturetime(lecturename, bookdate);
		return  lecturetimes;
	}
	public User searchuser(String userid) {
		User user = dao.searchuser(userid);
		return user;
	}
	public ArrayList<Study> userStudySearch(String userid) {
		ArrayList<Study> studies = dao.userStudySearch(userid);
		return studies;
	}
	public ArrayList<User> studyapplyuserU(int studykey) {
		ArrayList<User> users = dao.studyapplyuserU(studykey);
		return users;
	}
	public ArrayList<StudyApply> studyapplyuserA(int studykey) {
		ArrayList<StudyApply> applies = dao.studyapplyuserA(studykey);
		return applies;
	}
	public ArrayList<Study> applyuserSearch(String userid) {
		ArrayList<Study> applysuerstudy = dao.applyuserSearch(userid);
		return applysuerstudy;
	}
	public void usercanclestudy(String userid, String studykey) {
		dao.usercanclestudy(userid,studykey);
		
	}
	public ArrayList<User> searchAlluser() {
		ArrayList<User> users = dao.searchAlluser();
		return users;
	}
	public void update(User user) {
		dao.update(user);
		
	}
	public ArrayList<LectureBook> datecount() {
		ArrayList<LectureBook> lectureBooks = dao.datecount();
		return lectureBooks;
	}
	public ArrayList<LectureBook> lecturelist(String date) {
		ArrayList<LectureBook> lecturelist = dao.lecturelist(date);
		return lecturelist;
	}
	public void leturestateupdate(String state, int key) {
		dao.leturestateupdate(state, key);
		
	}
	public String findID(int userclass, String name) {
		
		return dao.findID(userclass, name);
	}
	public String findpwd(String id, String name) {
		
		return dao.findpwd(id, name);
	}
	public void updatepwd(String pwd, String userid) {
		dao.updatepwd(pwd, userid);
		
	}
	
	

}
