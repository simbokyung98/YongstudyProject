<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강의실 예약</title>
<style type="text/css">
	#lefture_detil_main{
		width: 1200px;
		height: 1000px;
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
	.edidi_content {
		float: left;
		padding: 30px 0 0 30px;
	}
	.tbCalendarYM{
		font-family: 'ELAND_Choice_L';
		font-size: 18px;
	}
	#calendar{
		border-collapse: collapse;
		width: 700px;
		height: 500px;
		table-layout: fixed;
		text-align: left;
	}
	.cal_but{
		margin: 40px 0 0 60px;
	}
	.cal_but button{
		border: 0;
		font-family: 'ELAND_Choice_L';
		background: #88A67E;
		font-size: 20px;
		color: white;
		width: 30px;
		height: 30px;
		border-radius: 5px;
	}
	#cal_notion{
		font-family: 'ELAND_Choice_L';
		font-size: 15px;
		color: red;
	}
	#caldetail_wrap{
		clear: left;
		float: left;
		width: 620px;
		height: 250px;
		background: #E7E4DD;
		padding: 20px 0 0 60px;
		margin: 10px 0 10px 10px;
		
	}
	.calde_li{
		float: left;
	}
	
	.calinsidebut{
		width: 150px;
		height: 50px;
		border: solid 2px  #88A67E;
		color: #88A67E;
		font-family: 'ELAND_Choice_L';
		background: white;	
		font-size: 18px;
		letter-spacing: 3px;
	}
	.calinsidebut:hover, .calinsidebut:link{
	}
	#option_wrap{
		width: 350px;
		height: 500px;
		background: #E7E4DD;
		float: right;
		margin: 50px 0 0 0;
	}
	#option_title{
		width: 350px;
		height: 300px;
		padding: 20px;
	}
	#option_title h1{
		margin-bottom: 20px;
		font-family: 'ELAND_Choice_B';
	}
	#option_title p{
		font-family: 'ELAND_Choice_L';
	}
	#option_ul{
		margin-left:20px;
	}
	#option_ymd{
		font-family: 'ELAND_Choice_L';
	}
	#option_time{
		font-family: 'ELAND_Choice_L';
		font-size: 20px;
		margin: 20px 0 20px 0;
	}
	.option_butinput{
		border: 3px solid #88A67E;
		color: #88A67E;
		width: 300px;
		height: 50px;
		font-size: 20px;
		font-family: 'ELAND_Choice_B';
		background: white;
		
	}
	#hiden{
		display: none;
	}
	#caldetail_wrap{
		display: none;
	}
	.calde_inside_ul li{
		margin: 10px;
	}
	.calde_inside_ul li .calde_check_label{
		width: 120px;
		height: 40px;		
		text-align: center;
		margin: 10px 20px 15px 20px;
		cursor: pointer;
  		display: flex;
  		
	}
	.calde_check_label input[type="checkbox"]{
		display: none;
	}
	.time_check{
		position: relative;
  		isplay: flex;
 		 width: 150px;
 		 flex-direction: column;
 		 align-items: center;
 		 background-color: white;
 		 border: 2px solid #88A67E;
 		 color: #88A67E;
 		 font-size: 18px;
 		 transition: 0.5s;
 		 user-select: none;
 		 padding-top: 5px;
	}
	.calde_check_label input[type="checkbox"]:checked ~ .time_check{
		background: red;
  		color: #fff;
  		border: 2px solid red;
`	}
	.container .btn {
		  width: 130px;
		  height: 40px;
		  position: absolute;
		  left: 550px;
		  font-size: 16px;
		  border: 0;
		  outline: none;
		  transition: 0.1s cubic-bezier(0.755, 0.05, 0.855, 0.06);
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
			cell.innerHTML = "<div class='butval' value="+i+"><font color=black>"+i+"</div><div class='cal_but'><button value="+i+" type='button'>+</button></div>"; //셀의 0부터 마지막 데이까지 HTML 문법 넣기
			cnt = cnt+1;//열의 위치 다음칸으로
			if(cnt %7 == 1){
				//일요일 구하기
				cell.innerHTML = "<div class='butval' value="+i+"><font color = red>" + i+"</div><div class='cal_but'><button value="+i+" type='button'>+</button></div>";
				//7번째 cell에만 색칠
			}
			if(cnt%7 == 0){
				//토요일 구하기
				cell.innerHTML ="<div class='butval' value="+i+"><font color=skyblue>" + i+"</div><div class='cal_but'><button value="+i+" type='button'>+</button></div>";
				row = calendar.insertRow();
			}
			cell.style.border = "1px solid gray";
			cell.style.verticalAlign = 'top';
			cell.style.fontFamily ='ELAND_Choice_B';
			cell.style.padding = '5px';
		}
	}
	
</script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(function(){
		   $(".cal_but button").on('click',function(){  
			   if ( $('#caldetail_wrap').css("display") == "none"){	
				   $(this).parent().parent().parent().css({ "border": "2px solid red"});
					var year = $('#y').text();
					var month = $('#m').text();
					var day = $(this).attr('value');
					var hid = $('#hiden').html();
					$(this).parent().parent().parent().parent().after("<tr class='chose'><td colspan='7'>"+ hid+"</td></tr>"); 
					$('#caldetail_wrap').css("display", "block");
					 document.getElementById('option_ymd').innerText = year + "년" + month + "월" + day + "일";
					 $('#bookdate').val(year + "년" + month + "월" + day + "일");
					
					
			   }else{
				   $('tr').remove('.chose');
				   $('#caldetail_wrap').css("display", "none");
				   $(this).parent().parent().parent().css({ "border": "1px solid gray"});
				  
			   }
			  
			 });
		   
		});
		
	</script>
</head>
<body>
	<header>
		<%@ include file="factor/header.jsp" %>
	</header>
	<main id="lefture_detil_main">
		<form action="lecturebook.do" method="post">
		<section>
			<div id="letde_title">
				강의실 예약
			</div>
			<div>
			<div class="edidi_content con1">
				<table id="calendar">
					<tr>					
						<td id="tbCalendarYM">yyyy년 m월</td>
						<td colspan="6" id="cal_notion">*예약은 해당 달만 받습니다[6시간 까지 가능]</td>
					</tr>
				</table>
				<script language="javascript" type="text/javascript">
						buildCalendar();
				</script>
				
			</div>
		
			<div id="hiden">
				<div id="caldetail_wrap">
					<ul class="container">
						<li class="calde_li">
							<ul class="calde_inside_ul">
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="09:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오전 09:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="10:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오전 10:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="11:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오전 11:00</span>
								</div>
								</label>
								</li>
							</ul>
						</li>
						<li class="calde_li">
							<ul class="calde_inside_ul">
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="12:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 12:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="13:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 1:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="14:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 2:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="15:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 3:00</span>
								</div>
								</label>
								</li>
							</ul>
						</li>
						<li class="calde_li">
							<ul class="calde_inside_ul">
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="16:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 4:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="17:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 5:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="18:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 6:00</span>
								</div>
								</label>
								</li>
								<li>
								<label class="calde_check_label">
								<input type="checkbox" value="19:00" class="calinsidebut" name="time" onclick='getCheckedCnt()'/>
								<div class="time_check">
									<span>오후 7:00</span>
								</div>
								</label>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</section>
		<aside>
			<div id="option_wrap">
				<div id="option_title">
					<h1>${lecture.title }</h1>
					<p>장소 : ${lecture.college }  ${lecture.location }</p>
				</div>
				<ul id="option_ul">
					<li id="option_ymd">0000년 00월 00일</li>
					<li id="option_time">총 <span style="font-weight: bold; font-size: 30px;" id="result">  </span> 시간</li>
					<li id="option_but">
					<input type="hidden" value="${lecture.title }" name="lecturename">
					<input type="hidden" name="bookdate" id="bookdate">
					<input type="submit" value="예약하기" class="option_butinput"></li>
				</ul>
			</div>
		
		</aside>
		</form>
		<script type="text/javascript">
			 function getCheckedCnt()  {
			  // 선택된 목록 가져오기
			  const query = 'input[name="time"]:checked';
			  const selectedElements = 
			      document.querySelectorAll(query);
			  
			  // 선택된 목록의 갯수 세기
			  const selectedElementsCnt =
			        selectedElements.length;
			  
			  // 출력
			  document.getElementById('result').innerText
			    = selectedElementsCnt;
			}
		</script>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>