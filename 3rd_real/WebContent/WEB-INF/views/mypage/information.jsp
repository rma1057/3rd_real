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
	#container{ width:1100px; height: 0px auto; position:relative; margin: 0px auto; margin-top:70px; margin-bottom: 10%;}
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
	$("#btnMyInfoChange").click(function() {
		if($("#inputPassword").val()==""){
			alert("비밀번호를 입력해주세요.");
			return;
		}//end if
		if($("#inputPasswordCheck").val()==""){
			alert("비밀번호확인을 입력해주세요.");
			return;
		}//end if
		if($("#email").val()==""){
			alert("이메일을 입력해주세요.");
			return;
		}//end if
		if($("#email2").val()=="none"){
			alert("선택해주세요");
			return;
		}//end if
		if($("#phon").val()==""){
			alert("핸드폰번호를 입력해주세요.");
			return;
		}//end if

			location.href="loginMyPage.jsp";		
	});//click
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
<form style="margin-left: 140px">
<div class="card" style="width: 900px;"  >
<div style="margin-left: 100px"; >
  <h2 style="margin-top: 30px"><strong>회원정보 관리</strong></h2>
  <br/>
  <div class="form-group row" >
    <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-3">
      <input type="text" readonly class="form-control-plaintext" id="id" value="yolo">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호 변경</label>
    <div class="col-sm-3" >
      <input type="password" class="form-control" name="inputPassword" id="inputPassword" placeholder="Password">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호 확인</label>
    <div class="col-sm-3">
      <input type="password" class="form-control" id="inputPasswordCheck" placeholder="Password">
    </div>
  </div>
    <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
    <div class="col-sm-3">
      <input type="text" readonly class="form-control-plaintext" id="userName" value="강다혜">
    </div>
  </div>
  <div class="form-group row">
  <label for="staticEmail" class="col-sm-2 col-form-label">이메일</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="email" placeholder="mail">
    </div>
    @
    <div class="col-sm-3">
      <select class="form-control" id="email2">
  		<option value="none">직접입력</option>
  		<option>naver.com</option>
  		<option>hanmail.co.kr</option>
	  </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">핸드폰 번호</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="phon" >
    </div>
  </div><br/>
  </div>
</div>  
    <div class="form-group row" style="margin-top: 20px; margin-left: 300px">
    <div class="col-sm-10" >
    	<input type="button" class="btn btn-secondary alert-danger btn" value="회원정보 수정" id="btnMyInfoChange"/>
    	<input type="button" class="btn btn-secondary alert-secondary btn" value="취소" id="btnCancle" onclick="location.href='loginMyPage.jsp'"/>
    </div>
</div>
</form>   
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