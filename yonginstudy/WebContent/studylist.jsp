<%@page import="yong.vo.Study"%>
<%@page import="yong.vo.Lecture"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0 auto;
		padding: 0;
	}
	#studylistmain{
		width: 1200px;
		height:100%;
		positon :relative; 
	}
	#studylistaside{
		height: 120px;
		text-align: left;
	}
	#stl_h3{
		padding: 50px 0 50px 500px;
		font-family: 'ELAND_Choice_B';
		font-size: 20px;
		background: #88A67E;
		color: white;
	}
	
	.stlfactor_wrap{
		width: 250px;
		height: 250px;
		float: left;
		box-shadow: 5px 5px 5px #cccccc;
		background: #dddddd;
		margin: 0 50px 30px 0;
	}
	.stl_imgwrap{
		widows: 250px;
		height: 150px;
	}
	.stl_contentwrap{
		width: 240px;
		height: 100px;
		padding-left: 10px;
	}
	.stl_img{
		width: 250px;
		height: 150px;
	}
	#stl_sec{
		width: 1200px;
		clear: left;
		padding: 40px 20px 0 20px;
		height: 600px;
		margin: 0;
	}
	.stl_title{
		font-family: 'ELAND_Choice_B';
		font-size: 20px;
		padding: 10px 0 5px 0;
	}
	.stl_location{
		font-family: 'ELAND_Choice_L';
		font-size: 15px;
	}
	.stl_count{
		padding-bottom: 5px;
	}
	.lec_detail_but:active, .lec_detail_but:visited, .lec_detail_but:link {
		color: black;
	}
	.lec_detail_but:hover {
		color: #66865C;
	}
	.stl_but{
		width: 50px;
		height: 30px;
		float: right;
		margin: 0 10px 20px 0;
		border: 0;
		color: white;
		font-weight: bold;
		font-family: 'ELAND_Choice_L';
		background: gray;
	}
	
	.stlwrite_wrap{
		width: 100px;
		height: 250px;
		text-align: center;
		
	}
	.stl_write_but{
		margin-top: 70px;
		width: 250px;
		float: left;
		text-align: center;
	}
</style>
<script>
		window.name = "parent";
        function writebut(){
            var url = "studywrite.jsp";
            var name = "studywrite pop";
            var option = "width = 800, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
        function viewbut(key){
            var url = "studyview.do?key="+key ;
            var name = "studyview pop";
            var option = "width = 800, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
      
    </script>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="studylistmain">
		<aside id="studylistaside">
			<div id="stl_h3"><h3>스터디 목록</h3></div>
		</aside>
		<section id="stl_sec">
		<%
			ArrayList<Study> studies = (ArrayList<Study>)request.getAttribute("studies");
			String result = (String)request.getAttribute("result");
		%>
		<script type="text/javascript">
			window.onload = function(){
				var result =  '<%=result%>';
				if(result != 'null'){
					alert("<%=result%> " );				
				}
			}	
		</script>
		<%
			if (!studies.isEmpty()){
				for(int i=0;i<studies.size();i++){
					Study study = studies.get(i);
					String applypeople = (String)request.getAttribute(study.getStudykey()+"");
					if(study.getImg() != null){
		%>
		
						<div class="stlfactor_wrap">
							<div class="stl_imgwrap">
								<img alt="mirror" src="img/<%=study.getImg() %>" class="stl_img">
							</div>
							<div class="stl_contentwrap">
								<div class="stl_title"><%=study.getTitle() %></div>
								<div class="stl_count">모집인원 : <%=applypeople %>/<%=study.getMaxpeople() %></div>
								<div class="stl_location"><%=study.getMajor()%> 용린이 <button type="button" class="stl_but" onclick="viewbut(<%=study.getStudykey() %>)" >확인</button> </div>
							</div>	
						</div>
					
		<%
					}else{
		%>
						<div class="stlfactor_wrap">
							<div class="stl_imgwrap">
								<img alt="mirror" src="img/stumain.PNG" class="stl_img">
							</div>
							<div class="stl_contentwrap">
								<div class="stl_title"><%=study.getTitle() %></div>
								<div class="stl_count">모집인원 : <%=applypeople %>/<%=study.getMaxpeople() %></div>
								<div class="stl_location"><%=study.getMajor()%> 용린이 <button type="button" class="stl_but" onclick="viewbut(<%=study.getStudykey() %>)" >확인</button> </div>
							</div>	
						</div>
			
		<% 
					}
				}
			}
		%>
					<a href="javascript:writebut()"><div class="stl_write_but"><img alt="스터디 추가" src="img/plus.png" style="width: 100px; height: 100px;"></div> </a>
		
		</section>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>