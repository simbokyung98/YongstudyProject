<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
	.fot_box{  
		clear: left; 
		background: #66865C; 
		height: 300px;  
	}
	li{
			list-style-type: none;
	}
	#bottom_menu{
		width: 1200px;   
	}
	#bottom_menu ul{  
 		padding: 15px 0 15px 0;   
		   
	}
	#bottom_menu a{
		font-family: 'ELAND_Choice_B';
		letter-spacing: 2px;
		color: white;   
		text-decoration: none;
	}
	#bottom_menu li{    
		display: inline;  
		margin-right: 100px;
	}
	#fot_items{
		width: 1000px; 
	}
	.fot_title{ 
		font-family: 'ELAND_Choice_B'; 
		font-size: 20px;   
		letter-spacing: 5px;
		color: white;     
	}
	.t1{
		margin: 15px 0 10px 0;    
	}
	.t2{    
		margin: 30px 0 10px 0; 
	}
	#bottom_text{
		float: left; 
		width: 70%;  
	}	
	#bottom_text ul{
		font-family: 'ELAND_Choice_L';
		font-size: 16px;
		color: white;      
	}
	#bottom_text li{
		margin-bottom: 10px;   
	}
	#fot_right{    
		float: right;        
	}
	 
	.callcen{
		font-family: 'ELAND_Choice_L';
		font-size: 20px;
		color: white;
		margin: 10px 0 10px 0;	    
	}
	.callcennum{
		font-family: 'ELAND_Choice_B';
		font-size: 40px;
		color: white;
		margin: 10px 0 10px 0;     
	}
	.sns{
		margin-top: 40px;    
	}
	.f, .i{
		width: 50px;
		height: 50px;      
		margin-right: 20px;    
	} 	
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(document).ready(function(){
			
			$('.bottom_link a').click(function(){
				
				var value = $(this).attr('id');
				
				if (value == 'main'){
					location.href='https://www.yongin.ac.kr/';
				}else if (value == 'total'){
					location.href='https://total.yongin.ac.kr/login.do';
				}else if (value == 'LMS'){
					location.href='https://lms.yongin.ac.kr/';
				}else{
					location.href='https://yes.yongin.ac.kr/';
				}
				
			});
			
		});
	
	</script>
</head>
<body>
	<div class="fot_box">
		<div>
			<nav id="bottom_menu">
				<ul>
					<li class="bottom_link"><a href="#" id="main">용인대메인</a> </li>
					<li class="bottom_link"><a href="#" id="total">종합정보서비스</a></li>
					<li class="bottom_link"><a href="#" id="LMS">LMS</a></li>
					<li class="bottom_link"><a href="#" id="yes">YES</a></li>		
				</ul>	
			</nav>
			<hr>
			<div id="fot_items">
				<div id="bottom_text">
					<h3 class="fot_title t1"> 용인대학교 정보 </h3>
					<ul>
						<li> 주소 : 201757017 </li>
						<li> 전화 : 000-000-0000 </li>
						<li>이메일 : 000@0000.000 </li>
					</ul>
					<h3 class="fot_title t2"> 제작자 정보 </h3>
					<ul>
						<li> 201757017 심보경 / 물류통계정보학과 </li>
					</ul>
				</div>
				<div class="fot_right">
					<ul>     
						<li><div class="callcen">고객센터</div><div class="callcennum">1111-2222</div> </li>
						<li><div class="sns"><img src="/yonginstudy/img/facebook.png" class="f"><img src="/yonginstudy/img/instagram.png" class="i"></div> </li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>	
</body>
</html>