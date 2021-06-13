<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style type="text/css">

	.admin_main{
		width: 1200px;
		height: 100%:
	}
	.admin_nav{
		width: 1100px;
		clear: left;
		
	}
	.admin_navinside{
		float: left;
		width: 545px;
		height: 40px;
		text-align: center;
		font-family: 'ELAND_Choice_B';
		padding-top: 20px;
		font-size: 20px;	
		border-radius: 10px 10px 0 0;
		margin-right: 5px;
	}
	.act_admin{	
		background: rgba(231,228,221,0.9);
		color: gray;	
	}
	.suv_admin{	
		background: #66865C;
		color: white;		
	}
	#admin_usertablewrap{
		clear: left;
		background: rgba(231,228,221,0.9);
		width: 1100px;
		margin-bottom: 50px;
		padding: 30px 0 100px 0;
	}
	.admin_user_table{
		width: 1000px;
		border-collapse: collapse;
	}
	.admin_user_table th{
		height: 40px;
		font-family: 'ELAND_Choice_L';
		background: #cccccc;
		border: 1px solid #cccccc;
	}
	.admin_user_table td{
		background: white;
		height: 40px;
		text-align: center;
		font-family: 'ELAND_Choice_L';
		border-bottom: 1px solid #cccccc;
	}
	.userinfo_upbut{
		border: 0;
		background: white;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main class="admin_main">
		<nav class="admin_nav">
			<div class="admin_navinside act_admin">
				관리자 회원 관리
			</div>
			<div class="admin_navinside suv_admin">
				관리자 강의실 예약 관리
			</div>
		</nav>
		<div id="admin_usertablewrap">
			<table class="admin_user_table">
				<thead>
					<tr>
						<th>학번</th>
						<th>아이디</th>
						<th>학과</th>
						<th>이름</th>
						<th>휴대폰</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>201757017</td>
						<td>aaa</td>
						<td>물류통계정보학과</td>
						<td>심보경</td>
						<td>010-1111-2222</td>
						<td><button type="button" class="userinfo_upbut"><img alt="" src="img/leaf.png" style="width: 25px; height: 25px;"> </button> </td>
					</tr>
					<tr>
						<td>201757017</td>
						<td>aaa</td>
						<td>물류통계정보학과</td>
						<td>심보경</td>
						<td>010-1111-2222</td>
						<td><button type="button" class="userinfo_upbut"><img alt="" src="img/leaf.png" style="width: 25px; height: 25px;"> </button> </td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
		
</body>
</html>