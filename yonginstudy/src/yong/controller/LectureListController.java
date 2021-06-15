package yong.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;
import yong.vo.LectureBook;

public class LectureListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		Service s = Service.getInstance();
		String date = request.getParameter("date");
		

		ArrayList<LectureBook> lecturelist = s.lecturelist(date);
		request.setAttribute("lecturelist", lecturelist );
		
		
		HttpUtil.forward(request, response, "adminlecture.do");
		
		

	}

}
