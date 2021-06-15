<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
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
		width: 600px;
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
	#findsub_but{
		border: 0;
		padding: 10px 20px;
		background: #88A67E;
		font-family: 'ELAND_Choice_L';
		font-size: 18px;
		color: white;
	}
	#find_resultwrap{
		width: 600px;
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
			if($('#userclass').val().length == 0 || $('#name').val().length == 0){
				alert("학번과 이름을 입력하여주세요");
				return false;
			}
		});
	});
</script>
</head>
<body>
	<main id="find_main">			
		<div id="find_wrap">
		<h1 id="find_title">YONG 스터디</h1>
			<div id="find_search_wrap">
				
				<form action="find.do" method="post">
					학번 : <input type="text" name="userclass" class="find_input" id="userclass">
					이름 : <input type="text" name="name" class="find_input" id="name">
					<input type="hidden" name="job" value="id">
					<input type="submit" id="findsub_but" value="확인 ">
				</form>
			</div>
			<div id="find_resultwrap">
				<%
					String searchid = (String)request.getAttribute("searchid");
					String done = (String)request.getAttribute("done");
					
					if(done != null){
						if(searchid != null){
					
				%>
						회원님의 아이디는 <span> <%=searchid %> </span> 입니다. 	
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