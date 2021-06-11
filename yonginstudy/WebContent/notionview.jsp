<%@page import="yong.vo.Notion"%>
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

	.notion_write_table{
		border-top: 2px solid #88A67E;
		width: 850px;
	}
	.notwri_td{
		padding: 10px 0 10px 10px;
		border-bottom: 1px solid #cccccc;
		font-family: 'ELAND_Choice_L';
		height: 40px;
		
	}
	#notwri_title{
		font-weight: bold;
		font-size: 23px;
		
	}
	#notwri_date{
		font-size: 16px;
		float: right;
		margin-right: 20px;
	}
	.notwri_textwrap{
		padding: 20px 0 0 20px;
		border-bottom: 1px solid #cccccc;
		height: 400px;
		vertical-align : top;
	}
	.notwri_filewrap{
		padding: 10px 0 15px 20px;
		border-bottom: 2px solid #88A67E;
		height: 30px;
		
	}
	.notwri_butwrap{
		text-align: center;
		padding: 10px 0;
	}
	.notwri_but{
		width: 100px;
		height: 50px;
		font-family: 'ELAND_Choice_B';
		border: 0;
		text-align: center;
		font-size: 20px;
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
				<span id="notion_spanB">공지사항 보기</span>				
			</div>
			<div id="notion_box">
				<form action="">
					<table class="notion_write_table">
						<tr>
							<td class="notwri_td"> <span id="notwri_title">${notion.title }</span> <span id="notwri_date">${notion.notiondate }</span> </td>
						</tr>
						<tr>
							<td class="notwri_textwrap">${notion.contents }</td>
						</tr>
						<tr>
							<td class="notwri_filewrap">
								<%
									Notion notion = (Notion)request.getAttribute("notion");
									if(notion.getFile() != null){
								%>
									<a href="factor/filedown.jsp?notionfile=<%= notion.getFile()%>"><%=notion.getFile()%></a>
								<% 
									}
								%>
							</td>
						</tr>
						<tr>
							<td class="notwri_butwrap"><button type="button" onclick="location.href='notionlist.do' " class="notwri_but" >목록</button></td>
						</tr>
					</table>
				</form>			
			</div>
		
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>