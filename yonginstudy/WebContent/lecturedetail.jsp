<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#lefture_detil_main{
		width: 1200px;
		height: 900px;
	}
	#letde_title{
		width: 1200px;
		height: 70px;
		text-align: center;
		padding-top: 30px;
		background: #88A67E;
		color: white;
		font-family: 'ELAND_Choice_B';
		font-size: 30px;
	}
	#letde_contents{
		width: 1200px;
		height: 300px;
	}
	#letde_conimg{
		float: left;
		padding: 30px;
	}
	#letde_conimg img{
		width: 550px;
		height: 300px;
	}
	#letde_concon{
		padding: 40px 0 0 20px;
		width: 500px;
		float: left;
	}
	#letde_concon h3{
		font-family: 'ELAND_Choice_B';
		font-size: 25px;
	}
	#letde_confactor{
		width: 510px;
		height: 160px;
		background: #E7E4DD;
		float: left;
		margin-top: 20px;
		padding: 40px 0 0 40px;
	}
	#letde_confactor li{
		font-family: 'ELAND_Choice_L';
		margin-bottom: 25px;
		font-size: 20px;
		letter-spacing: 2px;
	}
	#letde_conbut{
		width: 550px;
		float: left;
	}
	#letde_conbut button{
		width: 170px;
		height: 50px;
		font-family: 'ELAND_Choice_B';
		color: white;
		background: #88A67E;
		border: 0;
		font-size: 20px;
		margin: 5px 0 0 390px;
		
	}
	#letde_warning{
		margin: 100px 0 0 30px;
	}
	#letde_warning img{
		width: 1150px;
		height: 350px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="lefture_detil_main">
		<section>
			<div id="letde_title">
				강의실 안내
			</div>
			<div id="letde_contents">
				<div id="letde_conimg"><img alt="거울강의실" src="img/${lecture.img } " > </div>
				<div id="letde_concon">
					<h3>${lecture.title }</h3>
					<div id="letde_confactor">
						<ul>
							<li>단과대  :  ${lecture.college }</li>
							<li>위치  :  ${lecture.location }</li>
							<li>수용인원  :  ${lecture.maxpeople }명</li>
						</ul>
					</div>
					<div id="letde_conbut">
						<button  onclick="location.href='lecturereservation.jsp' ">에약하기</button>
					</div>
				</div>
			</div>
			<div id="letde_warning">
				<img alt="주의사항" src="img/warning.png">
			</div>
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>