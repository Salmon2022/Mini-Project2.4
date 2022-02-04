<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <%@ include file="../include/base-static-files.jsp" %>
    
</head>

<body>
    <div class='container-fluid'>
        <%@ include file="../include/afterlogin_header.jsp"%>
        <section class="row section">
                <!-- section -->
                <div class="left">
                  <div class='btn-group-vertical' role='group' aria-label='...'>
                    <button type='button' class='btn btn-default'><a  href='noticeboard'>공지사항</a></button>
                    <button type='button' class='btn btn-default'><a  href='qnaboard'>1:1 문의</a></button>
                 </div>  
                </div>
                <div class="right">
                    <div class="input-group" style='z-index: 2'>
                        <input type="text" class="form-control" placeholder="검색 키워드를 입력하세요!">
                        <span class="input-group-btn">
                          <button class="btn btn-secondary" type="button">찾기</button>
                        </span>
                      </div>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>날짜</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="board" items="${boardList}">
								<tr>
									<td>${board.board_id}</td>
									<td><a href="board_id?boardId=${board.board_id}">${board.board_title}</td>
									<td>${board.board_writer}</td>
									<td>${board.board_date}</td>
									<td>${board.board_hits}</td>
								</tr>
							</c:forEach>
                        </tbody>     
                      </table>
                      <c:if test="${sessionScope.userName=='관리자' && msg2=='admin'}">
                      <a class="btn btn-default pull-right" href='noticeboard-write'>글쓰기</a>
                      </c:if>
                      <br>
                      <div class="text-center">
                          <ul class="pagination">
                              <li><a href="#">&lt;&lt;</a></li>
                              <li><a href="#">&lt;</a></li>
                              <li><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li><a href="#">4</a></li>
                              <li><a href="#">5</a></li>
                              <li><a href="#">&gt;</a></li>
                              <li><a href="#">&gt;&gt;</a></li>
                          </ul>
                      </div>
                </div>
                </div>
        </section>
        <%@ include file="../include/footer.jsp"%>
    </div>

<script>
    //웹페이지를 모두 불러오면
    $(document).ready(function(){
         //btn클래스 태그 a에 click 이벤트를 연결
        $('a.btn1').on('click',function(event){
            alert("댓글이 삭제되었습니다.")
        });
        $('a.btn2').on('click',function(event){
            alert("댓글 등록이 완료되었습니다.")
        });
    });
</script>            
</body>
</html>