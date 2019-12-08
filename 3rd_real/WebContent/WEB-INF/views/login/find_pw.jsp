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
	#container1{ margin-left: 280px}
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
	
	$("#find").click(function(){		
				if ( !$("#id").val()=="" & !$("#phone").val()=="" & !$("#email").val()=="" & !$("#answer").val()=="" & !$("#hint_code option:selected").val()=="" ) {
					alert( $("#hint_code option:selected").val() );
	 			//값 넘겨줘라아~
 				$.ajax({
					url: "/3rd_prj/login/find_pw2.do",
					type: "post",
					data: "id="+$("#id").val()+"&"+"phone="+$("#phone").val()+"&"+"email="+$("#email").val()+"&"+"answer="+$("#answer").val()+"&"+"hint_code="+$("#hint_code").val() ,
					dataType: "json",
					error : function( xhr ){
						$("#modal_output").html("서비스가 원활하지 못한 점 "+ xhr.status + " / "+xhr.statusText);
					},
					success : function( json ){
						var output="조회결과가 없습니다. 다시 시도해주세요";
						var id=json.id; //JSONObjectg parsing
						
						if( json.resultFlag ) {
							output="아이디 <strong>'"+ id + "'</strong>님의 임시비밀번호가 이메일로 전송되었습니다. ";
						}//end if
						
							//화면의 일부분을 변경하여 서버에서 받아온 데이터를 보여준다.
						$("#modal_output").html(output);
						$("#modalMsg").modal("show");


									
					/* 		location.href="login.do"; 
							return */
					}//success
				});	//ajax  

			};//end if
				
				
/* 		
		alert("임시비밀번호 ○○○ 입니다");
		return;	 */
		
		
		
		});//end click
			
		
		$("#goLogin").click(function(){
			location.href="login.do"; //로그인창 연결해주기
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

<div style="font-size: 30px; font-weight: bold; width:300px; height:70px; margin: auto;">
<img style="width:80px;height:60px" src="http://localhost:8080/3rd_prj/common/images/password.png">
비밀번호 찾기
</div>

<div id="container1">
<form>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">아이디</label>
    <div class="col-sm-4">
      <input type="email" class="form-control" name="id" id="id" placeholder="id">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">전화번호</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" name="phone" id="phone" placeholder="number">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">이메일</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" name="email" id="email" placeholder="email">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">힌트</label>
    <div class="col-sm-4">
<!--     <select class="custom-select mr-sm-2" id="hint" name="hint">
        <option selected>힌트목록</option>
        <option value="1">나의 보물 2호는?</option>
        <option value="2">가장 좋아하는 노래는?</option>
        <option value="3">우리집 강아지 이름은?</option>
        <option value="4">내가 다닌 초등학교 이름은?</option>
        <option value="5">가장 좋아하는 선생님은?</option>
      </select> -->
      
      
       <select class="form-control" name="hint_code" id="hint_code">
  		  <c:forEach var="passHintList" items="${passHintList }">
			<option value="${ passHintList.hintCode }"><c:out value="${ passHintList.hint }"/></option>
		  </c:forEach>    
	  </select>
	  
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-2 col-form-label">정답</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" id="answer" placeholder="answer" name="answer">
    </div>
  </div>
</form>
</div>
 
	<div id="btnClass"style="position: relative; margin-top: 50px;" align="center">
	<input type="button" value="찾기" class="btn btn-secondary alert-danger" id="find" style="margin-right: 25px;" >
	<input type="button" value="취소" class="btn btn-secondary alert-secondary" id="backBtn">
	</div>   
</div>


<!-- Modal -->
	<div class="modal fade" id="modalMsg" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel"><strong>비밀번호 조회</strong></h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      <br/>
	        <div id="modal_output"></div>
	      <br/>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn1 btn-secondary" data-dismiss="modal" id="sendPw">Close</button>
	        <button type="button" class="btn1 btn-secondary" data-dismiss="modal" id="goLogin">Login으로</button>
	      </div>
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