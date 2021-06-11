<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%
		//파일 이름 요청
		String filename = request.getParameter("notionfile");
		
		String filename2 = new String(filename.getBytes("UTF-8"), "8859_1");
													// 유니코드
	
		//해당 파일 자바로 가지고 오기
		File file = new File("D:/moma/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yonginstudy/notionfile/" + filename);
		
		//
		response.setHeader("Content-Disposition", "attachment;filename="+ filename2+";");
		
		//배열에 저장하여 [스트림으로 교환]
		byte[] b = new byte[ (int)file.length()];
		
		if ( file.isFile()) {
			//입력 스트림
			BufferedInputStream fin = new BufferedInputStream(new FileInputStream(file));
			//출력 스트림
			BufferedOutputStream fout = new BufferedOutputStream(response.getOutputStream());
			
			int count; 	// 바이트 단의 수 체크 [바이트 단위로 읽어오는 수]
			
			while( (count =fin.read(b)) != -1){// 입력 스트림의 바이트를 읽고 배열에 저장
				
				fout.write(b, 0, count);
			}
			fout.close();	//출력 스트림 종료
			fin.close();	//입력 스트림 종료
		}	
		
	%>

</body>
</html>