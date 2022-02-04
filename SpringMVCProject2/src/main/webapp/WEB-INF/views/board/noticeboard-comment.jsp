<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 댓글달기</title>

    <%@ include file="../include/base-static-files.jsp" %>
	
    
</head>

<body>
    <div class='container-fluid'>
        <%@ include file="../include/afterlogin_header.jsp"%>        
        <section class="row section">
            <!-- section -->
            <div class="left">
                <div class='btn-group-vertical' role='group' aria-label='...'>
                    <button type='button' class='btn btn-default'><a class='colortwo'
                            href='noticeboard'>공지사항</a></button>
                    <button type='button' class='btn btn-default'><a class='colortwo' href='qnaboard'>1:1
                            문의</a></button>
                </div>
            </div>
          	<c:set var="board" value="${board}"/>
            <div class="right">
                작성일자:<p>${board.board_date}</p>
                조회수:<p>${board.board_hits}</p>
                제목:<p>${board.board_title}</p>
                공지내용:<p>${board.board_contents}</p>
            </div>
            
        </section>
        <%@ include file="../include/footer.jsp"%>
    </div>   
</body>
</html>