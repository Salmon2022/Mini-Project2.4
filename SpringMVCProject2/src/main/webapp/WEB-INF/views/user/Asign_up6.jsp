<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<%@ include file="../include/base-static-files.jsp"%>

<script>
	$(document).ready(function() {
		$("#btnsignin").on('click', function(event) {
			var userId = $("#userId").val();
			var userPw = $("#userPw2").val();
			var userName = $("#userName").val();
			var userEmail = $("#userEmail").val();
			var userPhone = $("#userPhone").val();
			var userGender = $('input[name="user_gender"]:checked').val();
			var userBirthdate = $("#userBirthdate").val();
			if (userId == "") {
				alert("id를 입력해주세요");
				$("#userId").focus();
				return;
			}
			if (userPw == "") {
				alert("password를 입력해주세요");
				$("#userPw").focus();
				return;
			}
			if (userName == "") {
				alert("이름을 입력해주세요");
				$("#userName").focus();
				return;
			}
			if (userEmail == "") {
				alert("Email을 입력해주세요");
				$("#userEmail").focus();
				return;
			}
			if (userPhone == "") {
				alert("휴대폰 번호를 입력해주세요");
				$("#userPhone").focus();
				return;
			}
			if (userGender == "") {
				alert("성별을 선택하세요")
				return;
			}
			if (userBirthdate == "") {
				alert("생년월일을 입력하세요")
				$("#userBirthdate").focus();
				return;
			}
			document.form1.action = "${path}/myapp/signin.do"
			document.form1.submit();
		});
	});
	$(document).ready(function() {
		$("#btndoublecheck1").on('click', function(event) {
			var userId = $("#userId").val();
			console.log(userId)
			document.form1.action = "${path}/myapp/doublecheckid.do"
			document.form1.submit();
		});
	});
	$(document).ready(function() {
		$("#btndoublecheck2").on('click', function(event) {
			var userEmail = $("#userEmail").val();
			document.form1.action = "${path}/myapp/doublecheckemail.do"
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
			<!-- form태그 -->
			<form name="form1" method="post">
				<div class="mainCon">
					<!-- left -->
					<div class="col-lg-8">
						<p style='text-align: center; margin-left: 30px; padding: 20px; font-size: 18px;'>회원가입</p>
						<table class="mainTable">
							<tr>
								<td>아이디:</td>
								<td><input id="userId" type="text" name="user_id" required></td>
								<td><input id="btndoublecheck1" type="button" value="중복확인"><br>
									<c:if test="${check1==1}">
										<p>사용할수있는 아이디입니다.</p>
									</c:if> <c:if test="${check1==0}">
										<p>아이디가 중복되었습니다.</p>
									</c:if></td>

							</tr>
							<tr>
								<td>비밀번호:</td>
								<td style='padding: 5px;'><input id="userPw1"
									type="password" name="user_password1" required></td>
								<td></td>
							</tr>
							<tr>
								<td>비밀번호 확인:</td>
								<td style='padding: 5px;'><input id="userPw2"
									type="password" name="user_password" required></td>
								<td></td>
							</tr>
							<tr>
								<td>이름:</td>
								<td style='padding: 5px;'><input id="userName" type="text"
									name="user_name" required></td>
								<td></td>
							</tr>
							<tr>
								<td>이메일:</td>
								<td style='padding: 5px;'><input id="userEmail" type="text"
									name="user_email" required></td>
								<td><input id="btndoublecheck2" type="button" value="중복확인"><br>
									<c:if test="${check2==1}">
										<p>사용할수 있는 이메일입니다.</p>
									</c:if> <c:if test="${check2==0}">
										<p>이메일이 중복되었습니다.</p>
									</c:if></td>

							</tr>
							<tr>
								<td>휴대폰 번호:</td>
								<td style='padding: 5px;'><input id="userPhone" type="text"
									name="user_phone" placeholder="010-1234-5678"></td>
								<td></td>
							</tr>
							<tr>
								<td>성별:</td>
								<td style='padding: 5px;'><input type='radio'
									name='user_gender' value='남' checked />남 <input type='radio'
									name='user_gender' value='여' />여</td>
							</tr>
							<tr>
								<td>생년월일:</td>
								<td style='padding: 5px;'><input id="userBirthdate"
									type="text" name="user_birthdate" placeholder="YYYY/MM/DD"></td>
							</tr>
						</table>
					</div>
					<!-- right -->
					<div class="col-lg-4">
						<p style='text-align: center; margin-left: 70px; padding: 20px; font-size: 18px;'>약관동의</p>
						<div>
							<div>
								<label><input type='checkbox' style='margin-right: 10px' />전체
									동의합니다</label>
							</div>
							<div>
								<label><input type='checkbox' style='margin-right: 10px' />이용약관동의</label>&nbsp;&nbsp;
								<button type='button' 
									class='btn-xs btn-default '
									onClick="window.open('http://localhost:8181/myapp/Asign_up6-1');">
									자세히보기
								</button>
							</div>
							<p>
								<input id="btnsignin" type="reset"
									style='text-align: center; margin-top: 20px; margin-left: 90px;'
									value="가입하기" onclick='alert("가입이 완료되었습니다.")'>
							</p>
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