package yong.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;
import yong.vo.Notion;

public class NotionViewController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String key = request.getParameter("key");
		Service s = Service.getInstance();
		Notion notion = s.notionview(key);
		
		request.setAttribute("notion", notion);
		HttpUtil.forward(request, response, "/notionview.jsp");

	}

}
