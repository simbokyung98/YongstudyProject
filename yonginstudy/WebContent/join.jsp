<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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
		
		#back{
			background: #DCDCDC; 

		}
		#join_wrap{ 
			margin: 10% 21%;      
 			width: 1000px; 
			height: 600px; 
			border-radius: 8px;
			box-shadow: 27px 43px 43px -26px rgba(89,89,89,0.39); 
			   
		}
		#join_left{
			width: 50%;
			height: 600px;
			float: left;
			background-image: url("img/joinpic.jpg");
			background-size: 100% 100%;
			border-radius: 8px 0 0 8px; 
		}
		#join_right{
			width: 49.9%;  
			height: 600px;  
			float: left; 
			background: white;
			border-radius: 0 8px 8px 0;
		}
		#join_right h5{
			margin-left: 170px;
			text-align: center;
			font-family: 'ELAND_Choice_B';
			font-size: 30px;
			border-bottom: 1px solid #cccccc;
			width: 150px;
			padding-bottom: 10px;
			color: #064420;
		}
		.join_ul{
			margin-left: 60px;
		}
		.join_ul li {
			list-style: none;
			font-family: 'ELAND_Choice_L';
			font-size: 20px;
			margin-bottom: 30px;
			
		}
		.join_li span{
			display: inline-block;
			width: 100px;
		}
		.join_li input, .join_li select{
			width: 200px;
			height: 30px;
		}
		.join_but input{
			width: 150px;
			height: 30px;
			color: white;
			background: #064420;
			border: 0;
			border-radius: 5px;
		}
		.join_but a{
			text-decoration: none;
			color: #cccccc;
			font-size: 15px;
			margin-left: 100px;
		}
		.join_but a:hover {
			color: #064420;
		}
	</style>
	
</head>
<body id="back">
		<div id="join_wrap">
			<div id="join_left">
			</div>
			<div id="join_right"> 
				<h5>회원가입</h5>
				<form action="" method="post">
					<ul class="join_ul">
						<li class="join_li"><span>아이디</span>  <input type="text"></li>
						<li class="join_li"><span>비밀번호</span>  <input type="text"></li>
						<li class="join_li"><span>학번</span>  <input type="text"></li>
						<li class="join_li"><span>학과</span>  <select>
									<option>컴퓨터과학과</option>
									<option>물류통계정보학과</option>
									<option>경영학과</option>
									<option>미디어디자인학과</option>
									<option>중국어학과</option>
									<option>식품영양학과</option>
								</select> </li>
						<li class="join_li"><span>이름</span>  <input type="text"></li>
						<li class="join_but"><input type="submit" value="회원가입"><a href="login.jsp">로그인 페이지</a></li>
					</ul>
				</form>
			</div>
		</div>
</body>
</html>