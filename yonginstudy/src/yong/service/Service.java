package yong.service;

import java.util.ArrayList;

import yong.dao.YongDao;
import yong.vo.Lecture;
import yong.vo.User;

public class Service {
	private static Service service = new Service();
	private YongDao dao = YongDao.getInstance();
	private Service() {}
	public static Service getInstance() {
		return service;
	}
	public boolean login(String id, String pwd) {
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
	
	

}
