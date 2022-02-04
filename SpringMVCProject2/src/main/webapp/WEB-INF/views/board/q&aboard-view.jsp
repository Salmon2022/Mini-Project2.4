<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1문의 수정/삭제하기</title>
    <%@ include file="../include/header.jsp" %>
    <link href='css/bootstrap.min.css' rel='stylesheet'>

    <link rel='stylesheet' href='css/bootstrap-theme.min.css'>

<script>
$(document).ready(function(){
	$("#view").on('click', function(event){
		
		var boardNum = $("#boardNum").val();
	console.log(boardNum)
		document.form1.action="${path}/myapp/hitsupdate.do"
		document.form1.submit();
	});
});

</script>

    <style>
        
        .header{
            border: 1px solid;
            height: 150px;
        }

        .logo{
            text-align: center;           
            border-radius: 5px 5px 5px 5px;
            height: 100px;
        }
        h5{
            float: right;
        
        }
    
        .btn{
            float: right;
        }
        .nav{
            text-align: center;
            background-color: #00695c;
            border: 1px solid;
            height: 40px;
        }
        h4{
            white-space:nowrap;
        }
        
        .color:link{
           color: white;

        }
        .color:hover{
            color : black;
        }
        
        .section{
            border: 1px solid;
            height: calc(100vh-300px);
        }
        h2{
            text-align: center;
        }

        div.left{
        text-align: center;
        width: 20%;
        float:left;
        }
        div.right{
        border:1px solid black;
        width:80%;
        float:right;
        }
      
        .dropdown{
          float:left;
        }
        .btn-group-vertical{
            display: block;
        }
  
    
        .footer{
            
            height: 100px;
        }
        .copyright{
            border:1px solid;
            height: 50px;
            text-align: center;
            padding: 10px;
        }
        ul li{
		list-style: none;
        }
        a.color1 {
            text-decoration: none;
            color:white;
        }
        a.color2{
            color:white;
        }
        
        a:hover{
            color:black;
        }
        

        #menu {
            font:bold 16px "malgun gothic";
            color:black;
            
            
            text-align: center;
        }

        #menu > ul > li {
            float:left;
            width:140px;
            position:relative;
        }
        #menu > ul > li > ul {
            width:150px;
            display:none;
            z-index: 9999;
            position:absolute;
            font-size:14px;
            background: grey;
            padding: 12px;
        }
        #menu > ul > li:hover > ul {
            display:block;
            
        }
        #menu > ul > li > ul > li:hover {
            background: rgb(128, 184, 44);
            transition: ease 1s;
            }
    </style>
</head>

<body>
    <div class='container-fluid'>
        <header class='row header'>
            <div class="logo image-container"><a href='usermain_beforelogin'><img src='img/logo_transparent.png' height='155px' width='300px'></a></div>
                <!-- header -->
         	<h5 class='logout'><a href='usermain_beforelogin'>로그아웃</a></h5>
            <h5>&nbsp;|&nbsp;</h5>
            <h5 class='mypage'><a href='userinfo_change'>마이페이지</a></h5>
            <h5>&nbsp;|&nbsp;</h5> 
            <c:if test="${msg=='success'}">
            <h5 class='name'>${sessionScope.userName}(${sessionScope.userId})님 환영합니다.</h5>
          	</c:if>   
        </header>
        <nav class="row nav">
            <!-- nav -->
             <div id="menu">
                <ul>
                    <li><a class="color1" href="service1.html">분석개요</a>
                        
                    </li>
                    <li><a class="color1" href="service2-1.html">분석서비스</a>
                        <ul>
                            <li><a class="color2" href="service2-1.html">시계열분석 서비스</a></li>
                            <li><a class="color2" href="service2-2.html">상관분석 서비스</a></li>
                            <li><a class="color2" href="service2-3.html">비교분석 서비스1</a></li>
                            <li><a class="color2" href="service2-4.html">비교분석 서비스2</a></li>
                            <li><a class="color2" href="service2-5.html">비교분석 서비스3</a></li>
                        </ul>
                    </li>
                    <li><a class="color1" href="service3-1.html">추천카테고리</a>
                        <ul>
                            <li><a class="color2" href="service3-1.html">육류가공품</a></li>
                            <li><a class="color2" href="service3-2.html">조미수산가공품</a></li>
                            <li><a class="color2" href="service3-3.html">유가공품</a></li>
                            <li><a class="color2" href="service3-4.html">빵</a></li>
                            <li><a class="color2" href="service3-5.html">떡</a></li>
                            <li><a class="color2" href="service3-6.html">간편식</a></li>
                            <li><a class="color2" href="service3-7.html">면류</a></li>
                            <li><a class="color2" href="service3-8.html">전분/분말류</a></li>
                            <li><a class="color2" href="service3-9.html">다류</a></li>
                        </ul>
                    </li>
                    <li><a class="color1" href="service4.html">거래액 예측</a>
                        <!-- <ul>
                            <li><a href="#">SUB_MENU</a></li>
                            <li><a href="#">SUB_MENU2</a></li>
                            <li><a href="#">SUB_MENU3</a></li>
                        </ul> -->
                    </li>
                </ul>
            </div>
    </nav>
        <section class="row section">
                <!-- section -->
                <div class="left">
                  <div class='btn-group-vertical' role='group' aria-label='...'>
                    <button type='button' class='btn btn-default'><a  href='noticeboard.html'>공지사항</a></button>
                    <button type='button' class='btn btn-default'><a  href='q&aboard.html'>1:1 문의</a></button>
                 </div>  
                </div>
                <c:forEach var="board" items="${boardList}">
                <!-- form태그 -->
                <form name="form1" method="post">
                <div class="right">            
                    작성일자:<p>${board.board_date}</p>
                    작성번호:<p id="boardNum" name="board_num" >${board.board_num}</p>
                    조회수:<p>${board.board_hits}</p>
                    작성자:<p>${board.board_writer}</p>
                    제목:<p>${board.board_title}</p>
                    문의내용:<p>${board.board_contents}</p>               
                    <button id="update" class="btn btn-default pull-right btn2" ><a href="q&aboard-revision=${board.board_num}">수정</a></button>
                    <button id="view" class="btn btn-default pull-right btn2" ><a href="#">조회</a></button>
                </div>
                </form>
                <!-- form태그 -->
                </c:forEach>
            
        </section>
        <footer class="row footer">
                <!-- footer-->
            <div class="copyright">Copyright : global processed food 설립연도 : 2022.01.05</div>
        </footer>
    </div>


<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script>   
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>    
          
</body>
</html>