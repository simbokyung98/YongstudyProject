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
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		int userclass = Integer.parseInt(request.getParameter("userclass"));
		String major = request.getParameter("major");
		String name = request.getParameter("name");
		
		User user = new User(userclass, id, pwd, name, major); 
		
		Service s = Service.getInstance();
		s.join(user);
		
		HttpUtil.forward(request, response, "/login.jsp");
		

	}

}
