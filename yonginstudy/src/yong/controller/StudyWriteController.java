package yong.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import yong.service.Service;
import yong.vo.Study;

import com.oreilly.servlet.MultipartRequest;

public class StudyWriteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		
		ServletContext context =  request.getSession().getServletContext();
		String realFolder = context.getRealPath("img");
		
		

		MultipartRequest multi = new MultipartRequest( request, realFolder,  1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
												

		String img = multi.getFilesystemName("img");
		String title = multi.getParameter("title");
		String user = multi.getParameter("user");
		String major = multi.getParameter("major");
		String location = multi.getParameter("location");
		String contents = multi.getParameter("contents").replaceAll("\r\n", "<br/>");
		
		int maxpeople = Integer.parseInt(multi.getParameter("maxpeople"));
		
		Study study = new Study(title, user, major, maxpeople, location, img, contents);
		
		Service s = Service.getInstance();
		s.studywrite(study);
		
		HttpUtil.forward(request, response, "studylist.do");
		

		
	}

}
