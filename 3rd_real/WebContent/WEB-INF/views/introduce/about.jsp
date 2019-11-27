<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/jsp_prj/common/css/main.css"/>
<style type="text/css">
	#class4Wrap{ min-width:1100px; min-height: 1100px; margin: 0px auto;}
	/* 헤더 시작*/
	#naviBar{ min-width:1100px; min-height: 130px; position:relative; font-size: 20px;}
	/* 헤더 끝 */
	/* 컨테이너 시작  */
	#container{ width:1100px; height: 0px auto; position:relative; margin: 0px auto; margin-top:70px; margin-bottom: 10%; }
	.btn{width: 100px;height: 40px;}
	.nav-item{margin: 10px;}
	#sub-menuItem{font-family:"고딕";}
	#ex{padding-bottom: 20px; width: 150px; font-size: 15px;}
	/* 컨테이너 끝  */
	/* 푸터 시작  */
	#footer{  min-width:1100px;min-height: 250px;position:relative;  background-color: #E3C6C2;}
	#fContent{ width: 1100px;height: 110px; padding-top: 30px; margin-right: auto; margin-left: auto }
	/* 푸터 끝  */
	#hTitle{font-family: '고딕'; font-size: 30px; font-weight: bold;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Amaranth&display=swap" rel="stylesheet">
<style type="text/css">
.alert-danger{color: #000000; background-color: #E3C6C2}
</style>
<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>
<body>
<div id="class4Wrap">
<div id="naviBar">
 	<!-- MENU 시작 -->
		<%@include file="../../../common/navbar/nav.jsp" %>
 	<!-- MENU 끝 -->
</div>
<div id="container">   
          
	<div style="font-size: 30px; font-weight: bold; text-align: center">
	about
	</div>
	<div style="font-size: 20px; margin: auto; text-align: center">
	가치에 의미를 더하다
	</div><br/>
	
	<div style="margin: auto;">
	<img style="width:1100px;height:300px" src="http://localhost:8080/3rd_pprj/common/images/main.PNG"></div><br/>
	
	<div class="card-deck" style="margin-top: 100px">
	  <div class="card">
	  <a href="about1.jsp">
	    <img src="http://localhost:8080/3rd_pprj/common/images/2.PNG" id="roomA"  class="card-img-top" >
	  </a>
	    <div class="card-body">
	      <h5 class="card-title" style="font-weight: bold">"파티룸+브라이덜샤워+프로포즈"</h5>
	      <p class="card-text">행복이 시작되는 다목적 복합문화공간 <br/>
	강남구 중심에 위치해 접근성이 편리하며 9m의 높은 천고를 가진 넓은 홀에 콘서트도 가능한 최고의 조명, 음향 및 영상 시설을 보유하고 있어 세미나, 강연, 파티, 기업 행사등 다양한 목적에 따라 맞춤형 공간을 즐기실 수 있습니다.<br/><br/>
	특별한 순간 이니에스타 등 국내에서 접하기 쉽지 않은 와인들을 엄선해 구비하여 와인 파티의 공간 및 찾아주시는 모든 분들께 특별함을 선사해 드립니다.
	    </div>
	  </div>
	  <div class="card">
	  	<a href="about2.jsp">
	    <img src="http://localhost:8080/3rd_pprj/common/images/4.jpg"  id="roomC" class="card-img-top" >
	    </a>
	    <div class="card-body">
	      <h5 class="card-title" style="font-weight: bold">"그룹스터디룸+세미나실+강연장"</h5>
	      <p class="card-text">각각  구분된 공간으로서, 사용하고자 하시는 목적에 따라 선택하실 수 있습니다.<br/><br/>
	2인실에서부터 16인실까지의 그룹 스터디 또는 세미너 룸과
	1인실에서부터 5인실까지의 Co-working 공유 오피스, 
	그리고, 각종 행사와 모임 진행이 가능한 전망 좋은 카페테리아, 
	12층 건물의 최상층에 위치하여, 멋진 낙조를 매일 저녁 감상하실 수 있는 곳입니다.<br/>
	    </div>
	  </div>
	</div>	
    
</div>

<div id="footer">
  <div id="fContent">
	<div style="float: left; margin-left:150px; margin-right:8%; font-size:14px;">
		<h4><strong>[:P]</strong></h4>
		사업자명 : (주)Baek's company<br/>
		 대표이사 : 윤태식   <br/> 
		이메일 : wo2015@naver.com<br/>
		대표전화 : 02-336-0562<br/>
		사업자등록번호 : 138-87-00193<br/>
		<br/>
		</div>
		<div style="float: left; margin-right:8%; font-size:14px;">
		<strong>LOCATION</strong><br/><br/>
		서울시 강남구 역삼동 409-7 3F, 4F<br/><br/>
		 <strong>OPEN</strong><br/><br/>
		MON-FRI 10:00 ~ 19:00<br/>
		</div>
		<div style="float: left; font-size:14px;">
		<strong>BANK ACCOUNT</strong><br/><br/>
		기업은행 015-074953-04-018<br/>
		​예금주 : 백승규<br/><br/><br/>
			&copy;CopyRight. AllRight Reserved.<br/>
		</div>
	</div>
</div>
</div>

</body>
</html>