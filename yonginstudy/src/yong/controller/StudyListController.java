package yong.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;
import yong.vo.Study;

public class StudyListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String result = (String)request.getAttribute("result");
		Service s = Service.getInstance();
		ArrayList<Study> studies = s.studylist();
		
		for (int i=0;i<studies.size();i++) {
			Study study = studies.get(i);
			String applypeople = s.countapply(study.getStudykey());
			request.setAttribute(study.getStudykey()+"", applypeople);
		}
		
		request.setAttribute("result", result);
		request.setAttribute("studies", studies);
		HttpUtil.forward(request, response, "/studylist.jsp");

	}

}
