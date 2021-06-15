package yong.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yong.service.Service;
import yong.vo.Lecture;
import yong.vo.LectureBook;

public class UserLectureController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("id");
		
		Service s = Service.getInstance();
		
		ArrayList<Lecture> lectures = s.userlectureA(userid);
		request.setAttribute("lectures", lectures);
		
		ArrayList<LectureBook> lectureBooks = s.userlectureB(userid);
		request.setAttribute("lectureBooks", lectureBooks);
		
		ArrayList<LectureBook> lecturetimes = null;
		for(int i=0;i<lectures.size();i++) {
			LectureBook lectureBook = lectureBooks.get(i);
			Lecture lecture = lectures.get(i);
			lecturetimes = s.userlecturetime(lecture.getTitle(), lectureBook.getBookdate());
			
			request.setAttribute(lecture.getTitle(), lecturetimes);
		}
		
		
			
		HttpUtil.forward(request, response, "/userlecture.jsp");
		
		
		

	}

}
