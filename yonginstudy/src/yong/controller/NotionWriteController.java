package yong.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import yong.service.Service;
import yong.vo.Notion;

public class NotionWriteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context =  request.getSession().getServletContext();
		String realFolder = context.getRealPath("notionfile");
		
		MultipartRequest multi = new MultipartRequest( request, realFolder,  1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
		
		String file = multi.getFilesystemName("file");
		String title = multi.getParameter("title");
		String contents = multi.getParameter("contents").replaceAll("\r\n", "<br/>");
		
		Notion notion = new Notion(title, contents, file);
		Service s = Service.getInstance();
		s.notionwrite(notion);
		
		HttpUtil.forward(request, response, "notionlist.do");

	}

}
