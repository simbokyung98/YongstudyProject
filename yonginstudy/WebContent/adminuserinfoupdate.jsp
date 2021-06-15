<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 정보 변경</title>
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
	#userupdate_wrap{
		width: 800px;
		height: 600px;
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
	
	.userupdate_input{
		width: 250px;
		height: 30px;
		font-family: 'ELAND_Choice_L';
		padding-left: 20px;
	}
	.userupdate_select{
		width: 270px;
		height: 40px;
		font-family: 'ELAND_Choice_L';
	}
	#pass_span{
		font-family: 'ELAND_Choice_L';
		font-size: 15px;
		color: red;
		margin-left: 5px;
		
	}
	#userupdate_butwrap{
		width: 800px;
		height: 100px;
		
	}
	#userupdate_but{
		float: right;
		border: 0;
		width: 100px;
		height: 40px;
		border-radius: 5px;
		color: white;
		background: #66865C;
		font-size: 18px;
		margin: 10px 20px 0 0;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function(){
		$('#userListSB').val("${user.major }").prop('selected', true);
	});
</script>
<script type="text/javascript">
	function adminGoSubmit() {
	    document.adminUser.target = "admin"; // 타켓을 부모창으로 설정
	    document.adminUser.action = "join.do";
	    document.adminUser.submit();
	    self.close();
	}
</script>
</head>
<body>
	<div id="userupdate_wrap">
		<h2 id="userpage_h2">개인정보</h2>
		<form name="adminUser" method="post">
			<table id="userinfo_table">
				<tr>
					<th>아이디</th>
					<td><input type="text" class="userupdate_input" value="${user.id}" name="id"> </td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" class="userupdate_input" value="${user.pwd}" name="pwd"><span id="pass_span">*조회불가능 변경만 가능</span> </td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" class="userupdate_input" value="${user.name }" name="name"></td>
				</tr>
				<tr>
					<th>학과</th>
					<td>
						<select name="major" class="userupdate_select" id="userListSB">
							<option value="컴퓨터과학과">컴퓨터과학과</option>
							<option value="물류통계정보학과">물류통계정보학과</option>
							<option value="경영학과">경영학과</option>
							<option value="미디어디자인학과">미디어디자인학과</option>
							<option value="중국어학과">중국어학과</option>
							<option value="식품영양학과">식품영양학과</option>
							<option value="관리자">관리자</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>학번</th>
					<td><input type="text" class="userupdate_input" value="${user.userclass}" name="userclass"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" class="userupdate_input" value="${user.phone }" name="phone"></td>
				</tr>
			</table>
			<div id="userupdate_butwrap">
				<input type="hidden" name="update" value="update">
				<button type="submit" id="userupdate_but" onclick="adminGoSubmit()">UPDATE</button>	
			</div>
		</form>
	</div>
</body>
</html>