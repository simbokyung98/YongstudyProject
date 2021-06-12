<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@font-face {
		    font-family: 'Recipekorea';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Recipekorea.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'ELAND_Choice_B';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/ELAND_Choice_B.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'ELAND_Choice_L';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/ELAND_Choice_L.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		*{
			margin: 0 auto;
			padding: 0;
		}
		#header_wrap{
			width: 1200px;
			height: 130px;
		}
		li{
			list-style-type: none;
		}
		#top_menu{
			display: block;
			height: 30px;
		}
		#top_menu li{
			font-family: 'ELAND_Choice_L';
			margin: 20px 10px 0 0; 
			float: right;
			
		}
		#top_menu a{
			font-family: 'ELAND_Choice_L';
			color: black;
			text-decoration: none;
		}
		#top_menu a:hover{
			color: gray;
			font-weight: bold;
		}
		#menu li{
			display: inline-block;  
		}
		#menu{
			margin-right: 20px; 
		}
		#logo_menu{
			margin: 10px 0 0 10px;
			float: left;
		}
		#logo_menu img{
			width: 250px;
			height: 100px;
		}
		#main_menu{
			float: left;
			margin: 60px 0 0 100px;
			padding-bottom: 15px;
		}
		#main_menu li{
			margin-right: 70px; 
		}
		#main_menu a{
			font-family: 'ELAND_Choice_B';
			font-size: 20px;  
			color: black;
			text-decoration: none; 
		} 
		#main_menu li:hover{
			border-bottom: 2px solid #064420;
		}
		#down_menu{
			width: 1200px; 
			height: 250px;
			background: rgba(231,228,221,0.9);
			display: none;
			left:50%;
			transform:translateX(-50%);
			position: absolute;
			z-index:100; 
		}
		.dowm_liwrap{
			float: left;
			margin: 20px 71px 0 0;
			text-align: center;
		}
		.first{
			margin-left: 30%;
		}
		.dowm_factor li{
			margin-bottom: 20px;
		}
		.dowm_liwrap a{
			font-family: 'ELAND_Choice_B';
			font-size: 17px;  
			color: #66865C;
			text-decoration: none;
		}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function(){
		
		$('#main_menu').hover(function(){
			$('#down_menu').show();
		}, function() {
			$('#down_menu').hide(); 
		});
		
		$('#down_menu').hover(function(){
			$('#down_menu').show();
		}, function() {
			$('#down_menu').hide();
		});
		
	});
</script>
</head>
<body>
	<div id="header_wrap">
		<div id="up_menu">
			<ul id="top_menu">
				<li><a href="Logout.do" class="top_li"> 로그아웃 </a></li>
				<li><a href="userlecture.do" class="top_li"> 마이페이지 </a></li>
			</ul>
		</div>
		<nav id="menu">
			<div id="logo_menu">
				<a href="/yonginstudy/main.jsp"><img alt="로고이미지" src="/yonginstudy/img/logo.png"></a>
			</div>
			<ul id="main_menu">
				<li><a href="#">YONG 스터디</a></li>
				<li><a href="lectureSearch.do">강의실예약</a></li>
				<li><a href="notionlist.do">커뮤니티</a></li>
				<li><a href="studylist.do">스터디모집</a></li>
			</ul>
		</nav>
	</div>
	<div id="down_menu">
		<ul id="down_ul">
			<li class="dowm_liwrap first">
				<ul class="dowm_factor">
					<li><a href="#">Yong 스터디 설명</a></li>
					<li><a href="#">캠퍼스 안내</a></li>
				</ul>
			</li>
			<li class="dowm_liwrap">
				<ul class="dowm_factor">
					<li><a href="lectureSearch.do?job=mirror">거울강의실</a></li>
					<li><a href="lectureSearch.do?job=judo">훈련장</a></li>
					<li><a href="lectureSearch.do?job=gang">책상형 강의실</a></li>
					<li><a href="lectureSearch.do?job=computer">컴퓨터실</a></li>
				</ul>
			</li>
			<li class="dowm_liwrap">
				<ul class="dowm_factor">
					<li><a href="notionlist.do">공지사항</a></li>
					<li><a href="#">Q&A</a></li>
				</ul>
			</li>
			<li class="dowm_liwrap">
				<ul class="dowm_factor">
					<li><a href="studylist.do">스터디 목록</a></li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>