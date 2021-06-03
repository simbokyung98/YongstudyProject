<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#slidewrap{
		margin: 0;
	}
	.sec{
		width: 1200px;
		height: 700px;
		positon :relative; 
	}
	.item{
	}
	.item:nth-child(1) { background-image: url("img/slide1.PNG"); background-size: 100% 100%;}
    .item:nth-child(2) { background-image: url("img/slide2.PNG"); background-size: 100% 100%; }
    .item:nth-child(3) { background-image: url("img/slide3.PNG"); background-size: 100% 100%;}
    .item:nth-child(4) { background-image: url("img/slide4.PNG"); background-size: 100% 100%;}
    #left-button{
    	background-image: url("img/left.png");
    	height: 50px;
    	width: 30px;
    	background-size: 100% 100%;
    	border: 0;
    	background-color: transparent;
    	position: absolute;
    	top: 30%;
    	left: 15%;
    	
    }
    #right-button{
    	background-image: url("img/right.png");
    	height: 50px;
    	width: 30px;
    	background-size: 100% 100%;
    	border: 0;
    	background-color: transparent;
    	float: right;
    	position: absolute;
    	top: 30%;
    	right: 15%;
    }
    .but_ul li{
    	float: left;
    	text-align: center;
    	font-family: 'ELAND_Choice_B';
    	position: absolute;
    	top: 40%;
    	font-size: 20px;
    }
    .but_ul img{
    	width: 150px;
    	height: 150px;
    	border-radius: 100px;
    	border: 2px solid #cccccc;
    	
    }
    #butli1{ left: 22%;}
    #butli2{ left: 37%;}
    #butli3{ left: 52%;}
    #butli4{ left: 67%;}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script>
        $(document).ready(function () {
            // 변수를 선언합니다.
            var width = $('[data-role="slider"]').attr('data-width');
            var height = $('[data-role="slider"]').attr('data-height');
            var count = $('[data-role="slider"] div.item').length;
            
            // 스타일을 적용합니다.
            $('[data-role="slider"]').css({
                position: 'relative',
                overflow: 'hidden',
                width: width,
                height: height
            }).find('.container').css({
                position: 'absolute',
                width: count * width,
                overflow: 'hidden'
            }).find('.item').css({
                width: width,
                height: height,
                float: 'left'
            });
            // 변수를 선언합니다.
            var currentPage = 0;
            var changePage = function () {
                $('[data-role="slider"] > .container').animate({
                    left: -currentPage * width
                }, 500);
            };
            // 이벤트를 연결합니다.
            $('#left-button').click(function () {
                if (currentPage > 0) {
                    // 왼쪽으로 이동
                    currentPage = currentPage - 1;
                    changePage();
                }else{
                	currentPage = count - 1;
                	 changePage();
                }
            });
            $('#right-button').click(function () {
                if (currentPage < count - 1) {
                    // 오른쪽으로 이동
                    currentPage = currentPage + 1;
                    changePage();
                }else{
                	currentPage = 1;
                	changePage();
                }
            });
        });
    </script>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main>
		<section class="sec">
	<div data-role="slider" data-width="1200" data-height="300" id="slidewrap">
        <div class="container">
            <div class="item">
            </div>
            <div class="item">
            </div>
            <div class="item">
            </div>
            <div class="item">
            </div>
        	</div>
   		 </div>
    	<button id="left-button"></button>
    	<button id="right-button"></button>
    	<div class="but_wrap">
		<ul class="but_ul">
			<li id="butli1"><div><a><img alt="거울연습실" src="img/mirror.jpg"></a><p>거울연습실</p></div></li>
			<li id="butli2"><div><img alt="훈련장" src="img/judo.jpg"><p>훈련장</p></div></li>
			<li id="butli3"><div><img alt="책상형 강의실" src="img/gang.jpg"><p>책상형 강의실</p></div></li>
			<li id="butli4"><div><img alt="컴퓨터실" src="img/computer.png"><p>컴퓨터실</p></div></li>
		</ul>
	</div>
	</section>
	
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>

</body>
</html>