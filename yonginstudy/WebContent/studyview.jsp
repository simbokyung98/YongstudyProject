<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스터디 보기</title>
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
	input:focus {outline:none;}
	#stuview_header{
		width: 785px;
		height:35px;
		background: #66865C; 
		padding: 15px 0 0 20px;
			
	}
	#stuview_header h3{
		color: white;
		font-size: 20px;
		font-family: 'ELAND_Choice_B';
	}
	#stuview_main{
		width: 780px;
		height: 410px;
		padding: 40px 0 0 20px;
	}
	.stuview_ul li{
		font-family: 'ELAND_Choice_B';
		font-size: 18px;
		margin-bottom: 10px;
	}
	.stuview_text {
		height: 40px;
		border-radius: 5px;
		border: 0;
		background: #D3DED0;
		padding-left: 20px;
		font-family: 'ELAND_Choice_B';
		font-size: 17px;
		
	}
	.stuview_title{
		width: 640px;
		margin-left: 5px;
	}
	.stuview_location{
		width: 250px;
		margin-left: 20px;
	}
	#stuv_dwrap span{
		float: left;
	}
	#sudv_detail{
		float: left;
		width: 650px;
		height: 150px;
		background: #D3DED0;
		font-family: 'ELAND_Choice_L';
		padding: 20px;
		margin-left: 20px;
		border-radius: 5px;
	}
	#stuv_subwrap{
		clear: left;
	}
	#stuview_subbut{
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
	#stuv_apply{
		margin: 20px 0 0 70px;
		float: left;
		width: 500px;
		height: 30px;
	}
</style>
<script type="text/javascript">
	function goSubmit() {
	    document.myForm.target = "parent"; // 타켓을 부모창으로 설정
	    document.myForm.action = "studyapply.do";
	    document.myForm.submit();
	    self.close();
	}
</script>
</head>
<body>
	<header id="stuview_header">
		<h3>스터디 보기</h3>
	</header>
	<main id="stuview_main" >
			
			<ul class="stuview_ul">
				<li>스터디 명 : <input type="text" class=" stuview_text stuview_title" readonly value="${study.title}"> </li>
				<li>모집인원 : ${applypeople }/${study.maxpeople } </li>
				<li>장소 : <input type="text" class=" stuview_text stuview_location" readonly value="${study.location }"> </li>
				<li id="stuv_dwrap"><span> 내용 :</span> <div id="sudv_detail"> ${study.contents} </div> </li>
				<li id="stuv_subwrap">
				<form name="myForm" method="post" accept-charset="UTF-8">
					<input type="text" name="application" id="stuv_apply" placeholder="신청 한마디를 적어보세요">
					<input type="hidden" name="makeuserid" value="${study.user}">
					<input type="hidden" name="key" value="${study.studykey}">
					<input type="hidden" name="applypeople" value="${applypeople }">
					<input type="hidden" name="maxpeople" value="${study.maxpeople }">
					<input type="submit" value="신청" id="stuview_subbut" onclick="goSubmit()"> 
				</form>	
				</li>
			</ul>
	</main>
</body>
</html>