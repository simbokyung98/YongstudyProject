package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;

public class FindController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String job = request.getParameter("job");
		
		int userclass = 0;
		String id = null;
		
		
		String name = request.getParameter("name");
		
		
		
		Service s = Service.getInstance();
		String path = null;
		String searchid = null;
		
		if(job.equals("id")) {
			userclass = Integer.parseInt(request.getParameter("userclass"));
			path = "/idFind.jsp";
			searchid = s.findID(userclass, name);
			request.setAttribute("searchid", searchid);
		}else if(job.equals("pwd")) {
			id = request.getParameter("id");
			path = "/pwdFind.jsp";
			String searchpwd = s.findpwd(id, name);
			request.setAttribute("resultpwd", searchpwd );
		}
		
		
		request.setAttribute("done", "done");
		HttpUtil.forward(request, response, path);
		

	}

}
