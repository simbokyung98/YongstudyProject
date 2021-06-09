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
		width: 600px;
		height: 250px;
		background: #E7E4DD;
		padding: 10px 0 0 80px;
		margin: 10px 0 10px 10px;
		
	}
	.calde_li{
		float: left;
	}
	.calde_inside_ul li{
		width: 150px;
		height: 50px;		
		text-align: center;
		margin: 10px;
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
		margin: 50px 60px 0 0;
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
	#option_but button{
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
	
</style>
<script type="text/javascript">
	var today = new Date();//���� ��¥
	var date = new Date();// today�� �����ٲ���
	
	function buildCalendar(){//���� �� �޷� �����
		var doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
		//new�� ���� +1�� ������ �ʾƵ� ���� ��Ȯ�ϰ� �޾ƿ�
		//�̹��� ù°�� ��������
		var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
		//getMonth()+1 �� �Ἥ �������� �������� 0�� ���������ؼ� �̹��� �������� ��ȯ
		var tbCalendar = document.getElementById("calendar");
		//��¥ ���� ���̺� ���� ����� �ϱ��� �� ������
		var tbCalendarYM = document.getElementById("tbCalendarYM");
		//���̺� ��Ȯ�� ��¥�� ���� ����
		tbCalendarYM.innerHTML = "<span id='y'>"+today.getFullYear()+"</span>" + "��" + "<span id='m'>"+ (today.getMonth()+1)+"</span>��";
		tbCalendarYM.style.fontFamily = 'ELAND_Choice_L';
		tbCalendarYM.style.fontSize = "20px";
		//innerHTML : js�� html �������� ����
		// �ش� �� ������ ���� ǥ��
		
		
		var row = null;
		row = tbCalendar.insertRow();
		//���̺� ���ο� �� ���� �Ͽ� �ʱ�ȭ
		var cnt = 0;
		//count �μ� ���� ������ �����ٲ���
		
		for(i=0;i<doMonth.getDay();i++){
			//�̹��� day�� ��ŭ ����
			cell = row.insertCell();//�� ��ĭ��ĭ ��� ������ִ� ����
			cnt = cnt +1; //���� ��ġ �������� ��ġ
		}
		//�޷� ���
		for (i=1;i<=lastDate.getDate();i++){
			cell = row.insertCell();
			cell.innerHTML = "<div class='butval' value="+i+"><font color=black>"+i+"</div><div class='cal_but'><button value="+i+">+</button></div>"; //���� 0���� ������ ���̱��� HTML ���� �ֱ�
			cnt = cnt+1;//���� ��ġ ����ĭ����
			if(cnt %7 == 1){
				//�Ͽ��� ���ϱ�
				cell.innerHTML = "<div class='butval' value="+i+"><font color = red>" + i+"</div><div class='cal_but'><button value="+i+">+</button></div>";
				//7��° cell���� ��ĥ
			}
			if(cnt%7 == 0){
				//����� ���ϱ�
				cell.innerHTML ="<div class='butval' value="+i+"><font color=skyblue>" + i+"</div><div class='cal_but'><button value="+i+">+</button></div>";
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
		<section>
			<div id="letde_title">
				���ǽ� ����
			</div>
			<div>
			<div class="edidi_content con1">
				<table id="calendar">
					<tr>					
						<td id="tbCalendarYM">yyyy�� m��</td>
						<td colspan="6" id="cal_notion">*������ �ش� �޸� �޽��ϴ�</td>
					</tr>
				</table>
				<script language="javascript" type="text/javascript">
						buildCalendar();
				</script>
				
			</div>
			<div id="hiden">
				<div id="caldetail_wrap">
					<ul>
						<li class="calde_li">
							<ul class="calde_inside_ul">
								<li><input type="button" value="09:00" class="calinsidebut"></li>
								<li><input type="button" value="10:00" class="calinsidebut"></li>
								<li><input type="button" value="11:00" class="calinsidebut"></li>
							</ul>
						</li>
						<li class="calde_li">
							<ul class="calde_inside_ul">
								<li><input type="button" value="12:00" class="calinsidebut"></li>
								<li><input type="button" value="13:00" class="calinsidebut"></li>
								<li><input type="button" value="14:00" class="calinsidebut"></li>
								<li><input type="button" value="15:00" class="calinsidebut"></li>
							</ul>
						</li>
						<li class="calde_li">
							<ul class="calde_inside_ul">
								<li><input type="button" value="16:00" class="calinsidebut"></li>
								<li><input type="button" value="17:00" class="calinsidebut"></li>
								<li><input type="button" value="18:00" class="calinsidebut"></li>
								<li><input type="button" value="19:00" class="calinsidebut"></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</section>
		<aside>
			<div id="option_wrap">
				<div id="option_title">
					<h1>�ſ￬���� 1</h1>
					<p>��� : ��ȭ�������� 4�� 3���ǽ�</p>
				</div>
				<ul id="option_ul">
					<li id="option_ymd">2021�� 6�� 30��</li>
					<li id="option_time">�� <span style="font-weight: bold; font-size: 30px;"> 2 </span> �ð�</li>
					<li id="option_but"><button type="submit">�����ϱ�</button> </li>
				</ul>
			</div>
		</aside>
	</main>
	<footer>
		<%@ include file="factor/footer.jsp" %>
	</footer>
</body>
</html>