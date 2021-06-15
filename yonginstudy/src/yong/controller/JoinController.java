package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;
import yong.vo.User;

public class JoinController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		int userclass = Integer.parseInt(request.getParameter("userclass"));
		String major = request.getParameter("major");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		String update = request.getParameter("update");
		
		User user = new User(userclass, id, pwd, name, major, phone); 		
		Service s = Service.getInstance();
		String path = null;
		
		if(update != null) {
			s.update(user);
			path = "userinfo.do?job=all";
		}else {
			s.join(user);
			path = "/login.jsp";
		}
		
		
		
	
		
		
		HttpUtil.forward(request, response, path);
		

	}

}
