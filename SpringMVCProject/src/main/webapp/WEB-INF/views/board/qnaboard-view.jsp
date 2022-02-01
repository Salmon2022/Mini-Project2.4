<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>1:1문의 수정/삭제하기</title>
<%@ include file="../include/base-static-files.jsp"%>
	

<script>
	$(document).ready(function() {
		$(".view-btn").on('click', function(event) {
			var boardId = $("#boardId").val();

			document.form1.action = "${path}/myapp/qnaboard-revision.do";
			document.form1.submit();
		});
	});
</script>

</head>

<body>
	<div class='container-fluid'>
		<%@ include file="../include/afterlogin_header.jsp"%>		
		<section class="row section">
			<!-- section -->
			<div class="left">
				<div class='btn-group-vertical' role='group' aria-label='...'>
					<button type='button' class='btn btn-default'>
						<a href='noticeboard.html'>공지사항</a>
					</button>
					<button type='button' class='btn btn-default'>
						<a href='qnaboard.html'>1:1 문의</a>
					</button>
				</div>
			</div>
			<c:set var="board" value="${board}"/>
				<!-- form태그 -->
				<form id="form1" name="form1" method="post">
					<div class="right">
					<input type="hidden" id="boardId" name="board_id" value="${board.board_id}">
						작성일자:
						<p>${board.board_date}</p>
						글번호:
						<p>${board.board_id}</p>
						조회수:
						<p>${board.board_hits}</p>
						작성자:
						<p>${board.board_writer}</p>
						제목:
						<p>${board.board_title}</p>
						문의내용:
						<p>${board.board_contents}</p>
						<button class="btn btn-default pull-right view-btn">수정</button>

					</div>
				</form>
				<!-- form태그 -->
			

		</section>
		 <%@ include file="../include/footer.jsp"%>
	</div>
</body>
</html>