<%@page import="yong.vo.Notion"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YONG 스터디 설명</title>
<style type="text/css">
	#info_main{
		height:700px;
		width:1200px;
		clear: left;
	}
	#stl_h3{
		width:700px;
		padding: 50px 0 50px 500px;
		font-family: 'ELAND_Choice_B';
		font-size: 25px;
		background: #88A67E;
		color: white;
		letter-spacing: 5px;
		clear: left;
		margin-bottom: 100px;
	}
	#info_content{
		float: left;
		font-family: 'ELAND_Choice_L';
		letter-spacing: 1px;
		font-size: 16px;
		width: 790px;
		margin-left: 20px;
	}
	#info_img{
	 	float: left;
	 	margin-left: 20px;
	 	width: 350px;
	}


</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="info_main">
	<div id="stl_h3"><h3>YONG 스터디 설명</h3></div>
	<div id="info_content">
		<h1 style="font-family: 'ELAND_Choice_B'; color: #66865C; ">YONG 스터디에 오신 것을 환영합니다.</h1>
		<br>
		Yong 스터디는 코로나로 인해 장기간 미사용된 강의실들을 용인대 여러분을 위하여 이용하는 서비스 입니다.<p>
		시험공부, 과제, 자격증 준비, 운동 연습 등 다양하게 강의실을 이용하여 보세요.<p>
		<br>
		강의실 예약은 사용하고 싶은 강의실을 대여하는 서비스 입니다.<p>
		원하는 강의실을 정해서 예약하기를 누르면 날짜와 시간을 선택할 수 있습니다.<p>
		그 후 마이페이지에서 예약 현황을 확인 할 수 있습니다.<p>
		관리자가 예약사항을 확인하면 대기 상태가 불가능 or 가능으로 표시됩니다.<p>
		<br>
		스터디 모집을 통하여 원하는 스터디를 등록 할 수 있습니다.<p>
		스터디를 열어서 강의실 대여 서비스와 함께 활용하여 보세요!<p>
		열린 스터디에 참여도 가능합니다 스터디장에게 참여 한마디를 적어주세요.<p>
		<br>
		공지사항과 Q&A 를 이용하여 YONG 스터디에 대한 궁금증을 해소하세요.<p>
		그럼 강의실을 예약해볼까요?
		
	</div>
	<div id="info_img">
		<img alt="logo" src="img/yonglogo.PNG" style="width: 350px; height: 350px;">
	</div>
	
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>