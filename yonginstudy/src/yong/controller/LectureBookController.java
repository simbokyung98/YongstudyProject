package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yong.service.Service;
import yong.vo.LectureBook;

public class LectureBookController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("id");
		
		String lecturename = request.getParameter("lecturename");
		String bookdate = request.getParameter("bookdate");
		String[] time = request.getParameterValues("time");
		
		Service s = Service.getInstance();
		LectureBook lectureBook  = null;
		
		for(int i=0;i<time.length;i++) {
			lectureBook = new LectureBook(userid, lecturename, bookdate, time[i]);
			s.lecturebook(lectureBook);
		}
		
		HttpUtil.forward(request, response, "/lectureSearch.do");

	}

}
