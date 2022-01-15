<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>게시판 리스트</title>

​

<!-- BootStrap 라이브러리 등록 : CDN 방식 -->

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

​

<style type="text/css">

/* 선택자 - tr : tag, .tr : class, #tr : id */

.dataRow:hover{

/* 배경색 회색으로 변경 */

background: #eee;

/* 마우스 커서를 손가락으로 변경 */

cursor: pointer;

}

</style>

​

<script type="text/javascript">

/* 함수가 없으면 그냥 실행이 됨. <body>보다 먼저 실행되므로 객체 찾을 수 없다. - $() -> jQuery 함수 */

$(function(){

$(".dataRow").click(function(){

 $(".dateRow").click(function(){
	 var no = $(this).find(".no").text();
	 location = "view.jsp?no=" + no;

 });


});


</script>

​

</head>

<body>

<div class="container">

​

<h1>게시판 리스트</h1>

<table class="table">

<tr>

<th>번호</th>

<th>제목</th>

<th>작성자</th>

<th>작성일</th>

<th>조회수</th>

</tr>

<!-- 여기가 데이터 부분의 줄입니다. 한 줄을 의미하는 태그 : tr -->

<!-- 데이터 있는 만큼 반복 처리하는 시작 부분 => HTML에는 반복처리가 없다. JAVA 이미 작성되어 있는 것을 사용하자.:라이브러리-JSTL -->

<c:forEach items="${list }" var="vo">

<tr class="dataRow">

<td class="no">${vo.no }</td>

<td>${vo.title }</td>

<td>${vo.writer }</td>

<td>${vo.writeDate }</td>

<td>${vo.hit }</td>

</tr>

</c:forEach>

<!-- 데이터 있는 만큼 반복 처리하는 끝 부분 -->
<c:if test="${pageObject.totalRow > pageObject.perPageNum }">
	<tr>
		<td>
		<pageNav:pageNav listURI="list.do" pageObject="${pageObject}" />
			<!-- totalPage="${pageObject.totalPage }" startPage="${pageObject.startPage }" page="${pageObject.page }" -->
		</td>
	</tr>
</c:if>
<tr>

<td colspan="5">

<a href="writeForm.jsp" class="btn btn-default btn-sm">쓰기</a>

</td>

</tr>

</table>

</div>

</body>

</html>