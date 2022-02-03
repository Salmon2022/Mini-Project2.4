 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html charset=UTF-8">
<title>공지사항 목록</title>
<script>
 $(document).ready(function(){
	 $("#btnWrite").click(function(){
		 //페이지 주소 변경(이동)
		 location.href = "${path}/board/write.do";
	 });
 });
</script>

</head>
<body>

<h2>게시글 목록</h2>
<button type="button" id="btnWrite">글쓰기</button>
<table border="1" width-"600px">
	
	<tr>
		<th>회원아이디</th>
		<th>회원이름</th>
		<th>회원비밀번호</th>
		<th>휴대폰</th>
		<th>성별</th>
		<th>생일</th>
	</tr>
	
	<c:forEach var="pinfo" items="${userList}">
	<tr>
		<td>${pinfo.user_id}</td>
		<td>${pinfo.user_name}</td>
		<td>${pinfo.user_password}</td>
		<td>${pinfo.user_phone}</td>
		<td>${pinfo.user_gender}</td>
		<td>${pinfo.user_birthdate}</td>
	</tr>
	</c:forEach>
			
</table>

</body>
</html>