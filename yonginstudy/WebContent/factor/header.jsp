<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
				<li><a href="#" class="top_li"> �α׾ƿ� </a></li>
				<li><a href="#" class="top_li"> ���������� </a></li>
			</ul>
		</div>
		<nav id="menu">
			<div id="logo_menu">
				<a href="/yonginstudy/main.jsp"><img alt="�ΰ��̹���" src="/yonginstudy/img/logo.png"></a>
			</div>
			<ul id="main_menu">
				<li><a href="#">YONG ���͵�</a></li>
				<li><a href="lectureSearch.do">���ǽǿ���</a></li>
				<li><a href="#">Ŀ�´�Ƽ</a></li>
				<li><a href="#">���͵����</a></li>
			</ul>
		</nav>
	</div>
	<div id="down_menu">
		<ul id="down_ul">
			<li class="dowm_liwrap first">
				<ul class="dowm_factor">
					<li><a href="#">Yong ���͵� ����</a></li>
					<li><a href="#">ķ�۽� �ȳ�</a></li>
				</ul>
			</li>
			<li class="dowm_liwrap">
				<ul class="dowm_factor">
					<li><a href="lectureSearch.do?job=mirror">�ſﰭ�ǽ�</a></li>
					<li><a href="lectureSearch.do?job=judo">�Ʒ���</a></li>
					<li><a href="lectureSearch.do?job=gang">å���� ���ǽ�</a></li>
					<li><a href="lectureSearch.do?job=computer">��ǻ�ͽ�</a></li>
				</ul>
			</li>
			<li class="dowm_liwrap">
				<ul class="dowm_factor">
					<li><a href="#">��������</a></li>
					<li><a href="#">Q&A</a></li>
				</ul>
			</li>
			<li class="dowm_liwrap">
				<ul class="dowm_factor">
					<li><a href="#">���͵� ���</a></li>
					<li><a href="#">���͵� ����</a></li>
				</ul>
			</li>
		</ul>
	</div>
</body>
</html>