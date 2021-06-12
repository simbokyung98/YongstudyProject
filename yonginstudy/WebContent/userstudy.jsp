<%@page import="yong.vo.StudyApply"%>
<%@page import="yong.vo.User"%>
<%@page import="yong.vo.Study"%>
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
	.userst_asti{
		margin-bottom: 30px;
	}
	.userst_asti h2{
		font-family: 'ELAND_Choice_B';
		color: #66865C;
		font-size: 30px;
	}
	.userst_asmenu{
		margin: 0 0 30px 10px;
	}
	.userst_asmenu a:link , .userst_asmenu a:active, .userst_asmenu a:visited{
		text-decoration: none;
		color: gray;
		font-family: 'ELAND_Choice_L';
	}
	.userst_asmenu a:hover{
		color: black;
	}
	
	
	#userpage_section{
		float: left;
		width: 70%;
		margin-left: 40px;
		height: 100%;
	}
	#userpage_h2{
		font-family: 'ELAND_Choice_B';
		color: #66865C;
		font-size: 30px;
		border-bottom: 3px solid #66865C;
		margin-bottom: 30px;
		width: 150px;
		text-align: center;
	}
	.userstudywr_table{
		width: 800px;
		border-collapse: collapse;
		margin-bottom: 100px;
	}
	.userstudywr_table th{
		background:#66865C;
		height: 50px; 
		font-family: 'ELAND_Choice_L';
		color: white;
		font-size: 20px;
		text-align: center;
	}
	.ustuth_start{
		border-radius: 5px 0 0 0; 
		width: 300px;
	}
	.ustuth_end{
		border-radius: 0 5px 0 0; 
	}
	.ustumain_tr td{
		height: 50px;
		text-align: center;
		font-family: 'ELAND_Choice_L';
		border-bottom: 1px solid #cccccc;
		font-size: 18px;
	}
	.sutumain_but{
		border: 0;
		background: white;
	}
	.ustsub_tr td{
		background: #cccccc;
		font-family: 'ELAND_Choice_L';
		text-align: center;
		height: 40px;
	}
	.ustcheck_tr td{
		height: 50px;
		text-align: center;
		border-bottom: 2px solid #bbbbbb;
		font-family: 'ELAND_Choice_L';
		font-size: 18px;	
	}
	.ustcheck_but{
		border: 0;
		background: rgba(231,228,221);
		color: #66865C;
		font-family: 'ELAND_Choice_L';
		padding: 7px 10px;
		font-size: 18px;
		font-weight: bold;		
	}
	.nonfator_td{
		height: 100px;
		text-align: center;
		font-family: 'ELAND_Choice_L';
		color: gray;
		font-size: 20px;
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
					<li class="userst_asti"><h2>마이페이지</h2></li>
					<li class="userst_asmenu"><a href="userlecture.do">강의실예약</a></li>
					<li class="userst_asmenu"><a href="userstudy.do">스터디</a></li>
					<li class="userst_asmenu"><a href="userinfo.do">개인정보</a></li>
				</ul>
		</aside>
		<section id="userpage_section">
			<div >
				<h2 id="userpage_h2">스터디 등록</h2>
				<table class="userstudywr_table" >
					<thead>
						<tr>
							<th class="ustuth_start">이름</th>
							<th>장소</th>
							<th>인원</th>
							<th class="ustuth_end"></th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<Study> studies = (ArrayList<Study>)request.getAttribute("studies");
							
							if(!studies.isEmpty()){
								for(int i=0;i<studies.size();i++){
									Study study = studies.get(i);
									String applypeople = (String)request.getAttribute(study.getStudykey()+"");
						%>
									<tr class="ustumain_tr">
										<td><%=study.getTitle() %></td>
										<td><%=study.getLocation() %></td>
										<td><%=applypeople %>/<%=study.getMaxpeople() %></td>
										<td><button class="sutumain_but"><img alt="" src="img/open.png" style="width: 20px; height: 20px;"> </button> </td>
									</tr>
									
						<% 			
									ArrayList<User> users = (ArrayList<User>)request.getAttribute("users"+i);
									ArrayList<StudyApply> applies = (ArrayList<StudyApply>)request.getAttribute("applies"+i);
									if(!users.isEmpty()){
										for(int j=0;j<users.size();j++){
											User user = users.get(j);
											StudyApply apply = applies.get(j);
										
						%>
											<tr class="ustsub_tr">
												<td><%=user.getName() %></td>
												<td><%=user.getMajor() %></td>
												<td><%=user.getPhone() %></td>
												<td><%=apply.getApplocation() %></td>
											</tr>
						<% 
										}
									}
								}
							}else{
						%>
							<tr>
								<td colspan="4" class="nonfator_td">스터디를 등록해 보세요!</td>
							</tr>
						<%		
							}
						%>
						
					</tbody>
				</table>
			</div>
			<div>
				<h2 id="userpage_h2">스터디 참여</h2>
				<table class="userstudywr_table">
					<thead>
						<tr>
							<th class="ustuth_start">이름</th>
							<th>스터디장</th>
							<th>인원</th>
							<th class="ustuth_end"></th>
						</tr>
					</thead>
					<tbody>
					<%
						ArrayList<Study> applysuerstudy = (ArrayList<Study>)request.getAttribute("applysuerstudy");
						if(!applysuerstudy.isEmpty()){
							for(int k=0;k<applysuerstudy.size();k++){
								Study study2 = applysuerstudy.get(k);
								String userapplycount = (String)request.getAttribute("userapplycount"+k);
					%>
							<tr class="ustcheck_tr">
								<td><%=study2.getTitle() %></td>
								<td><%=study2.getMajor() %> 용린이</td>
								<td><%=userapplycount %>/<%=study2.getMaxpeople() %></td>
								<td>
								<form action="usercancelstudy.do" method="post">
									<input type="hidden" name="studykey" value="<%=study2.getStudykey()%>">
									<input type="submit" value="취소" class="ustcheck_but">
								</form>
								</td>
							</tr>	
					<%
							}
						}else{
					%>
							<tr>
								<td colspan="4"  class="nonfator_td">스터디에 참여해보세요!</td>
							</tr>
					<% 		
						}
					%>
						
						
					</tbody>
				</table>
			</div>
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>

</body>
</html>