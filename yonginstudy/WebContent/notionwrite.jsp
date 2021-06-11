<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
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
	#notion_box{
		
		
	}
	.notion_write_table{
		border-top: 2px solid #88A67E;
		width: 850px;
	}
	.notwri_td{
		padding: 10px 0 10px 20px;
		border-bottom: 1px solid #cccccc;
		font-family: 'ELAND_Choice_L';
		font-weight: bold;
		font-size: 20px;
	}
	#notwri_title{
		margin-left: 20px;
		height: 30px;
		width: 400px;
	}
	.notwri_textwrap{
		padding: 10px 0 ;
		border-bottom: 1px solid #cccccc;
	}
	.notwri_textwrap textarea{
		padding: 20px;
		font-family: 'ELAND_Choice_L';
		font-size: 17px;
	}
	.notwri_filewrap{
		padding: 10px 0 15px 20px;
		border-bottom: 2px solid #88A67E;
		
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
	.subbut{
		color: white;
		background: #88A67E;
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
				<span id="notion_spanB">공지사항 작성</span>				
			</div>
			<div id="notion_box">
				<form action="notionwrite.do" enctype="multipart/form-data" accept-charset="UTF-8" method="post">
					<table class="notion_write_table">
						<tr>
							<td class="notwri_td">제목 : <input type="text" id="notwri_title" name="title"></td>
						</tr>
						<tr>
							<td class="notwri_textwrap"><textarea rows="25" cols="100" name="contents"></textarea> </td>
						</tr>
						<tr>
							<td class="notwri_filewrap"><input type="file" name="file"></td>
						</tr>
						<tr>
							<td class="notwri_butwrap"><input type="submit"  value="등록" class="notwri_but subbut">
								<button type="button" onclick="location.href='notionmain.jsp' " class="notwri_but backbut" >목록</button></td>
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