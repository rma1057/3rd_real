<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/3rd_pprj/common/css/main.css"/>
<style type="text/css">
	#class4Wrap{ min-width:1100px; min-height: 1100px; margin: 0px auto;}
	/* 헤더 시작*/
	#naviBar{ min-width:1100px; min-height: 130px; position:relative; font-size: 20px;}
	/* 헤더 끝 */
	/* 컨테이너 시작  */
	#container{ width:1100px; height: 0px auto; position:relative; margin: 0px auto; margin-top:70px; margin-bottom: 10%;}
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
<script type="text/javascript">

$(function(){
	
    var regExp1 = /^[a-zA-Z0-9]{4,12}$/;
    //id와 비밀번호의 유효성 검사
    var regExp2 = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;
    //e-mail의 유효성 검사
    var regname = /^[가-힝]{2,}$/;
    //이름의 유효성 검사


	
	$("#email2").change(function(){
		var tempEm2=$("#email2").val();
		if( tempEm2 !="직접입력"){
		//	if( tempEm2 !="직접입력"){
				$("#email3").val( tempEm2 );
		//	}//end if
		}else{
			$("#email3").val("");
			$("#email3").focus();
		}
	});
	$("#id").focusout(function(){
		 if( $("#id").val()!="" & regExp1.test( $("#id").val() ) ){
			$("#id").attr('class','form-control is-valid');
			$("#id_div").attr('class','valid-feedback');
			$("#id_div").text("");
		} else  {
			$("#id").attr('class','form-control is-invalid');
			$("#id_div").attr('class','invalid-feedback');
			$("#id_div").text("형식에 맞춰 ID를 입력해주세요.");
			
		}//아이디 값 존재 여부
		
	});//focusout - id
	
	$("#userName").focusout(function(){
		 if($("#userName").val()!="" & regname.test( $("#userName").val() ) ){
				$("#userName").attr('class','form-control is-valid');
				$("#userName_div").attr('class','valid-feedback');
				$("#userName_div").text("");
			}else{
				$("#userName").attr('class','form-control is-invalid');
				$("#userName_div").attr('class','invalid-feedback');
				$("#userName_div").text("한글로 이름을 입력해주세요.");
				
			}//이름 존재 여부
	});//focusout - name
	
	
	//비밀번호부터 해야함
	
	
	
	
	
	
	$("#inputPassword").focusout(function(){
		 if($("#inputPassword").val()!="" & regExp1.test( $("#inputPassword").val() ) ){
				 
				$("#inputPassword").attr('class','form-control is-valid');
				$("#inputPassword_div").attr('class','valid-feedback');
				$("#inputPassword_div").text("");
				 
		}else{
			 if( $("#id").val() ==	$("#inputPassword").val() ){
					$("#inputPassword").attr('class','form-control is-invalid');
					$("#inputPassword_div").attr('class','invalid-feedback');
					$("#inputPassword_div").text("아이디와 비밀번호가 같습니다.");				 
			 } else {
				$("#inputPassword").attr('class','form-control is-invalid');
				$("#inputPassword_div").attr('class','invalid-feedback');
				$("#inputPassword_div").text("형식에 맞춰 비밀번호를 입력해주세요.");
			 }//end else	
		}//비밀번호 존재여부 
	});//focusout - pass
	
	
	
	
	$("#inputPasswordCheck").focusout(function(){
		 if($("#inputPasswordCheck").val()!=""){
			if($("#inputPassword").val()!=$("#inputPasswordCheck").val()){
				
				alert("값이 다름");
			}//end if
			 
			 $("#inputPasswordCheck").attr('class','form-control is-valid');
				$("#inputPasswordCheck_div").attr('class','valid-feedback');
				$("#inputPasswordCheck_div").text("");
			
		 	}else{
				$("#inputPasswordCheck").attr('class','form-control is-invalid');
				$("#inputPasswordCheck_div").attr('class','invalid-feedback');
				$("#inputPasswordCheck_div").text("비밀번호 확인을 입력해주세요.");
				
			}//비밀번호 확인 존재여부 
	});//focusout - pass
	
	$("#hintAw").focusout(function(){
		 if($("#hintAw").val()!=""){
			 
			 $("#hintAw").attr('class','form-control is-valid');
				$("#hintAw_div").attr('class','valid-feedback');
				$("#hintAw_div").text("");
			
		 	}else{
				$("#hintAw").attr('class','form-control is-invalid');
				$("#hintAw_div").attr('class','invalid-feedback');
				$("#hintAw_div").text("비밀번호 힌트 답을 작성해주세요.");
				
			}//비밀번호 힌트 정답 존재 여부
	});//focusout - hintAw
	$("#phone2").focusout(function(){
		 if($("#phone1").val()!=""&& $("#phone2").val()!=""){
			 
			 $("#phone1").attr('class','form-control is-valid');
			 $("#phone2").attr('class','form-control is-valid');
				$("#phone_div").attr('class','valid-feedback');
				$("#phone_div").text("");
			
		 	}else{
				$("#phone1").attr('class','form-control is-invalid');
				$("#phone2").attr('class','form-control is-invalid');
				$("#phone_div").attr('class','invalid-feedback');
				$("#phone_div").text("핸드폰 번호를 입력해주세요.");
				
			}//비밀번호 확인 존재여부 
	});//focusout - pass
	
	$("#goBtn").click(function(){
		$("#signUpFrm").submit();
	});//click
	

	
/* 	$("#email2").focusout(function(){
		 if($("#email").val()!=""&& $("#email2").val()!=""){
			 
			 $("#email").attr('class','form-control is-valid');
			 $("#email2").attr('class','form-control is-valid');
				$("#email_div").attr('class','valid-feedback');
				$("#email_div").text("");
			
		 	}else{
				$("#email").attr('class','form-control is-invalid');
				$("#email2").attr('class','form-control is-invalid');
				$("#email_div").attr('class','invalid-feedback');
				$("#email_div").text("핸드폰 번호를 입력해주세요.");
				
			}//이메일 존재 여부
	});//focusout - pass */
	
	
	/**
    function checked() {
        var regExp1 = /^[a-zA-Z0-9]{4,12}$/;
        //id와 비밀번호의 유효성 검사
        var regExp2 = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/i;
        //e-mail의 유효성 검사
        var regname = /^[가-힝]{2,}$/;
        //이름의 유효성 검사

            if( regExp1.test( $("#id").val() ) ) {
             //아이디 유효성 검사 후 4~12자의 영문 대소문자와 숫자의 유효성이 안 맞다면
             //공백을 주고 알람을 띄운다.
             //밑에 동일한 유효성 검사
         
                alert("형식에 맞춰 ID를 입력하세요");
                idtext.value = "";
                idtext.focus();
                return false;
            }
        

        
        
   
        //이름의 유효성 검사
        if(!getCheck.test($("#id").val())){
          alert("형식에 맞게 입력해주세요");
          $("#id").val("");
          $("#id").focus();
          return false;
        }
   
        //비밀번호
        if(!getCheck.test($("#inputPassword").val())) {
        alert("형식에 맞춰서 PW를 입력해줘용");
        $("#inputPassword").val("");
        $("#inputPassword").focus();
        return false;
        }
   
        //아이디랑 비밀번호랑 같은지
        if ($("#id").val()==($("#inputPassword").val())) {
        alert("비밀번호가 ID와 똑같으면 안!대!");
        $("#inputPassword").val("");
        $("#inputPassword").focus();
      }
   
        //비밀번호 똑같은지
        if($("#inputPassword").val() != ($("#inputPasswordCheck").val())){ 
        alert("비밀번호가 틀렸네용.");
        $("#inputPassword").val("");
        $("#inputPasswordCheck").val("");
        $("#inputPassword").focus();
        return false;
       }
   
       //이메일 공백 확인
        if($("#email1").val() == ""){
          alert("이메일을 입력해주세요");
          $("#email1").focus();
          return false;
        }
             
        //이메일 유효성 검사
        if(!getMail.test($("#mail").val())){
          alert("이메일형식에 맞게 입력해주세요")
          $("#mail").val("");
          $("#mail").focus();
          return false;
        } 
   
        //이름 유효성
        if (!getName.test($("#userName").val())) {
          alert("이름 똑띠 쓰세용");
          $("#userName").val("");
          $("#userName").focus();
          return false;
        }
	

   
      return true;
    }	
	
        */
	
	
	
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

<form id="signUpFrm" action="input_card.do" onsubmit="return checked()" method="post" >
 <h2 align="center"><strong>Register</strong></h2>
<div style="margin-left: 200px;">
<!--  <span name="span">sadasdad</span> -->
  <br/>
  
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-3">
       <input type="text" class="form-control " id="id" placeholder="아이디 입력"  required name="user_id"/>    
      <div  id="id_div"> </div> 
      
    </div>
  </div>
  
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="userName" value="" name="user_name">
      <div  id="userName_div"> </div> 
    </div>
  </div> 
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
    <div class="col-sm-3" >
      <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
      <div  id="inputPassword_div"> </div> 
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">비밀번호 확인</label>
    <div class="col-sm-3">
      <input type="password" class="form-control" id="inputPasswordCheck" placeholder="Password" name="password2">
      <div  id="inputPasswordCheck_div"> </div> 
    </div>
  </div>
  
 <div class="form-group row">
  <label for="staticEmail" class="col-sm-2 col-form-label">비밀번호 힌트</label>
    <div class="col-sm-3">
  
    
      <select class="form-control" name="hint_code">
  		  <c:forEach var="passHintList" items="${passHintList }">
			<option value="${ passHintList.hintCode }"><c:out value="${ passHintList.hint }"/></option>
		  </c:forEach>
    
	  </select>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="staticEmail" class="col-sm-2 col-form-label">힌트 정답</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" id="hintAw" name="answer">
      <div  id="hintAw_div"> </div> 
    </div>
  </div> 
  
  <div class="form-group row">
    <label for="inputPassword" class="col-sm-2 col-form-label">휴대전화</label>
    <div class="col-sm-1" >
      <select class="form-control" style="width:80px" name="phon1">
  		<option value="010">010</option>
  		<option value="011">011</option>
  		<option value="012">012</option>
	  </select>
    </div>
    <div class="col-sm-3" align="left">
     <input type="text" class="form-control" id="phone1" name="phon2" style="margin-left: 15px;">
    </div><span style="margin-top: 10px; margin-left: 10px;" >-</span>
    <div class="col-sm-3">
     <input type="text" class="form-control" id="phone2" name="phon3">
      <div  id="phone_div"> </div> 
    </div>
  </div>
  
 <div class="form-group row">
  <label for="staticEmail" class="col-sm-2 col-form-label">이메일</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" placeholder="mail"  name="email1" id="email1">
    </div>
    @
    <div class="col-sm-3">
      <select id="email2" class="form-control">
		<option value="직접입력">직접입력</option>
		<option value="daum.net">daum.net</option>
		<option value="naver.com">naver.com</option>
		<option value="gmail.com">gmail.com</option>
		<option value="hotmail.com">hotmail.com</option>
	  </select>
    </div>
    <div class="col-sm-3">
      <input type="text" class="form-control" name="email3" id="email3"/>
  </div>
      <div  id="email_div"></div> 
  </div>
    <div id="btnClass"style="position: relative; margin-top: 50px; margin-left: 250px; margin-bottom: 100px;" >
				<input type="button" value="취소" class="btn btn-outline-secondary alert-danger" id="backBtn" style="margin-right: 25px;" >
				<input type="button" value="다음" class="btn btn-outline-secondary alert-secondary" id="goBtn">
				
			</div>
    
    
  </div>
</form>

</div>

<div id="footer">
	<a href="#"><img src="http://localhost:8080/3rd_pprj/view/images/arrow.png" width="50" height="50" style="position:fixed; left: 93%; top:85%; "/></a> 
	<div id="fLogo">
		
	</div>
	<div id="fContent">
	<div style="float: left; margin-left:150px; margin-right:8%; font-size:14px;">
		<h4><strong>[;P]</strong></h4>
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