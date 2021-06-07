<%@page import="yong.vo.Lecture"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0 auto;
		padding: 0;
	}
	#eflecturmain{
		width: 1200px;
		height: 700px;
		positon :relative; 
	}
	#eflectureaside{
		height: 100px;
		text-align: left;
	}
	#efle_h3{
		padding: 30px 0 30px 500px;
		font-family: 'ELAND_Choice_B';
		font-size: 20px;
	}
	#eflt_hrefwrap{
		margin: 20px 0 0 210px;
		width: 1200px;
	}
	#eflectureaside li{
		float: left;
		margin-right: 100px;
		font-family: 'ELAND_Choice_L';
	}
	#eflt-border{
		border-bottom: 3px solid #064420;
	}
	#eflectureaside a{
		color: gray;
		text-decoration: none;
		font-size: 20px;
	}
	#eflectureaside a:hover{
		font-weight: bold;
		color: #064420;
	}
	.efltfactor_wrap{
		width: 400px;
		height: 400px;
		float: left;
		box-shadow: 5px 5px 5px #cccccc;
		background: #dddddd;
		margin: 0 50px 30px 100px;
	}
	.eflt_img{
		width: 400px;
		height: 300px;
	}
	#eflt_sec{
		width: 1200px; 
		clear: left; 
		padding: 30px;
		height: 600px;
		margin: 0;
	}
	.efltf_title{
		font-family: 'ELAND_Choice_B';
		font-size: 20px;
		margin: 10px 0 20px 10px;
	}
	.efltf_location{
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
<script type="text/javascript">
	window.onload = function(){
		var bor = document.getElementById("#bor").value;
		if (bor == 'mirror'){
			document.getElementById('#mirror').style.borderBottom = "3px solid #064420";
		}
	};
</script>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="eflecturmain">
		<aside id="eflectureaside">
			<div id="efle_h3"><h3>● 강의실 목록 ●</h3></div>
			<div id="eflt_hrefwrap">
				<ul>
					<li><a href="lectureSearch.do">ALL</a></li>
					<li id="mirror"><a href="lectureSearch.do?job=mirror">거울연습실</a></li>
					<li id="gang"><a href="lectureSearch.do?job=gang">책상형강의실</a></li>
					<li id="computer"><a href="lectureSearch.do?job=computer">컴퓨터실</a></li>
					<li id="judo"><a href="lectureSearch.do?job=judo">훈련장</a></li>
				</ul>
			</div>
		</aside>
		<section id="eflt_sec">
		<%
		ArrayList<Lecture> lectures = (ArrayList<Lecture>)request.getAttribute("lectures");
		String job = (String)request.getAttribute("job");
			if (!lectures.isEmpty()){
		
		%>
			<input type="hidden" value="<%=job%>" id="bor">
		<% 		
				for(int i=0;i<lectures.size();i++){
					Lecture lecture = lectures.get(i);
				
		%>
				<a href="lecturedetail.do?detail=<%=lecture.getDetail()%>" class="lec_detail_but"><div class="efltfactor_wrap">
					<div>
						<img alt="mirror" src="img/<%=lecture.getImg()%>" class="eflt_img">
					</div>
					<div>
						<div class="efltf_title"><%=lecture.getTitle() %></div>
						<div class="efltf_location">장소 : <%=lecture.getCollege() %></div>
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