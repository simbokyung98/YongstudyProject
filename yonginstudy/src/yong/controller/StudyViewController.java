package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;
import yong.vo.Study;

public class StudyViewController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String key = request.getParameter("key");
		Service s = Service.getInstance();
		Study study = s.studyview(key);
		String applypeople = s.countapply(study.getStudykey());
		request.setAttribute("applypeople", applypeople);
		request.setAttribute("study", study);
		HttpUtil.forward(request, response, "/studyview.jsp");

	}

}
