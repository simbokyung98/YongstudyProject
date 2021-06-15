<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디 등록</title>
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
		margin: 0;
		padding: 0;
	}
	li{
		list-style: none;
	}
	#stuwrite_header{
		width: 785px;
		height:35px;
		background: #66865C; 
		padding: 15px 0 0 20px;
			
	}
	#stuwrite_header h3{
		color: white;
		font-size: 20px;
		font-family: 'ELAND_Choice_B';
	}
	#stuwrite_main{
		width: 780px;
		height: 410px;
		padding: 40px 0 0 20px;
	}
	.stuwrite_ul li{
		font-family: 'ELAND_Choice_B';
		font-size: 18px;
		margin-bottom: 10px;
	}
	.stuwrite_text {
		height: 30px;
		border-radius: 5px;
		border: 0;
		background: #D3DED0;
		padding-left: 20px;
		
	}
	.stuwrite_title{
		width: 500px;
		margin-left: 5px;
	}
	.stuwrite_people{
		width: 50px;
		height: 30px;
		font-size: 17px;
		font-family: 'ELAND_Choice_B';
		margin-left: 7px;
		padding-left: 5px;
		
	}
	.stuwrite_location{
		width: 250px;
		margin-left: 20px;
	}
	#stuw_dwrap span{
		float: left;
	}
	#stuwrite_detail{
		font-family: 'ELAND_Choice_L';
		font-size: 16px;
		float: left;
		margin-left: 23px;
		padding: 5px;
	}
	#stuw_subwrap{
		clear: left;
	}
	.stuw_onclickbut{
		float: right;
		margin: 20px 40px 0 0 ;
		border: 0;
		background: #66865C; 
		width: 100px;
		height: 40px;
		color: white;
		font-family: 'ELAND_Choice_B';
		font-size: 18px;
	}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function(){
		$('#studywrite_but').click(function(){
			if($('#title').val().length == 0){
				alert("제목을 입력하여주세요");
				$('#title').focus();
				return false;
			}
			if($('#location').val().length == 0){
				alert("장소를 입력하여주세요");
				$('#location').focus();
				return false;
			}
			if($('#stuwrite_detail').val().length == 0){
				alert("내용을 입력하여주세요");
				$('#stuwrite_detail').focus();
				return false;
			}
			document.myForm.target = "parent"; // 타켓을 부모창으로 설정
		    document.myForm.action = "studywrite.do";
		    document.myForm.submit();
		    self.close();
		});
	});
</script>
<script type="text/javascript">

</script>
</head>
<body>
	<header id="stuwrite_header">
		<h3>스터디 만들기</h3>
	</header>
	<main id="stuwrite_main" >
		<form name="myForm" method="post"  enctype="multipart/form-data" accept-charset="UTF-8">
			<ul class="stuwrite_ul">
				<li>스터디 명 : <input type="text" class=" stuwrite_text stuwrite_title" name="title" id="title"> </li>
				<li>모집인원 : <select class="stuwrite_people" name="maxpeople">
							<%
								for (int i=1;i<=20;i++){
							%>
								<option value="<%=i%>">
									<%= i%>
								</option>
							<%
								}
							%>
				</select> </li>
				<li>장소 : <input type="text" class=" stuwrite_text stuwrite_location" name="location" id="location"> </li>
				<li> 이미지 : <input type="file" name="img"> </li>
				<li id="stuw_dwrap"><span> 내용 :</span> <textarea rows="10" cols="90" id="stuwrite_detail" name="contents" ></textarea> </li>
				
				<li id="stuw_subwrap">
				<input type="hidden" name="user" value="${id}">
				<input type="hidden" name="major" value="${major}">
				 
				</li>
			</ul>
		</form>
		<input type="submit" value="등록" class="stuw_onclickbut" id="studywrite_but">
	</main>
</body>
</html>