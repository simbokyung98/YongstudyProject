package yong.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yong.service.Service;
import yong.vo.Notion;

public class NotionListController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String job = request.getParameter("job");
		
		Service s = Service.getInstance();
		ArrayList<Notion> notions = null;
		
		if(job !=  null) {
			notions= s.notionsearch(title);
			
		}else {
			notions = s.notionlist();
		}
		
		
		
		request.setAttribute("notions", notions);
		HttpUtil.forward(request, response, "/notionmain.jsp");

	}

}
