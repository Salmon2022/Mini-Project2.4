<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1문의 작성하기</title>
    
     <%@ include file="../include/base-static-files.jsp" %>
    
<script>
//웹페이지를 모두 불러오면
$(document).ready(function(){
	$("#write").on('click', function(event){
		var boardtype = $("#boardtype").val();
		var date = $("#date").val();
		var qnaWriter = $("#writer").val();
		var qnaTitle = $("#title").val();
		var qnaContents =$("#contents").val();
		 
			
		document.form1.action="${path}/myapp/noticeinsert.do"
		document.form1.submit();
	});
    //btn클래스 태그 a에 click 이벤트를 연결
    $('a.btn').on('click',function(event){
        alert("문의글 작성이 완료되었습니다.")
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
                    <button type='button' class='btn btn-default'><a href='noticeboard'>공지사항</a></button>
                    <button type='button' class='btn btn-default'><a href='qnaboard'>1:1 문의</a></button>
                 </div>  
                </div>
                <div class="right">
                  <!-- form태그 -->
                   <form name="form1" method="post">
   						게시글유형 : <input id="boardtype" name="board_type" type="text" class="form-control" placeholder="게시글 유형 1: 공지사항, 2: 1:1문의">
                        작성일 : <input id="date" name="board_date" type="text" class="form-control" placeholder="날짜를 입력하세요 YYYY-MM-DD">
                        작성자 : <input id="writer" name="board_writer" type="text" class="form-control" placeholder="이름을 입력하세요">
                        제목:<input id="title" name="board_title" type="text" class="form-control" placeholder="글제목을 입력하세요">
                        내용:<textarea id="contents" name="board_contents" class="form-control" rows="10"></textarea>
                        <button id="write" class="btn btn-default pull-right" href='qnaboard'>등록</button> 
                  </form>
                  <!-- form태그 -->      
                </div>
        </section>
		<%@ include file="../include/footer.jsp"%>
	</div>


</body>
</html>