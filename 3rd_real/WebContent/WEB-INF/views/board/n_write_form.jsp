<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://211.63.89.150:8080/3rd_prj/common/css/main.css"/>
<style type="text/css">
	#class4Wrap{ min-width:1100px; min-height: 1100px; margin: 0px auto;}
	/* 헤더 시작*/
	#naviBar{ min-width:1100px; min-height: 130px; position:relative; font-size: 20px;}
	/* 헤더 끝 */
	/* 컨테이너 시작  */
	#container{ width:1100px; height: 0px auto; position:relative; margin: 0px auto; margin-top:70px; margin-bottom: 20%;}
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
	
	$("#image").on("change", handleImgFileSelect);	
	
	$("#n_subject").keydown(function() {
		if($("#n_subject").val().length>50){
			alert("제목은 50자 이하만 작성 가능합니다.");
			$("#n_subject").val($("#n_subject").val().substr(0, 50));
			return;
		}//end if
	})//keydown
	
	$("#goBtn").click(function() {
		
		if($("#n_subject").val().trim()==""){
			alert("게시글 제목을 입력해주세요.");
			return;
		}//end if
	
		if($("#n_content").val().trim()==""){
			alert("내용을 작성해주세요.");
			return
		}//end if
		
		
		if(confirm("방정보를 추가하시겠습니까?")){
			
			var str = $("#n_content").val();
			str = str.replace(/(?:\r\n|\r|\n)/g, '<br/>');
			$("#n_content").val(str);
			
			formData = $("#writeFrm").serialize();
			$.ajax({
				url:"/3rd_prj/board/n_write_process.do",
				data:formData,
				type:"post",
				dataType:"json",
				error:function(xhr){
					alert("문제발생\n" + xhr.status + "\n" + xhr.statusText);
				},
				success:function(json){
					if(json.result == true){
						alert("추가하였습니다.");
						location.href="/3rd_prj/board/notice_list.do"
						
					}else{
						alert("죄송합니다.");
						
					}//end if
					
				}//success
				
			});//ajax 	
		
		}//end if
		
	
		
	});//click
	$("#backBtn").click(function(){
		if(confirm('작성하지 않고 돌아가시겠습니까?')){
		location.href="notice_list.do";
		}//end if
	});//click
	
});//ready

var sel_file;
function handleImgFileSelect(e){
	var fileName = $("#image").val();
	fileName=fileName.substr(fileName.lastIndexOf('\\')+1);
	
	var files = e.target.files;
	/* console.log(files[0]); */
	var fileArr = Array.prototype.slice.call(files);
	
	fileArr.forEach(function(f){
		if(!f.type.match("image.*")){
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}//end if
		
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e){
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
		$("#n_content").val($("#n_content").val()+"<img src='http://211.63.89.150:8080/3rd_prj/common/images/"+fileName+"'/>");
	});
	 formData = new FormData(document.getElementById('addFile'));
	
	$.ajax({
		url:"/3rd_prj/board/addFile.do",
		processData: false,
		contentType: false,
		data:formData,
		async:false,
		type:"post",
		dataType:"json",
		error:function(xhr){
			/* alert("문제발생\n" + xhr.status + "\n" + xhr.statusText);  */
		},
		success:function(json){
			if(json.result == true){
				alert("추가하였습니다.");
				
			}else{
				alert("죄송합니다.");
				
			}//end if
			
		}//success
		
	});//ajax 	
	
	
	
	
	
}//handleImgFileSelect
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

   <form id="writeFrm">
   <div style="margin-left: 50px;">
         <table>
            
            <tr>
               <td id="ex">제목</td>
               <td>
         			<input class="form-control form-control-sm" type="text" name="n_subject" id="n_subject" autofocus="autofocus" placeholder="게시글 제목을 입력해주세요." style="width: 734px;"/>
        			<br/>
        		</td>
            </tr>
           
            <tr>
               <td colspan="2" style="padding-left:150px;">
                  <textarea class="form-control form-control-sm" name="n_content" id="n_content" rows="15" cols="100" placeholder="공지사항을 작성해주세요."></textarea>
               </td>
            </tr>         
            </table>
            </div>
	</form>
           
           <div  id="btnClass"style="position: relative; float:left; margin-left:400px; margin-top: 30px;"  align="center" >
				<input type="button" value="등록" class="btn btn-secondary alert-danger" id="goBtn" style="margin-right: 25px;" >
				<input type="button" value="돌아가기" class="btn btn-secondary alert-secondary" id="backBtn">
		<div style=" position: relative; float:right; margin-left:80px; ">       
   <form id="addFile" enctype="multipart/form-data">
         <input type="file" id="image" name="image" ><br/>
         <img style="margin-top: 10px;" id="img" width="150" height="150"/>
         </form>
            </div>
		
			</div>
			
       	
    
         
</div>
<div id="footer">
<a href="#"><img src="http://211.63.89.150:8080/3rd_prj/common/images/arrow.png" width="50" height="50" style="position:fixed; left: 93%; top:85%; "/></a> 
	<!-- 900(w)x150(h) -->
	<div id="fLogo">
		
	</div>
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