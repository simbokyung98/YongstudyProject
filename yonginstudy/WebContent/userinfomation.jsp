<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
	#userlecture_main{
		width: 1200px;
		height: 100%;
		clear: left;
	}
	#userlecture_aside{
		float: left;
		width: 20%;
		height: 500px;
		background: rgba(231,228,221);
		padding: 40px 0 0 20px;
		margin-bottom: 100px;
	}
	.userle_asti{
		margin-bottom: 30px;
	}
	.userle_asti h2{
		font-family: 'ELAND_Choice_B';
		color: #66865C;
		font-size: 30px;
	}
	.userle_asmenu{
		margin: 0 0 30px 10px;
	}
	.userle_asmenu a:link , .userle_asmenu a:active, .userle_asmenu a:visited{
		text-decoration: none;
		color: gray;
		font-family: 'ELAND_Choice_L';
	}
	.userle_asmenu a:hover{
		color: black;
	}
	
	
	#userpage_section{
		float: left;
		width: 70%;
		margin-left: 40px;
		height: 100%;
	}
	#userpage_h2{
		font-family: 'ELAND_Choice_B';
		color: #66865C;
		font-size: 30px;
		margin-bottom: 30px;
		width: 150px;
		float: left;
		text-align: center;
	}
	#userinfo_table{
		clear: left;
		width: 800px;
		border-top: 2px solid #66865C;
		border-bottom: 2px solid #66865C;
		border-collapse: collapse;
	}
	#userinfo_table th{
		height: 70px;
		font-family: 'ELAND_Choice_L';
		font-size: 18px;
		background: #dddddd;
		border-bottom: 1px solid #cccccc;
	}
	#userinfo_table td{
		font-family: 'ELAND_Choice_L';
		font-size: 18px;
		border-bottom: 1px solid #cccccc;
		padding-left: 20px;
	}
	#userinfo_span{
		color: red;
		font-family: 'ELAND_Choice_L';
		float: right;
		margin-top: 10px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="userlecture_main">
		<aside id="userlecture_aside">
				<ul>
					<li class="userle_asti"><h2>마이페이지</h2></li>
					<li class="userle_asmenu"><a href="userlecture.do">강의실예약</a></li>
					<li class="userle_asmenu"><a href="userstudy.do">스터디</a></li>
					<li class="userle_asmenu"><a href="userinfo.do">개인정보</a></li>
				</ul>
		</aside>
		<section id="userpage_section">
			<h2 id="userpage_h2">개인정보</h2>
			<table id="userinfo_table">
				<tr>
					<th>아이디</th>
					<td>${user.id}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${user.name }</td>
				</tr>
				<tr>
					<th>학과</th>
					<td>${user.major }</td>
				</tr>
				<tr>
					<th>학번</th>
					<td>${user.userclass }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${user.phone }</td>
				</tr>
			</table>
			<span id="userinfo_span">*회원정보 수정은 관리자에게 문의해주세요</span>
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>

</body>
</html>