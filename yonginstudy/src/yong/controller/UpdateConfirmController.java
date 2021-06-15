package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;

public class UpdateConfirmController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String state = request.getParameter("state");
		int key = Integer.parseInt(request.getParameter("key"));
		Service s = Service.getInstance();
		if(state.equals("가능")) {
			s.leturestateupdate(state, key);
		}else if(state.equals("불가능")) {
			s.leturestateupdate(state, key);
		}
		
		HttpUtil.forward(request, response, "adminlecture.do");

	}

}
