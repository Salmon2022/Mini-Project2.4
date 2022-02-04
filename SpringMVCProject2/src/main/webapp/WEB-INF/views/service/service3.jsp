<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>추천카테고리</title>

<%@ include file="../include/service-static-files.jsp"%>

<script>
	//DB에서 controller를 통해 view단으로 데이터 전달
	//자바 스크립트를 통해 워드클라우드 시각화
	$(document).ready(function() {
		var words = new Array();
		<c:forEach items="${wordList}" var="word">
		words.push({
			"text" : "${word.word_list}",
			"weight" : "${word.word_cnt}"
		});
		</c:forEach>
		$('#demo').jQCloud(words);
	});
</script>
</head>

<body>
	<div class='container-fluid'>
		<%@ include file="../include/afterlogin_header.jsp"%>
		<section class="row section">
			<!-- section -->
			<div class="row">
				<div class="sec1">
					<h4>
						<c:if test="${categoryId==1}">육류가공품</c:if>
						<c:if test="${categoryId==2}">조미수산가공품</c:if>
						<c:if test="${categoryId==3}">유가공품</c:if>
						<c:if test="${categoryId==4}">빵</c:if>
						<c:if test="${categoryId==5}">떡</c:if>
						<c:if test="${categoryId==6}">간편식품</c:if>
						<c:if test="${categoryId==7}">면류</c:if>
						<c:if test="${categoryId==8}">전분분말류</c:if>
						<c:if test="${categoryId==9}">다류</c:if>
					</h4>
					<div id="demo" class="jqcloud demo"></div>
				</div>
			</div>

		</section>
		<%@ include file="../include/footer.jsp"%>
	</div>

</body>

</html>