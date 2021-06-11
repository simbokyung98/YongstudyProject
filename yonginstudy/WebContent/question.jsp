<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#news_main{
		height:110%;
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
	}
	#stl_h3 h3{
	}
	#news_aside{
		width: 20%;
		float: left;
		margin-top: 50px;	
		height: 500px;
	}
	.news_title_wrap{
		padding: 20px;
		background: #66865C;
		list-style-type: none;
	}
	.news-title{
		font-family: 'ELAND_Choice_L';
		font-size: 25px;
		letter-spacing: 2px;	 
		color: white; 
	}
	.news-ul{
		 font-family: 'ELAND_Choice_L';
		font-size: 20px;
	}
	.news_img_wrap {
		text-align: center;
		padding: 30px 0 30px 0;
		border: 1px solid #dddddd;
		list-style-type: none;
	}
	.news_list_wrap{
		border: 1px solid #dddddd;
		padding: 15px 0 15px 10px;
		list-style-type: none;
	}
	.news-ul span{
		float: right;
		margin-right: 15px;
	}
	.news-ul a:link, .news-ul a:visited, .news-ul a:active{
		text-decoration: none;
		color: black;
	}
	.news-ul a:hover{   
		color: black;
		font-weight: bold;
	} 



	#news_section{
		width: 79%;
		float: left;
		margin-top: 50px; 
		margin-bottom: 50px;
	}
	#notion_title_wrap{
		width: 850px;
		margin-bottom: 20px;
	}
	#notion_spanB{
		 font-family: 'ELAND_Choice_B';
		 font-size: 35px;
		 padding-right:20px ;
	}
	#notion_spanL{
		 font-family: 'ELAND_Choice_L';
		color:#aaaaaa; 
	}
	.question_things{
		width: 850px;
	}
	.question_things li{
		padding: 15px 0 45px 0;
		border-bottom: 1px solid gray;
		border-top: 1px solid gray;
		list-style: none;
	}
		
	.question_things h5{
		float: left;
		padding-left: 20px;
		font-family: 'ELAND_Choice_B';
		font-size: 18px;
		letter-spacing: 3px;
		margin-top: 5px;
		font-weight: bold;
	}
	.question_things li:hover{
		color: #66865C;
	}
	.question_things button{
		float: right;
		padding: 5px 20px 0 0;
		border: 0;
		background: white;
	}
	.question_content{
		height: 170px;
		background: #dddddd;
		border-bottom: 1px solid gray;
		display: none;
		
	}
	.question_inside{
		padding: 20px 20px 20px 20px;
	}
	.question_inside_left{ 
		float: left;
		font-family: 'ELAND_Choice_L';
		color:#66865C; 
		padding: 5px 5px 0 0;
		font-size: 20px;
	}
	.question_inside_right{
		float: left;
		font-family: 'ELAND_Choice_L';
		margin: 10px 0 0 10px;
	} 
	
	
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function(){
		$('.but_click').click(function(){
			
			  if($(this).parent().next().css('display') == 'none'){
				  $(this).parent().next().show();
			  }else{
				  $(this).parent().next().hide();
			  }
			
		});
	});
</script>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="news_main">
	<div id="stl_h3"><h3>공지사항</h3></div>
	<aside id="news_aside">	
			<ul class="news-ul">
				<li class="news_title_wrap"><h4 class="news-title">커뮤니티</h4></li>  
				<li class="news_img_wrap"><img alt="용인대마크" src="img/yongcha.jpg" style="width: 150px;height: 150px;"><p>용린이를 위한 고객센터</p> </li>
				<li class="news_list_wrap"><a href="notionlist.do" class="news-li" >공지사항<span>></span></a></li>
				<li class="news_list_wrap"><a href="question.jsp" class="news-li" style="font-weight: bold;color: #66865C;">Q&A<span>></span></a></li>
			</ul>	
		</aside>
		<section id="news_section">
			<div id="notion_title_wrap">
				<span id="notion_spanB">Q&A</span><span id="notion_spanL">Yong 스터디 자주 물어보는 질문</span>
			</div>
			<div id="question_wrap">
						<ul class="question_things" id="1">
							<li>
							<h5>Q. 회원 가입 방법이 궁금해요! </h5> 
							<button class="but_click" id="1"><img src="img/open.png" style="width: 20px; height: 20px;"> </button>
							</li>
							<div class="question_content">
								<div class="question_inside">
									<div class="question_inside_left"><h4>A.</h4></div>
									<div class="question_inside_right">
										회원가입은 회원가입 버튼을 누르세요<br><br>
										개인정보를 입력하세요<br><br>
										그럼 됩니다<br>
									</div>
								</div>
							</div>
						</ul>
						<ul class="question_things" id="1">
							<li>
							<h5>Q. 주문 취소 하고 싶어요 </h5> 
							<button class="but_click" id="1"><img src="img/open.png" style="width: 20px; height: 20px;"> </button>
							</li>
							<div class="question_content">
								<div class="question_inside">
									<div class="question_inside_left"><h4>A.</h4></div>
									<div class="question_inside_right">
										로그인 후 마이페이지에 들어가세요<br><br>
										상품이 배송준비중인지 확인하세요<br><br>
										배송 준비중이라면 옆에 취소 버튼으로 취소가 가능합니다<br>
										배송중이라면 취소가 불가능합니다<br>
									</div>
								</div>
							</div>
						</ul>
						<ul class="question_things" id="1">
							<li>
							<h5>Q. 레시피 재료를 모두 구매할 필요는 없어요 </h5> 
							<button class="but_click" id="1"><img src="img/open.png" style="width: 20px; height: 20px;"> </button>
							</li>
							<div class="question_content">
								<div class="question_inside">
									<div class="question_inside_left"><h4>A.</h4></div>
									<div class="question_inside_right">
										장바구니 넣기 전 필요한 제품 제외 상품엔 체크박스를 제외합니다<br><br>
										장바구니에 넣습니다<br><br>
										장바구니에 가서 원하는 상품만 담겼는지 확인합니다<br>
									</div>
								</div>
							</div>
						</ul>
					</div>	
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>