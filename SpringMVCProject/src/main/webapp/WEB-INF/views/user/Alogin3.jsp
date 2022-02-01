<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>

<%@ include file="../include/base-static-files.jsp"%>

<script>
	$(document).ready(function() {
		$("#btnLogin").on('click', function(event) {

			var userId = $("#userId").val();
			var userPw = $("#userPw").val();

			if (userId == "") {
				alert("id!!");
				$("#userId").focus();
				return;
			}
			if (userPw == "") {
				alert("password!!");
				$("#userPw").focus();
				return;
			}
			//페이지로 보내는것이 아니라 로그인정보를 loginCheck2컨트롤러에 보낸다.
			document.form1.action = "${path}/myapp/loginCheck2.do"
			document.form1.submit();

		});
	});
</script>



</head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<div class='container-fluid'>
		<%@ include file="../include/beforelogin_header.jsp"%>
		<section class="row section">
			<form name="form1" method="post">
				<div class="mainCon">
					<div class="mainTitle">로그인</div>
					<!-- form 태그 -->

					<table class='mainTable'>
						<tr>
							<td>아이디 :</td>
							<td style='padding: 5px;'><input id="userId" type="text"
								name="user_id" required></td>
						</tr>
						<tr>
							<td>비밀번호 :</td>
							<td><input id="userPw" type="password" name="user_password"
								required></td>
						</tr>

						<tr>
							<td colspan="2">
								<button type="button" id="btnLogin">&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;</button>
								<button type="button" id="btnSign">
									<a href='Asign_up6'>&nbsp;&nbsp;&nbsp;회원가입&nbsp;&nbsp;&nbsp;</a>
								</button> <br>
								<button type="button" id="btnIdf">
									<a href='Afinding_id5'>아이디 찾기 
								</button>
								<button type="button" id="btnPwf">
									<a href='Afinding_pw3'>비밀번호 찾기</a>
								</button> <c:if test="${msg=='idfailure'}">
									<div style="color: red">아이디가 일치하지 않습니다.</div>
								</c:if> <c:if test="${msg=='pwfailure'}">
									<div style="color: red">비밀번호가 일치하지 않습니다.</div>
								</c:if> <c:if test="${msg=='nouser'}">
									<div style="color: red">일치하는 회원정보가 없습니다.</div>
								</c:if> <c:if test="${msg=='logout'}">
									<div style="color: red">로그아웃되었습니다.</div>
								</c:if>
							</td>
						</tr>

					</table>

					<!-- form 태그 -->

				</div>
			</form>
		</section>
		<%@ include file="../include/footer.jsp"%>
	</div>
</body>

</html>