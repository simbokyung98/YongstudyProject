package yong.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yong.service.Service;
import yong.vo.User;

public class UserInfoController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String job = request.getParameter("job");
		String usersearch = request.getParameter("userid");
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("id");
		Service s = Service.getInstance();
		
		String path = null;
		User user = null;
		ArrayList<User> users = null;
		
		if(job.equals("indi")) {
			user = s.searchuser(userid);
			path = "/userinfomation.jsp";
			request.setAttribute("user", user);
		}else if(job.equals("all")){
			users = s.searchAlluser();
			path = "/adminuserlist.jsp";
			request.setAttribute("users", users);
		}else if(job.equals("admin")){
			user = s.searchuser(usersearch);
			path = "/adminuserinfoupdate.jsp";
			request.setAttribute("user", user);
		}
		 
		
		
		HttpUtil.forward(request, response, path);
		

	}

}
