<%@page import="yong.vo.Lecture"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0 auto;
		padding: 0;
	}
	#alllecturmain{
		width: 1200px;
		height: 700px;
		positon :relative; 
	}
	#alllectureaside{
		height: 100px;
		text-align: left;
	}
	#ale_h3{
		padding: 30px 0 30px 500px;
		font-family: 'ELAND_Choice_B';
		font-size: 20px;
	}
	#alt_hrefwrap{
		margin: 20px 0 0 210px;
		width: 1200px;
	}
	#alllectureaside li{
		float: left;
		margin-right: 100px;
		font-family: 'ELAND_Choice_L';
	}
	#alt-border{
		border-bottom: 3px solid #064420;
	}
	#alllectureaside a{
		color: gray;
		text-decoration: none;
		font-size: 20px;
	}
	#alllectureaside a:hover{
		font-weight: bold;
		color: #064420;
	}
	.altfactor_wrap{
		width: 250px;
		height: 250px;
		float: left;
		box-shadow: 5px 5px 5px #cccccc;
		background: #dddddd;
		margin: 0 50px 30px 0;
	}
	.alt_img{
		width: 250px;
		height: 150px;
	}
	#alt_sec{
		width: 1200px;
		clear: left;
		padding: 30px;
		height: 600px;
		margin: 0;
	}
	.altf_title{
		font-family: 'ELAND_Choice_B';
		font-size: 20px;
		margin: 10px 0 20px 10px;
	}
	.altf_location{
		font-family: 'ELAND_Choice_L';
		font-size: 15px;
		margin-left: 10px;
	}
	.lec_detail_but:active, .lec_detail_but:visited, .lec_detail_but:link {
		color: black;
	}
	.lec_detail_but:hover {
		color: #66865C;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="alllecturmain">
		<aside id="alllectureaside">
			<div id="ale_h3"><h3>● 강의실 목록 ●</h3></div>
			<div id="alt_hrefwrap">
				<ul>
					<li id="alt-border"><a href="lectureSearch.do">ALL</a></li>
					<li><a href="lectureSearch.do?job=mirror">거울연습실</a></li>
					<li><a href="lectureSearch.do?job=gang">책상형강의실</a></li>
					<li><a href="lectureSearch.do?job=computer">컴퓨터실</a></li>
					<li><a href="lectureSearch.do?job=judo">훈련장</a></li>
				</ul>
			</div>
		</aside>
		<section id="alt_sec">
		<%
		ArrayList<Lecture> lectures = (ArrayList<Lecture>)request.getAttribute("lectures");
			if (!lectures.isEmpty()){
				
				for(int i=0;i<lectures.size();i++){
					Lecture lecture = lectures.get(i);
				
		%>
					<a href="lecturedetail.do?detail=<%=lecture.getDetail()%>" class="lec_detail_but"><div class="altfactor_wrap">
						<div>
							<img alt="mirror" src="img/<%=lecture.getImg()%>" class="alt_img">
						</div>
						<div>
							<div class="altf_title"><%=lecture.getTitle() %></div>
							<div class="altf_location">장소 : <%=lecture.getCollege() %></div>
						</div>	
					</div></a>
		<%	 	}	
			}else{
				out.print("no no");
			}
		%>
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>