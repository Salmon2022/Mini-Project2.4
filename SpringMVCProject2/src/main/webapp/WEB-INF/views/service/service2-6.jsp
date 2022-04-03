<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비교분석결과3</title>

	<%@ include file="../include/base-static-files2.jsp" %>
        
    </style>
</head>

<body>
    <div class='container-fluid'>
    <%@ include file="../include/afterlogin_header.jsp"%>
        <section class="row section">
            <!-- section -->
            <div>
                <div>
                    <div class="dropdown">
                        <button class="dropbtn">
                            <span class="dropbtn_icon">--- 소득 수준 ---</span>
                        </button>
                        <div class="dropdown-content">
                            <a href="service2-5_200.html">200만원 미만</a>
                            <a href="service2-5_200-300.html">200~300만원</a>
                            <a href="service2-5_300-400.html">300~400만원</a>
                            <a href="service2-5_400-500.html">400~500만원</a>
                            <a href="service2-5_500-600.html">500~600만원</a>
                            <a href="service2-5_600.html">600만원 이상</a>
                        </div>
                    </div>

                    <div class='center'>
                        <h2>비교분석결과3</h2>
                        <img class='center' src='plot/Rplot21.png' width='1000px' height="800px"><br>
                        <!-- <img class='center' src='plot/Rplot22.png' width='1200px' height="800px"><br>
                        <img class='center' src='plot/Rplot23.png' width='1200px' height="800px"><br>
                        <img class='center' src='plot/Rplot24.png' width='1200px' height="800px"><br>
                        <img class='center' src='plot/Rplot25.png' width='1200px' height="800px"><br>
                        <img class='center' src='plot/Rplot26.png' width='1200px' height="800px"><br>
                        <img class='center' src='plot/Rplot27.png' width='1200px' height="800px"> -->
                    </div>
                </div>

        </section>
       <%@ include file="../include/footer.jsp"%>
    </div>
</body>
</html>