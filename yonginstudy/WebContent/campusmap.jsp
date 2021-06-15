<%@page import="yong.vo.Notion"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠퍼스 맵</title>
<style type="text/css">
	#map_main{
		height:1000px;
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
	#map_wrap{
		width: 800px;
		padding-top: 100px;
	}


</style>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="map_main">
	<div id="stl_h3"><h3>캠퍼스 맵</h3></div>
	<div id="map_wrap">
		<img alt="캠퍼스맵" src="img/map.PNG">
	</div>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>