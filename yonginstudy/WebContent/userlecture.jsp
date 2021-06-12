<%@page import="yong.vo.LectureBook"%>
<%@page import="yong.vo.Lecture"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
	#userlecture_main{
		width: 1200px;
		height: 100%;
		clear: left;
	}
	#userlecture_aside{
		float: left;
		width: 20%;
		height: 500px;
		background: rgba(231,228,221);
		padding: 40px 0 0 20px;
		margin-bottom: 100px;
	}
	.userle_asti{
		margin-bottom: 30px;
	}
	.userle_asti h2{
		font-family: 'ELAND_Choice_B';
		color: #66865C;
		font-size: 30px;
	}
	.userle_asmenu{
		margin: 0 0 30px 10px;
	}
	.userle_asmenu a:link , .userle_asmenu a:active, .userle_asmenu a:visited{
		text-decoration: none;
		color: gray;
		font-family: 'ELAND_Choice_L';
	}
	.userle_asmenu a:hover{
		color: black;
	}
	
	
	#userlecture_section{
		float: left;
		width: 70%;
		margin-left: 40px;
		height: 100%;
	}
	#userlecturer_h2{
		font-family: 'ELAND_Choice_B';
		color: #66865C;
		font-size: 30px;
		border-bottom: 3px solid #66865C;
		margin-bottom: 30px;
		width: 150px;
		float: left;
		text-align: center;
	}
	#userlecture_table{
		width: 100%;
	}
	.userle_factorwrap{
		width: 800px;
		height: 70px;
		border: 1px solid #cccccc;
		border-radius: 5px;
		margin-bottom: 10px;
	}
	.userle_li{
		float: left;
	}
	.userle_img{
		width: 50px;
		height: 50px;
		margin: 10px;
	}
	.userle_tatitel{
		width: 360px;
		margin-top: 20px;
	}
	.userle_taliti{
		font-family: 'ELAND_Choice_B';		
		font-size:16px; 
	}
	.usuerle_taliloca{
		font-size: 12px; 
		color: #cccccc;
		font-family: 'ELAND_Choice_L';
		margin-top: 5px;
	}
	.usl_date{
		margin: 25px 40px 0 0;
		font-family: 'ELAND_Choice_L';
		font-size: 18px;
	}
	.usl_time{
		margin-top: 10px;
		width: 120px;
		font-family: 'ELAND_Choice_L';
		font-size: 14px;
	}
	.usl_time_ul{
		float: left;
		margin-left: 10px;
	}
	.usl_how{
		margin-top: 22px;
	}
	.usl_how span{
		background: #66865C;
		padding: 10px 15px;
		color: white;
		font-family: 'ELAND_Choice_L';
	}
	#userlecture_tr{
		width: 800px;
	}
	#useleth_title{
		padding: 0 300px 10px 30px;
		width: 120px;
		color: #66865C;
	}
	#useleth_date{
		padding-right: 8px;
		color: #66865C;
	}
	#useleth_time, #useleth_how{
		color: #66865C;
	}
	#noreserva_td{
		text-align: center;
		height: 100px;
		font-family: 'ELAND_Choice_L';
		font-size: 20px;
		color: gray;
		border: 1px solid #cccccc;
		border-radius: 5px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="userlecture_main">
		<aside id="userlecture_aside">
				<ul>
					<li class="userle_asti"><h2>마이페이지</h2></li>
					<li class="userle_asmenu"><a href="userlecture.do">강의실예약</a></li>
					<li class="userle_asmenu"><a href="userstudy.do">스터디</a></li>
					<li class="userle_asmenu"><a href="userinfo.do">개인정보</a></li>
				</ul>
		</aside>
		<section id="userlecture_section">
			<h2 id="userlecturer_h2">강의실 예약</h2>
			<table id="userlecture_table">
				<thead >
					<tr id="userlecture_tr">
						<td id="useleth_title">강의실</td>
						<td id="useleth_date">날짜</td>
						<td id="useleth_time">시간</td>
						<td id="useleth_how">현황</td>
					</tr>
				</thead>
				<tbody>
				<%
						ArrayList<Lecture> lectures = (ArrayList<Lecture>)request.getAttribute("lectures");
						ArrayList<LectureBook> lectureBooks = (ArrayList<LectureBook>)request.getAttribute("lectureBooks");
						
							if(!lectures.isEmpty()){
								
								for(int i=0;i<lectures.size();i++){
									Lecture lecture = lectures.get(i);
									LectureBook lectureBook = lectureBooks.get(i);
				%>	
									<tr>
										<td colspan="4">
											<div class="userle_factorwrap">
												<ul>
													<li class="userle_li"><img alt="거울강의실1" src="img/<%=lecture.getImg() %>" class="userle_img"></li>
													<li class="userle_li userle_tatitel">
														<ul>
															<li class="userle_taliti"><%=lecture.getTitle() %></li>
															<li class="usuerle_taliloca">장소 : <%=lecture.getCollege() %></li>
														</ul>
													</li>
													<li class="userle_li usl_date"><%=lectureBook.getBookdate() %></li>
													<li class="userle_li usl_time">
														
														<%
															ArrayList<LectureBook> lecturetimes = (ArrayList<LectureBook>)request.getAttribute(lecture.getTitle());
															if(!lecturetimes.isEmpty()){
																if(lecturetimes.size()<=3){
														%>
																	<ul class="usl_time_ul">
														<% 			
																	for(int j=0;j<lecturetimes.size();j++){
																		LectureBook lecturetime = lecturetimes.get(j);
														%>	
																		<li><%=lecturetime.getBooktime() %></li>
														<% 				
																		
																	}
														%>	
																	</ul>
																	
														<% 
																}else{
														%>
																	<ul class="usl_time_ul">	
														<% 			
																	for(int a=0;a<3;a++){
																		LectureBook lecturetime = lecturetimes.get(a);
														%>	
																		<li><%=lecturetime.getBooktime() %></li>
														<% 				
																	}	
														%>
																	</ul>
																	<ul class="usl_time_ul">
														<%
																	for(int b=3;b<lecturetimes.size();b++){
																		LectureBook lecturetime = lecturetimes.get(b);
														%>	
																			<li><%=lecturetime.getBooktime() %></li>
														<% 				
																	}
														%>
																	</ul>
														<% 
																}
															}
														%>
														</ul>
														
														
													</li>
													<li class="userle_li usl_how"><span>
														<%
															if(lectureBook.getConfirm() == null){
														%>
																대기
														<% 		
															}else{
														%>
																<%=lectureBook.getConfirm() %>
														<% 			
																
															}
														%>
													</span></li>
												</ul>
											</div>
										</td>
									</tr>							
				<%
								}
							}else{
				%>	
									<tr>
										<td colspan="4" id="noreserva_td">강의실 예약 결과가 없습니다</td>
									</tr>
				<% 				
							}
				%>
					
					
				</tbody>
			</table>
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>

</body>
</html>