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
		color: gray;	
	}
	.suv_admin{	
		background: #66865C;
		color: white;		
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
		width: 300px;
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
			cell.innerHTML = "<div class='butval' value="+i+"><font color=black>"+i+"</div><div class='reserlinkwrap'><button value="+i+" type='button' class='reserlink'>1</button></div>"; //셀의 0부터 마지막 데이까지 HTML 문법 넣기
			cnt = cnt+1;//열의 위치 다음칸으로
			if(cnt %7 == 1){
				//일요일 구하기
				cell.innerHTML = "<div class='butval' value="+i+"><font color = red>" + i+"</div><div class='reserlinkwrap'><button value="+i+" type='button' class='reserlink'>1</button></div>";
				//7번째 cell에만 색칠
			}
			if(cnt%7 == 0){
				//토요일 구하기
				cell.innerHTML ="<div class='butval' value="+i+"><font color=skyblue>" + i+"</div><div class='reserlinkwrap'><button value="+i+" type='button' class='reserlink'>1</button></div>";
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
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main class="admin_main">
		<nav class="admin_nav">
			<div class="admin_navinside suv_admin">
				관리자 회원 관리
			</div>
			<div class="admin_navinside act_admin">
				관리자 강의실 예약 관리
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
			<div>
				<table>
					<thead>
						<tr>
							<th>강의실</th>
							<th>예약자</th>
							<th>예약시간</th>
							<th>확인</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>거울연습실1</td>
							<td>aaa</td>
							<td>17:00</td>
							<td><button type="button">대기</button><button type="button">가능</button><button type="button">불가능</button> </td>
						</tr>
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