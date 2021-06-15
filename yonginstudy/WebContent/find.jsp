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
	#login_main{
		width: 1000px;
		padding-top: 16%;
	}
	#login_wrap{
		margin: 0 auto;
		width: 500px;
		text-align: center;
	}
	#login_title{
		 font-family: 'Recipekorea';
		color: #064420;
		font-weight: bold;
		font-size: 40px;
		
	}
	.find_but{
		width: 300px;
		height: 60px;
		background: #88A67E;
		border-radius: 5px;
		border: 0;
		color: white;
		font-family: 'ELAND_Choice_B';
		font-weight: bold;
		font-size: 20px;
		letter-spacing: 3px; 
	}
	.login_link:link, .login_link:active, .login_link:visited{
		font-family: 'ELAND_Choice_L';
		text-decoration: none;
		color: black;
	}
	.login_link:hover {
		font-weight: bold;
	}
</style>

</head>
<body>
	<main id="login_main">			
		<div id="login_wrap">
			<h1 id="login_title">YONG 스터디</h1>
			<button class="find_but" onclick="location.href='idFind.jsp'">아이디 찾기</button><br><br>
			<button class="find_but" onclick="location.href='pwdFind.jsp'">비밀번호 찾기</button>	<br><br>
			<a href="login.jsp" class="login_link" style="margin-left: 220px; ">로그인</a>
		</div>
	</main>
	
	

</body>
</html>