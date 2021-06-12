package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import yong.service.Service;
import yong.vo.Lecture;

public class LectureDetailController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		String detail = request.getParameter("detail");
		String job = request.getParameter("job");
		Service s = Service.getInstance();
		Lecture lecture = s.lecturedetail(detail);
		
		request.setAttribute("lecture", lecture);
		String path = null;
		if(job.equals("detail")) {
			path = "/lecturedetail.jsp";
		}else if(job.equals("reservation")){
			path = "/lecturereservation.jsp";
			
		}
		
		HttpUtil.forward(request, response, path);
		
		

	}

}
