<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인페이지</title>
<%@ include file="../include/header.jsp" %>

<script>
$(document).ready(function(){
	$("#btnLogin").on('click', function(event){
		
		var userId = $("#userId").val();
		var userPw = $("#userPw").val();

		if(userId == "") {
			alert("id!!");
			$("#userId").focus();
			return;
		}
		if(userPw == "") {
			alert("password!!");
			$("#userPw").focus();
			return;
		}
		//페이지로 보내는것이 아니라 로그인정보를 loginCheck컨트롤러에 보낸다.
		document.form1.action="${path}/myapp/loginCheck.do"
		document.form1.submit();

	});
});
</script>


</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form name="form1" method="post">
	아이디 : <input id="userId" type="text" name="user_id"><br>
	비밀번호 : <input id="userPw" type="password" name="user_password">
	<button type="button" id="btnLogin">로그인</button>
	
		<c:if test="${msg=='failure'}">
			<div style="color : red">
			아이디 또는 비밀번호가 일치하지 않습니다.
			</div>
		</c:if>
		<c:if test="${msg=='logout'}">
			<div style="color : red">
			로그아웃되었습니다.
			</div>
		</c:if>
	
</form>

</body>
</html>