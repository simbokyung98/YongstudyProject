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
		
		ArrayList<LectureBook> lectureBooks = s.userlectureB(userid);
		request.setAttribute("lectureBooks", lectureBooks);
		
		for(int j=0;j<lectureBooks.size();j++) {
			LectureBook lectureBook1 = lectureBooks.get(j);
			Lecture lecture = s.userlectureA(lectureBook1.getLecturename());
			request.setAttribute(lectureBook1.getLecturename()+j, lecture);
			
			
		}
		
		ArrayList<LectureBook> lecturetimes = null;
		for(int i=0;i<lectureBooks.size();i++) {
			LectureBook lectureBook2 = lectureBooks.get(i);
			lecturetimes = s.userlecturetime(lectureBook2.getLecturename(), lectureBook2.getBookdate());
			request.setAttribute("time"+i, lecturetimes);
			
		}
		
		
		
		
			
		HttpUtil.forward(request, response, "/userlecture.jsp");
		
		
		

	}

}
