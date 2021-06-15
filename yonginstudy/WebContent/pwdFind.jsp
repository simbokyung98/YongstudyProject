<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
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
	#find_main{
		width: 1000px;
		padding-top: 16%;
	}
	#find_wrap{
		margin: 0 auto;
		width: 800px;
		text-align: center;
	}
	#find_title{
		font-family: 'Recipekorea';
		color: #064420;
		font-weight: bold;
		font-size: 40px;
		
	}
	#find_search_wrap{
		font-family: 'ELAND_Choice_L';
		font-size: 20px;
		margin-top: 20px; 
	}
	.find_input{
		width: 170px;
		height: 30px;
	}
	.findsub_but{
		border: 0;
		padding: 10px 20px;
		background: #88A67E;
		font-family: 'ELAND_Choice_L';
		font-size: 18px;
		color: white;
		margin-left: 20px;
	}
	#find_resultwrap{
		width: 800px;
		height: 60px;
		font-family: 'ELAND_Choice_L';
		padding-top: 40px;
	}
	#find_resultwrap span{
		color: red;
	}
	.login_link{
		margin-left: 500px;
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
		$('#findsub_but').click(function(){
			if($('#id').val().length == 0 || $('#name').val().length == 0){
				alert("아이디와 이름을 입력하여주세요");
				return false;
			}
		});
		
		$('#pwdupdate').click(function(){
			if($('#pwd').val().length == 0 || $('#pwdck').val().length == 0){
				alert("비밀번호를 입력하여주세요");
				return false;
			}else if($('#pwd').val() != $('#pwdck').val()){
				alert("비밀번호가 동일하지 않습니다");
				return false;
			}
		});
	});
</script>
</head>
<body>
	<main id="find_main">			
		<div id="find_wrap">
		<h1 id="find_title">비밀번호 찾기</h1>
			<div id="find_search_wrap">
				
				<form action="find.do" method="post">
					아이디 : <input type="text" name="id" class="find_input" id="id">
					이름 : <input type="text" name="name" class="find_input" id="name">
					<input type="hidden" name="job" value="pwd">
					<input type="submit" class="findsub_but" id="findsub_but" value="확인 ">
				</form>
			</div>
			<div id="find_resultwrap">
				<%
					String resultpwd = (String)request.getAttribute("resultpwd");
					String done = (String)request.getAttribute("done");
					
					if(done != null){
						if(resultpwd != null){
					
				%>
						<form action="updatepwd.do" method="post">
						변경할 비밀번호 : <input type="text" name="pwd" class="find_input" id="pwd">
						비밀번호 확인 : <input type="text" name="pwdck" class="find_input" id="pwdck"> 	
						<input type="hidden" name="userid" value= <%=resultpwd%>>
						<input type="submit" class="findsub_but" id="pwdupdate" value="변경">
						</form>
				<%		
						}else {
				%>
							잘못입력하셨습니다.
				<% 		
						}
					}


				%>
				
			</div>
			<div>
				<a href="login.jsp" class="login_link" style="margin-left: 500px; ">로그인</a>
			</div>
		</div>
	</main>
	
	

</body>
</html>