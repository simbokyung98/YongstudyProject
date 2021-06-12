package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yong.service.Service;
import yong.vo.StudyApply;

public class StudyApplyController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("id");
		String application = request.getParameter("application");
		int studykey = Integer.parseInt(request.getParameter("key"));
		int applypeople = Integer.parseInt(request.getParameter("applypeople"));
		int maxpeople = Integer.parseInt(request.getParameter("maxpeople"));
		
		
		String makeuserid = request.getParameter("makeuserid");
		StudyApply studyapplyuser = null;
		
		Service s = Service.getInstance();
		boolean completed = s.comcompleted (studykey, userid);
		
		if(userid.equals(makeuserid)) {
			request.setAttribute("result", "본인이 등록한 스터디에는 참여할 수 없습니다");
		}else {
			if(completed) {
				request.setAttribute("result", "이미 신청한 스터디 입니다");
			}else {
				if(applypeople >= maxpeople) {
					request.setAttribute("result", "스터디 인원이 마감되었습니다");
				}else {
					studyapplyuser = new StudyApply(studykey, userid, application );
					request.setAttribute("result", "스터디 신청을 완료하였습니다");
					
					s.studyapply(studyapplyuser);
				}
				
			}

		}
	
		HttpUtil.forward(request, response,"studylist.do");
		
		
		

	}

}
