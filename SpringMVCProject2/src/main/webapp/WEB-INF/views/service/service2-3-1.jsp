<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상관분석 서비스2</title>

   <%@ include file="../include/base-static-files2.jsp" %>

</head>
<body>
    <div class='container-fluid'>
		<%@ include file="../include/afterlogin_header.jsp"%>
        <div class="dropdown">
            <button class="dropbtn">
                <span class="dropbtn_icon">--- 분류별 추세선 ---</span>
            </button>
            <div class="dropdown-content">
                <a href="service2-3-1.html">힙계평균 추세선</a>
                <a href="service2-3-2.html">음식서비스 추세선</a>
                <a href="service2-3-3.html">음식료품 추세선</a>
            </div>
        </div>
        <section class="row section">
            <!-- section -->
            <div>
                <div class='center'>
                   추세선분석결과<br>
                    <img class='center' src='plot/Rplot11.png' width='900px' height="400px"><br>                   
            </div>

        </section>
        <%@ include file="../include/footer.jsp"%>
    </div>
</body>
</html>