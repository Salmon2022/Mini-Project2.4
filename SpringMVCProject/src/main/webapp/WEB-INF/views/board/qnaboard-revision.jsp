<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1문의 수정하기</title>
    
    
    <%@ include file="../include/base-static-files.jsp" %>
    

<script>
$(document).ready(function(){
	$("#btnupdate").on('click', function(event){
		
		var boardid = $("#boardId").val();
	
		var date = $("#boardDate").val();
		var qnaWriter = $("#boardWriter").val();
		var qnaTitle = $("#boardTitle").val();
		var qnaContents =$("#boardContents").val();
		 
			
		document.form1.action="${path}/myapp/update.do"
		document.form1.submit();
	});

	$("#btndelete").on('click', function(event){

		var boardid = $("#boardId").val();
		
		
		 
			
		document.form1.action="${path}/myapp/delete.do"
		document.form1.submit();
	});
	
	//btn클래스 태그 a에 click 이벤트를 연결
    $('a.btn1').on('click',function(event){
        alert("문의글 수정이 완료되었습니다.")
    });

    $('a.btn2').on('click',function(event){
        alert("문의글 삭제되었습니다.")
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
                    <button type='button' class='btn btn-default'><a href='noticeboard.html'>공지사항</a></button>
                    <button type='button' class='btn btn-default'><a href='qnaboard.html'>1:1 문의</a></button>
                 </div>  
                </div>
                <div class="right" >
                	<!-- form태그 -->
                	<c:set var="board" value="${board}"/>
                   <form name="form1" method="post" >
                	
                	문의번호:<textarea id="boardId" name="board_id" class="form-control" rows="1">${board.board_id}</textarea>
                	작성일자:<textarea id="boardDate" name="board_date" class="form-control" rows="1" placeholder="YYYY-MM-DD">${board.board_date}</textarea>
                    작성자:<textarea id="boardWriter" name="board_writer"class="form-control" rows="1">${board.board_writer}</textarea>
                    제목:<textarea id="boardTitle" name="board_title" class="form-control" rows="1">${board.board_title}</textarea>
                    문의내용:<textarea id="boardContents" name="board_contents" class="form-control" rows="10">${board.board_contents}</textarea>
                                  
                    <button id="btnupdate" class="btn btn-default pull-right btn1" href='qnaboard'>저장하기</button>
                    <button id="btndelete" class="btn btn-default pull-right btn2" href='qnaboard'>삭제하기</button>
                  </form>
                  <!-- form태그 -->
                </div>
        </section>
       <%@ include file="../include/footer.jsp"%>
    </div>      
</body>
</html>