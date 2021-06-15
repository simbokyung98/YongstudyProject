<%@page import="yong.vo.LectureBook"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
<style type="text/css">

	.admin_main{
		width: 1200px;
		height: 100%:
	}
	.admin_nav{
		width: 1100px;
		clear: left;
		
	}
	.admin_navinside{
		float: left;
		width: 545px;
		height: 40px;
		text-align: center;
		font-family: 'ELAND_Choice_B';
		padding-top: 20px;
		font-size: 20px;	
		border-radius: 10px 10px 0 0;
		margin-left: 5px;
	}
	.act_admin{	
		background: rgba(231,228,221,0.9);	
	}
	
	.suv_admin{	
		background: #66865C;
				
	}
	.act_admin a{
		text-decoration: none;
		color: gray;
	}
	.suv_admin a{
		color: white;
		text-decoration: none;
	}
	#admin_usertablewrap{
		clear: left;
		background: rgba(231,228,221,0.9);
		width: 1070px;
		margin-bottom: 50px;
		padding: 30px 0 100px 30px;
		height: 500px;
	}
	
	
	.admin_calwrap{
		float: left;
		width: 400px;
	}
	.butval{
		background: white;
		width: 40px;
		height: 20px;
		margin: 0;
	}
	.reserlinkwrap{
		text-align: right;
	}
	.reserlink{
		border: 0;
		text-decoration: underline;
		font-size: 16px;
		background: white;
		color: orange;
		
	}
	
	.admin_lecretablewrap{
		width: 570px;
		margin-left: 50px;
		float: left;
	}
	.admin_lecretable{
		width: 100%;
		border-collapse: collapse;
	}
	.admin_lecretable th{
		height: 40px; 
		background: #88A67E;
		font-family: 'ELAND_Choice_L';
	}
	#adlere_thstart{
		border-radius: 5px 0 0 0;
	}
	#adlere_thend{ 
		border-radius: 0 5px 0 0;
	}
	.admin_lecretable td{
		background: white;
		height: 50px;
		text-align: center;
		border-bottom: 2px solid #cccccc;
		font-family: 'ELAND_Choice_L';
	}
	.ad_lere_but{
		border: 2px solid #66865C;
		background: #88A67E;
		padding: 5px 10px;
		font-family: 'ELAND_Choice_L';
		border-radius: 3px;
		color: white; 
	}
	.reserlinkwrap{
		height: 20px;
		width: 40px;
	}
</style>
<script type="text/javascript">
	var today = new Date();//오늘 날짜
	var date = new Date();// today를 세어줄꺼임
	
	function buildCalendar(){//현재 달 달력 만들기
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		//new를 쓰면 +1을 해주지 않아도 달을 정확하게 받아옴
		//이번달 첫째날 가져오기
		var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
		//getMonth()+1 을 써서 다음달을 가져오고 0을 가져오게해서 이번달 마지막날 소환
		var tbCalendar = document.getElementById("calendar");
		//날짜 찍을 테이블 변수 만들기 일까지 다 찍히게
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		//테이블에 정확한 날짜를 찍을 변수
		tbCalendarYM.innerHTML = "<span id='y'>"+today.getFullYear()+"</span>" + "년" + "<span id='m'>"+ (today.getMonth()+1)+"</span>월";
		tbCalendarYM.style.fontFamily = 'ELAND_Choice_L';
		tbCalendarYM.style.fontSize = "20px";
		//innerHTML : js를 html 형식으로 변경
		// 해당 달 연도와 달을 표시
		
		
		var row = null;
		row = tbCalendar.insertRow();
		//테이블에 새로운 열 삽입 하여 초기화
		var cnt = 0;
		//count 로서 셀의 갯수를 세어줄꺼임
		
		for(i=0;i<doMonth.getDay();i++){
			//이번달 day수 만큼 돌림
			cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
			cnt = cnt +1; //열의 위치 다음으로 위치
		}
		//달력 출력
		for (i=1;i<=lastDate.getDate();i++){
			cell = row.insertCell();
			cell.innerHTML = "<div class='butval' value="+i+"><font color=black>"+i+"</div><div class='reserlinkwrap' id="+i+"></div>"; //셀의 0부터 마지막 데이까지 HTML 문법 넣기
			cnt = cnt+1;//열의 위치 다음칸으로
			if(cnt %7 == 1){
				//일요일 구하기
				cell.innerHTML = "<div class='butval' value="+i+"><font color = red>" + i+"</div><div class='reserlinkwrap' id="+i+"></div>";
				//7번째 cell에만 색칠
			}
			if(cnt%7 == 0){
				//토요일 구하기
				cell.innerHTML ="<div class='butval' value="+i+"><font color=skyblue>" + i+"</div><div class='reserlinkwrap' id="+i+"></div>";
				row = calendar.insertRow();
			}
			cell.style.border = "1px solid gray";
			cell.style.verticalAlign = 'top';
			cell.style.fontFamily ='ELAND_Choice_B';
			cell.style.padding = '5px';
			cell.style.background = 'white';
		}
	}	
</script>
<%
	ArrayList<LectureBook> lectBooks = (ArrayList<LectureBook>)request.getAttribute("lectureBooks");
%>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function() { 
		var year = $('#y').text();
		var month = $('#m').text();
		for(var i=0;i<=31;i++){
			var date = year + "년" + month +"월"+i+"일";
			<%
				for(int j=0;j<lectBooks.size();j++){
					LectureBook lectureBook = lectBooks.get(j);
			%>
					var bookdate = '<%= lectureBook.getBookdate()%>';
					var bookcount = '<%= lectureBook.getCount()%>';
					if(date == bookdate){
						var date = "<button type='button' class='reserlink' onclick='location.href=`lecturelist.do?date=" + bookdate + "`'>" + bookcount + "</button>";
						$('#'+i).html(date);
					}
			<%
				}			
			%>		
		}		
	});
</script>
</head>
<body>
	<header> 
		<%@ include file="factor/header.jsp" %>
	</header>
	<main class="admin_main">
		<nav class="admin_nav">
			<div class="admin_navinside suv_admin">
				<a href="userinfo.do?job=all" >관리자 회원 관리</a>
			</div>
			<div class="admin_navinside act_admin">
				<a href="adminlecture.do">관리자 강의실 예약 관리</a>
			</div>
		</nav>
		<div id="admin_usertablewrap">
			<div class="admin_calwrap">
				<table id="calendar">
					<tr>					
						<td id="tbCalendarYM" colspan="2">yyyy년 m월</td>
					</tr>
				</table>
				<script language="javascript" type="text/javascript">
						buildCalendar();
				</script>
			</div>
			<div class="admin_lecretablewrap">
				<table class="admin_lecretable">
					<thead>
						<tr>
							<th id="adlere_thstart">강의실</th>
							<th>예약자</th>
							<th>예약시간</th>
							<th>상태</th>
							<th id="adlere_thend">확인</th>
						</tr>
					</thead>
					<tbody>
						<%
							ArrayList<LectureBook> lecturelist = (ArrayList<LectureBook>)request.getAttribute("lecturelist");
						
							if(lecturelist != null ){
								for(int i=0;i<lecturelist.size();i++){
									LectureBook lectureBook2 = lecturelist.get(i);
						%>
									<tr>
										<td><%=lectureBook2.getLecturename() %></td>
										<td><%=lectureBook2.getUserid() %></td>
										<td><%=lectureBook2.getBooktime() %></td>
										<td>
										<%
											if(lectureBook2.getConfirm() == null){
										%>
											대기
										<% 		
											}else{
										%>
											<%=lectureBook2.getConfirm() %>
										<% 		
											}
										%>
										</td>
										<td>
											<button type="button" class="ad_lere_but" onclick="location.href='updateconfirm.do?state=가능&key=<%=lectureBook2.getBookkey()%>'">가능</button>
											<button type="button" class="ad_lere_but" onclick="location.href='updateconfirm.do?state=불가능&key=<%=lectureBook2.getBookkey()%>'">불가능</button> 
										</td>
									</tr>
						<%			
								}
							}else{
								
							}
						%>
						
					</tbody>
				</table>
			</div>
			</div>
		
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
		
</body>
</html>