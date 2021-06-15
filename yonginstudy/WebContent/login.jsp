<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
	#login_contents{
		font-family: 'ELAND_Choice_B';
		width: 250px;
	}
	.login-con{
		text-align: left;
		width: 300px;
		margin:20px 0 20px 0;
	}
	.login_input{
		width: 200px;
		height: 40px;
		border: 1px solid #064420;
		border-radius: 3px;
	}
	#login_btn{
		width: 120px;
		height: 40px;
		background: #064420;
		border-radius: 5px;
		border: 0;
		color: white;
		font-family: 'ELAND_Choice_B';
		font-weight: bold;
		font-size: 24px;
	}
	#login_link_wrap{
		margin: 10px 0 10px 0;
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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function(){
		$('#login_btn').click(function(){
			if($('#id').val().length == 0 || $('#pwd').val().length == 0){
				alert("아이디와 비밀번호를 입력하여주세요");
				return false;
			}
		});
	});
</script>
<% 
	String pwdupdate = (String)request.getAttribute("pwdupdate");
%>
<script type="text/javascript">
	window.onload = function(){
		var result =  '<%= pwdupdate%>';
		if(result != 'null'){
			alert("<%= pwdupdate%> " );				
		}
	}	
		</script>
</head>
<body>
	<main id="login_main">			
		<div id="login_wrap">
			<h1 id="login_title">YONG 스터디</h1>
		
			<div id="login_contents">
				<form action="login.do" method="post" onsubmit="return check(this)">
					<div class="login-con">
					<span style="font-size: 20px; padding-right: 20px;">ID : </span><input type="text" class="login_input" name="id" id="id" >
					</div>
					<div class="login-con">
					<span style="font-size: 20px;padding-right: 13px;">PW : </span><input type="password" class="login_input" name="pwd" id="pwd">
					</div>
					<input type="submit" id="login_btn" value="Log in">
				</form>
			</div>
			<div id="login_link_wrap">
				<a href="join.jsp" class="login_link" style="margin:0 80px 0 10px;">회원가입</a>
				<a href="find.jsp" class="login_link">ID/PW 찾기</a>
			</div>
		</div>
	</main>
	
	

</body>
</html>