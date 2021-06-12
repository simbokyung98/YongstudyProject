package yong.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yong.service.Service;
import yong.vo.Study;
import yong.vo.StudyApply;
import yong.vo.User;

public class UserStudyController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("id");
		
		Service s = Service.getInstance();
		ArrayList<Study> studies = s.userStudySearch(userid);
		
		request.setAttribute("studies", studies);
		
		ArrayList<User> users = null;
		ArrayList<StudyApply> applies = null;
		
		for(int i=0;i<studies.size();i++) {
			Study study = studies.get(i);
			users = s.studyapplyuserU(study.getStudykey());
			request.setAttribute("users"+i,users );
			
			applies = s.studyapplyuserA(study.getStudykey());
			request.setAttribute("applies"+i, applies);
			
			String applypeople = s.countapply(study.getStudykey());
			request.setAttribute(study.getStudykey()+"", applypeople);
			
		}
		
		ArrayList<Study> applysuerstudy = s.applyuserSearch(userid);
		request.setAttribute("applysuerstudy", applysuerstudy);
		
		for(int j=0;j<applysuerstudy.size();j++) {
			Study study2 = applysuerstudy.get(j);
			String userapplycount = s.countapply(study2.getStudykey());
			request.setAttribute("userapplycount"+j, userapplycount);
			
		}
		
		
		
		HttpUtil.forward(request, response, "/userstudy.jsp");

	}

}
