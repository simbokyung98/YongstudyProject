package yong.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;
import yong.vo.Lecture;

public class LectureSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		String job = request.getParameter("job");
		ArrayList<Lecture> lectures = null;
		Service s = Service.getInstance();
		String path = null;

		if (job != null) { 
			lectures = s.eachlecturesearch(job);
			path = "/eachlecturelist.jsp";
		}else{
			lectures = s.lecturesearch();
			path = "/alllecturelist.jsp";
		}
		
		 
		request.setAttribute("job", job);
		request.setAttribute("lectures",lectures);
		HttpUtil.forward(request, response, path );

	}

}
