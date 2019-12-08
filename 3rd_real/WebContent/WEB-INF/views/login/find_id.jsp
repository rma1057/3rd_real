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
	$("#b1").click(function() {
		$("#a").show();
/* 		$("#inputPassword").val("휴대폰 번호를 입력해주세요."); */
		$("#b").hide();
		
		document.getElementById("closeBtn").className = "btn1";
	
	});
	$("#b2").click(function() {
		$("#a").hide();
		$("#b").show(); 
/* 		$("#inputPassword").val("이메일을 입력해주세요."); */
		document.getElementById("closeBtn").className = "btn1";
	});
	


	
/* 	$("#findIDbyPhone").keypress(){
		if(flag) {
			
		}//end if			
		
	}); */
	
	//버튼 둘중에 한개선택되었을 때 조건문 (id로 주는 법)
	$(".btn").click(function(){
		alert("왜안됑/");
 		//라디오 버튼 둘 중 한개 선택되었는지 
		if( $("#b1").is(":checked") || $("#b2").is(":checked") ){ 
			//사용자가 아이디 한글 넣고 // 핸드폰 번호 양식에 맞게 넣어 줬는지값을 넣어줬는지
		
			//휴대폰으로 찾기
			if( $("#b1").is(":checked") ){				
				if ( !$("#findIDbyPhone").val()=="" & !$("#inputPassword").val()=="" ){
					
				//값 넘겨줘라아~
 				$.ajax({
					url: "/3rd_prj/login/find_id1.do",
					type: "post",
					data: "name="+$("#findIDbyPhone").val()+"&"+"phone="+$("#inputPassword").val(),
					dataType: "json",
					error : function( xhr ){
						$("#modal_output").html("서비스가 원활하지 못한 점 "+ xhr.status + " / "+xhr.statusText);
					},
					success : function( json ){
						var output="조회결과가 없습니다. 다시 시도해주세요";
						var id=json.id; //JSONObjectg parsing
						
						if( json.resultFlag ) {
							output="아이디 :  <strong>"+ id + "</strong>";
						}//end if
						
							//화면의 일부분을 변경하여 서버에서 받아온 데이터를 보여준다.
						$("#modal_output").html(output);
						$("#modalMsg").modal("show");
						//location.href="login.do"; return

							
							$(".2nd").click(function(){
								location.href="find_pw.do"; //비밀번호창 연결해주기
							});//click						
					
					}//success
				});	//ajax 

			};
				
				
				
				
							
				} else {
			//이메일로 찾기
				if( $("#b2").is(":checked") ){				
					if ( !$("#findIDbyEmail").val()=="" & !$("#inputPassword2").val()=="" ){
						
					//값 넘겨줘라아~
	 				$.ajax({
						url: "/3rd_prj/login/find_id2.do",
						type: "post",
						data: "name="+$("#findIDbyEmail").val()+"&"+"email="+$("#inputPassword2").val(),
						dataType: "json",
						error : function( xhr ){
							$("#modal_output").html("서비스가 원활하지 못한 점 "+ xhr.status + " / "+xhr.statusText);
						},
						success : function( json ){
							var output="조회결과가 없습니다. 다시 시도해주세요";
							var id=json.id; //JSONObjectg parsing
							
							if( json.resultFlag ) {
								output="아이디 :  <strong>"+ id + "</strong>";
							}//end if
							
								//화면의 일부분을 변경하여 서버에서 받아온 데이터를 보여준다.
							$("#modal_output").html(output);
							$("#modalMsg").modal("show");
						
							
							$("#goLogin").click(function(){
								location.href="login.do"; //로그인창 연결해주기
							});//click
							
							$("#goFindPw").click(function(){
								location.href="find_pw.do"; //비밀번호창 연결해주기
							});//click
							
							
						}//success
					});	//ajax 
					
				};
			
			
			}//end else
			
		
		}//end else
	}//end if
	});//end click
	
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
	

	<div align="center" style="margin-left: auto; margin-right: auto; width: 510px; height: 500px;" >
		<img src="/3rd_prj/common/images/idcard2.png"><strong><font size="5px">&nbsp;아이디 찾기</font></strong><br/><br/><br/>
		<input type="radio" name="radio" id="b1" style="margin-left: 20px;" checked="checked">&nbsp;<strong>내정보에 등록된 휴대폰으로 찾기</strong><br/><br/>
		<input type="radio" name="radio" id="b2" style="margin-left: 4px;">&nbsp;<strong>내정보에 등록된 이메일로 찾기</strong><br/><br/>
		
		<div id="a">
		<form class="form-inline" style="padding-left: 123px ">
			<input type="text" class="form-control" id="findIDbyPhone" name="name" placeholder="이름을 입력해 주세요" style="width:230px; margin-bottom: 10px; margin-left:17px" >
			  <div class="form-group mx-sm-3 mb-2" >
			    <label for="inputPassword" class="sr-only" ></label>
			    <input type="text" class="form-control" id="inputPassword" name="phone" placeholder="휴대폰 번호를 입력해주세요." style="width:230px; ">
			  </div>
			 <input type="button" value="찾기" class="btn btn-secondary alert-secondary" id="searchBtn">
		</form>
		</div>

				
		<div id="b" style="display: none; ">
		<input type="text" class="form-control" id="findIDbyEmail" name="name" placeholder="이름을 입력해 주세요" style="width:230px; margin-bottom: 10px;">
		<form class="form-inline" style="padding-left: 123px ">
			  <div class="form-group mx-sm-3 mb-2" >
			    <label for="inputPassword2" class="sr-only" ></label>
			    <input type="text" class="form-control" id="inputPassword2" name="email" placeholder="이메일을 입력해주세요." style="width:230px; ">
			  </div>
			  <input type="button" value="찾기" class="btn btn-secondary alert-secondary" id="searchBtn2">
		</form>		
		</div> 
	</div>	
</div>


<!-- Modal -->
	<div class="modal fade" id="modalMsg" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel"><strong>아이디 조회</strong></h5>
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
	        <button type="button" class="2nd btn btn-secondary" data-dismiss="modal" id="goLogin">닫기</button>
	        <button type="button" class="2nd btn btn-secondary" data-dismiss="modal" id="goFindPw">비밀번호 찾기</button>
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