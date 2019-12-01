<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/3rd_real/common/css/main.css"/>
<style type="text/css">
	#class4Wrap{ min-width:1100px; margin: 0px auto;
	display: flex; min-height: 100vh; flex-direction: column;
	}
	
	/* 헤더 시작*/
	#naviBar{ min-width:1100px; min-height: 130px; position:relative; font-size: 20px;}
	/* 헤더 끝 */
	/* 컨테이너 시작  */
	#container{ width:1100px; height: 0px auto; position:relative; margin: 0px auto; margin-top:70px; margin-bottom: 10%; flex: 1;}
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
	
	html,body{ margin:0; padding:0; width:100%; height:100% }

	
	
	@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,800);
figure.snip1200 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 250px;
  max-width: 500px;
  max-height: 370px;
  width: 100%;
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip1200 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip1200 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip1200 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip1200 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip1200 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip1200 h2 span {
  font-weight: 800;
}
figure.snip1200 h2:before,
figure.snip1200 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip1200 h2:before {
  left: -1000%;
}
figure.snip1200 h2:after {
  right: -1000%;
}
figure.snip1200 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip1200 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip1200:hover img,
figure.snip1200.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip1200:hover figcaption,
figure.snip1200.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip1200:hover p,
figure.snip1200.hover p {
  opacity: 1; 
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}
	
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
	//여기서 이미지가 클릭되었을 때 캘린더 예약창으로
	
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








 

	<div align="center" style="font-size: 35px; font-weight: bold;">Reservation</div>
		<div style="text-align: center; margin-bottom: 20px">
			<span style="font-size: 25px; font-weight: bold; background-color: red; color: white; ">
				12월 얼리버드 EVENT Room2 10% 할인
			 </span>
		</div>	
		
		
<%-- 	<div>
		<strong>사원정보</strong>
		<table border="1">
		<tr>
			<th width="100">방이름</th>
	
		</tr>	
		<c:forEach var="ri" items="${ RoomInfo }">
		<tr>
			<td><c:out value="${ ri.room_name }"/></td>
			<td><a href="emp/emp_detail.do?empno=${ emp.empno }"><c:out value="${ emp.ename }"/></a></td>
			<td><c:out value="${ emp.hiredate }"/></td>
		</tr>
		</c:forEach>
		<c:if test="${ empty RoomInfo }">
		<tr>
			<td colspan="3">사원정보가 없습니다.</td>
		</tr>
		</c:if>
		</table>
	</div> --%>
	
	
	<div>
		<!-- image:  %ED%8C%8C%ED%8B%B0%EB%A3%B81.jpg -->
		<c:forEach var="ri" items="${ RoomInfo }">
		<figure class="snip1200" style="float: left; margin-left: 33px">
		  <img src="http://localhost:8080/3rd_real/common/images/${ ri.image1 }" id="partyRoom1"/>
		  <figcaption>
		    <p><c:out value="${ ri.room_name2 }"/></p>
		    <div class="heading">
		      <h2><c:out value="${ ri.room_name }"/><span></span></h2>
		    </div>
		  </figcaption>
		 <a href="/3rd_real/diary/diary.do" ></a>
		</figure>
			

		</c:forEach>
		
		<c:if test="${ empty RoomInfo }">
		
			사원정보가 없습니다.
		
		</c:if>
	
	</div>
		
	<!-- 여기서 고민. 어떻게 원하는 행만 골라서 위치에 맞게 값을 가져올 수 있는지.  -->	
		
		
<!--  	<div align="center">
	<figure class="snip1200" style="float: left; margin-left: 33px">
	  <img src="http://localhost:8080/3rd_real/common/images/%ED%8C%8C%ED%8B%B0%EB%A3%B81.jpg"  id="partyRoom1"/>
	  <figcaption>
	    <p>할로윈 파티나 크리스마스에 제격인 이색파티룸~!</p>
	    <div class="heading">
	      <h2>PartyRoom1<span></span></h2>
	    </div>
	  </figcaption>
	 <a href="/3rd_real/diary/diary.do" ></a>
	</figure>
	
	<figure class="snip1200" style="float: right; margin-right: 33px">
	  <img src="http://localhost:8080/3rd_real/common/images/%ED%8C%8C%ED%8B%B0%EB%A3%B82.jpg" id="partyRoom2"/>
	  <figcaption>
	    <p>브라이덜 샤워나 생일파티에 싹이세욘~~~~~~~!!</p>
	    <div class="heading">
	      <h2>PartyRoom2<span></span></h2>
	    </div>
	  </figcaption>
	  <a href="/3rd_real/diary/diary.do" ></a>
	</figure>
 	</div>	 	
	
	
	<div align="center">
	<figure class="snip1200" style="float: left; margin-left: 33px">
	  <img src="http://localhost:8080/3rd_real/common/images/%ED%8C%8C%ED%8B%B0%EB%A3%B83.jpg" id="conferenceRoom1"/> 
	  <figcaption>
	    <p>지식 얻어가즈아 강연회~~~~~~~~~~~~</p> 
	    <div class="heading">
	      <h2>ConferenceRoom3<span></span></h2>
	    </div>
	  </figcaption>
	  <a href="/3rd_real/diary/diary.do" ></a>
	</figure>
	
	<figure class="snip1200" style="float: right; margin-right: 33px; ">
	  <img src="http://localhost:8080/3rd_real/common/images/%ED%8C%8C%ED%8B%B0%EB%A3%B82.jpg" id="conferenceRoom2" />
	  <figcaption>
	    <p>공연장이 필요하신가요? 그렇다면 잘오셨습니다.</p>
	    <div class="heading">
	      <h2>ConferenceRoom4<span></span></h2>
	    </div>
	  </figcaption>
	  <a href="/3rd_real/diary/diary.do" ></a>
	</figure>
	</div>

		-->	
		




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

</body>
</html>