<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <%@ include file="../include/base-static-files.jsp" %>

<script>
$(document).ready(function(){
	$("#btnupdate").on('click', function(event){
		
		var userId = $("userId").val();
		var userPw = $("#userPw2").val();
		var userName = $("#userName").val();
		var userEmail = $("#userEmail").val();
		var userPhone = $("#userPhone").val();
		var userGender = $('input[name="user_gender"]:checked').val();
		var userBirthdate = $("#userBirthdate").val();
		
		if(userId == "") {
			alert("Id를 입력해주세요");
			$("#userId").focus();
			return;
		}
		
		if(userPw == "") {
			alert("password를 입력해주세요");
			$("#userPw").focus();
			return;
		}
		if(userName == ""){
			alert("이름을 입력해주세요");
			$("#userName").focus();
			return;			
		}
		if(userEmail == ""){
			alert("Email을 입력해주세요");
			$("#userEmail").focus();
			return;
		}
		if(userPhone == ""){
			alert("휴대폰 번호를 입력해주세요");
			$("#userPhone").focus();
			return;
		}
		if(userGender == ""){
			alert("성별을 선택하세요")
			return;
		}
		if(userBirthdate == ""){
			alert("생년월일을 입력하세요")
			$("#userBirthdate").focus();
			return;
		}
	
		document.form1.action="${path}/myapp/user/update.do"
		document.form1.submit();
		
  		});
	});
		
	
$(document).ready(function(){
	$("#btndelete").on('click', function(event){
		var userEmail = $("#userEmail").val();
		document.form1.action="${path}/myapp/user/delete.do"
		document.form1.submit();
	});
	//btn클래스 태그 a에 click 이벤트를 연결
    $('button.btn1').on('click',function(event){
        alert("개인정보 변경이 완료되었습니다.")
    });
    $('button.btn2').on('click',function(event){
        alert("회원탈퇴가 완료되었습니다.")
    });
});
</script>	


   
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<body>
    <div class='container-fluid'>
        <%@ include file="../include/afterlogin_header.jsp"%>
        <section class="row section">
        		<!-- form태그 -->
                <form name="form1" method="post">
                <!-- section -->
                <div class="left">
                    <div class='btn-group-vertical' role='group' aria-label='...'>
                        <button type='button' class='btn btn-default'><a href='#'>마이페이지</a></button>
                    </div> 
                </div>
                <div class="right">
                    <h2>개인정보 변경</h2>
                    <div class="sec2 col-xs-12 col-md-12 col-lg-12">
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputPassword1' class='control-label'>아이디</label>
                            <input type='text' class='form-control' id='userId' name='user_id' placeholder="아이디">
                        </div>
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputPassword1' class='control-label'>비밀번호</label>
                            <input type='password' class='form-control' id='userPw1' name='user_password1' placeholder="암호">
                        </div>
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputPassword1' class='control-label'>비밀번호 확인</label>
                            <input type='password' class='form-control' id='userPw2' name='user_password' placeholder="암호 확인">
                        </div>
                        <div class="col-xs-6 col-md-6 col-lg-6 form-group">
                            <label for="exampleInputName1">이름</label>
                            <input type="text" class="form-control" id="userName" name="user_name" placeholder="홍길동">
                          </div>
                          <div class="col-xs-6 col-md-6 col-lg-6 form-group">
                            <label for="exampleInputBirthdate1">생년월일</label>
                            <input type="text" class="form-control" id="userBirthdate" name="user_birthdate" placeholder="2022-01-01">
                          </div>
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputEmail1' class='control-label'>이메일 주소</label>
                            <input type='email' class='form-control' id='userEmail' name="user_email" placeholder="이메일을 입력하세요">
                        </div>
                        <div class="col-xs-6 col-md-6 col-lg-6 form-group">
                            <label for="exampleInputphone1">휴대폰번호</label>
                            <input type="text" class="form-control" id="userPhone" name="user_phone" placeholder="010-1111-1111">
                        </div>
                        <div class='gender'>
                            <label for="exampleInputgender1">성별</label> &nbsp;&nbsp;
                            <input type="radio" id="man" name="user_gender" value="남" checked>
                            <label for="남자">남자</label>
                            &nbsp;&nbsp;
                            <input type="radio" id="female" name="user_gender" value="여">
                            <label for="여자">여자</label>
                        </div>
                        <br>
                        <br>
                        <div class="text-center">
                          <div class='btn-group' role='group' aria-label='...'>
                            <button id="btnupdate" type='button' class='btn btn-default btn1'><a href='#'>변경완료</a></button>
                            <button id="btndelete" type='button' class='btn btn-default btn2'><a href='#'>회원탈퇴</a></button>
                          </div>
                        </div>   
                    </div>
                </div>
                </form>
                <!-- form태그 -->
        </section>
       <%@ include file="../include/footer.jsp"%>
    </div>   
</body>
</html>