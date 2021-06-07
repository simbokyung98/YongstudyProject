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
		Service s = Service.getInstance();
		Lecture lecture = s.lecturedetail(detail);
		
		request.setAttribute("lecture", lecture);
		
		HttpUtil.forward(request, response, "/lecturedetail.jsp");
		
		

	}

}
