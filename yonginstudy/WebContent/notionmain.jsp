<%@page import="yong.vo.Notion"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#news_main{
		height:1000px;
		width:1200px;
		clear: left;
	}
	#stl_h3{
		width:700px;
		padding: 50px 0 50px 500px;
		font-family: 'ELAND_Choice_B';
		font-size: 25px;
		background: #88A67E;
		color: white;
		letter-spacing: 5px;
		clear: left;
	}
	#stl_h3 h3{
	}
	#news_aside{
		width: 20%;
		float: left;
		margin-top: 50px;	
	}
	.news_title_wrap{
		padding: 20px;
		background: #66865C;
		list-style-type: none;
	}
	.news-title{
		font-family: 'ELAND_Choice_L';
		font-size: 25px;
		letter-spacing: 2px;	 
		color: white; 
	}
	.news-ul{
		 font-family: 'ELAND_Choice_L';
		font-size: 20px;
	}
	.news_img_wrap {
		text-align: center;
		padding: 30px 0 30px 0;
		border: 1px solid #dddddd;
		list-style-type: none;
	}
	.news_list_wrap{
		border: 1px solid #dddddd;
		padding: 15px 0 15px 10px;
		list-style-type: none;
	}
	.news-ul span{
		float: right;
		margin-right: 15px;
	}
	.news-ul a:link, .news-ul a:visited, .news-ul a:active{
		text-decoration: none;
		color: black;
	}
	.news-ul a:hover{   
		color: black;
		font-weight: bold;
	} 



	#news_section{
		width: 79%;
		float: left;
		margin-top: 50px; 
	}
	#notion_title_wrap{
		width: 850px;
		margin-bottom: 20px;
	}
	#notion_spanB{
		 font-family: 'ELAND_Choice_B';
		 font-size: 35px;
		 padding-right:20px ;
	}
	#notion_searchwrap{
		float: right;
		width: 370px;
		height: 40px;
		border: 3px solid #66865C;
		margin: 0;
	}
	#nosear_text{
		width: 300px;
		height: 40px;
		font-family: 'ELAND_Choice_L';
		padding-left: 10px;
		margin: 0;
		float: left;
		border: 0;
	}
	#nosear_text:focus{outline: none;}
	#nosear_but{
		width: 50px;
		height: 40px;
		background: #66865C;
		color: white;
		border:0;
		font-family: 'ELAND_Choice_B';
		float: right;
		
	}
	#notion_spanL{
		 font-family: 'ELAND_Choice_L';
		color:#aaaaaa; 
	}
	#notion_btn{
		width: 850px;
		margin: 20px 0 0 0;
		text-align: right;
	}
	.notion_table{
		width: 850px;
		border-top: 2px solid #66865C;
		border-collapse: collapse;
		
	}
	.notion_table_thead{
		border-bottom: 1px solid gray;
	}
	.notion_table_th{
		 font-family: 'ELAND_Choice_L';
		padding: 20px 0 20px 0; 
		border-bottom: 1px solid gray;
	}
	.notion_table_a:hover{
		background: gray;
	}
	.notion_table_tb{
		border-bottom: 1px solid #dddddd;
		 font-family: 'ELAND_Choice_L';
	}
	.tb1, .tb3, .tb4, .tb5{
		text-align: center;
		padding: 20px 0 20px 0;
	}
	.tb2, .th2{
		padding: 20px 0 20px 70px; 
	}
	.tb2 a:active, .tb2 a:link, .td2 a:visited {
		text-decoration: none;
		color: black; 
	}
	.tb2 a:hover { 
		text-decoration: underline;
		font-weight: bold;
	}
	.notionw_btn:active, .notionw_btn:link, .notionw_btn:visited {
		background: #66865C;
		padding: 10px 20px 10px 20px;
		border-radius: 2px;
		text-decoration: none;
		font-family: 'ELAND_Choice_L';
		font-weight: bold;
		font-size: 18px;
		color: white;
		letter-spacing: 2px;	
			
	}
	#notsearch{
		text-align: center;
		height: 50px;
		padding: 50px 0 ;	
		font-family: 'ELAND_Choice_L';
		border-bottom: 2px solid #66865C;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="news_main">
	<div id="stl_h3"><h3>공지사항</h3></div>
	<aside id="news_aside">	
			<ul class="news-ul">
				<li class="news_title_wrap"><h4 class="news-title">커뮤니티</h4></li>  
				<li class="news_img_wrap"><img alt="용인대마크" src="img/yongcha.jpg" style="width: 150px;height: 150px;"><p>용린이를 위한 고객센터</p> </li>
				<li class="news_list_wrap"><a href="notionlist.do" class="news-li" style="font-weight: bold;color: #66865C;">공지사항<span>></span></a></li>
				<li class="news_list_wrap"><a href="question.jsp" class="news-li">Q&A<span>></span></a></li>
			</ul>	
		</aside>
		<section id="news_section">
			<div id="notion_title_wrap">
				<span id="notion_spanB">공지사항</span><span id="notion_spanL">Yong 스터디 공지사항</span>
				<div id="notion_searchwrap">
					<form action="notionlist.do" method="post">
						<input type="text"  id="nosear_text" placeholder="제목으로 검색하여 주세요" name="title" >
						<input type="hidden" name="job" value="search" >
						<input type="submit" id="nosear_but" value="검색">
					</form>
				</div>
			</div>
			<div id="notion_box">
							<table class="notion_table">
								<thead class="notion_table_thead">
									<tr>
										<th class="notion_table_th">번호</th>
										<th class="notion_table_th th2">제목</th>
										<th class="notion_table_th">작성일</th>
									</tr>
								</thead>
								<tbody class="notion_table_tbody">
									<%
										ArrayList<Notion> notions = (ArrayList<Notion>)request.getAttribute("notions");
										if(!notions.isEmpty()){
											for(int i=0;i<notions.size();i++){
												Notion notion = notions.get(i);
											
									%>
												<tr> 
													<td class="notion_table_tb tb3"><%=notion.getNotionkey() %></td>
													<td class="notion_table_tb tb2"><a href="notionview.do?key=<%=notion.getNotionkey() %>"><%=notion.getTitle() %></a></td>
													<td class="notion_table_tb tb4"><%=notion.getNotiondate() %></td>
												</tr>

									<% 		
											}
										}else{
									%>
											
										<tr>
											<td colspan="3" id="notsearch">검색 결과가 없습니다!</td>
										</tr>		
									<%	
										}
									%>
									
								</tbody>
							</table>
					</div>
			<div id="notion_btn">
				<a href="notionwrite.jsp" class="notionw_btn">+</a>
			</div>
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>