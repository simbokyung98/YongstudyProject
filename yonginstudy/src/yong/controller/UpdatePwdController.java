package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;

public class UpdatePwdController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String pwd = request.getParameter("pwd");
		String userid = request.getParameter("userid");
		
		Service s = Service.getInstance();
		s.updatepwd(pwd, userid);
		request.setAttribute("pwdupdate", "비밀번호 변경 완료");
		
		HttpUtil.forward(request, response, "/login.jsp");
		

	}

}
