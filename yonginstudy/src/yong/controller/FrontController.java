package yong.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	
	HashMap<String, Controller> map = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		map = new HashMap<String, Controller>();
		map.put("/login.do", new LoginController());
		map.put("/join.do", new JoinController());
		map.put("/Logout.do", new LogoutController());
		map.put("/lectureSearch.do", new LectureSearchController());
		map.put("/lecturedetail.do", new LectureDetailController());
		map.put("/lecturebook.do", new LectureBookController());
		map.put("/studywrite.do", new StudyWriteController());
		map.put("/studylist.do", new StudyListController());
		map.put("/studyview.do", new StudyViewController());
		map.put("/studyapply.do", new StudyApplyController());
		map.put("/notionwrite.do", new NotionWriteController());
		map.put("/notionlist.do", new NotionListController());
		map.put("/notionview.do", new NotionViewController());
		map.put("/userlecture.do", new UserLectureController());
		map.put("/userinfo.do", new UserInfoController());
		map.put("/userstudy.do", new UserStudyController());
		map.put("/usercancelstudy.do", new UserCancelStudyController());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String path = uri.substring(contextPath.length());
		
		Controller cont = map.get(path);
		cont.execute(req, resp);
	}

}
