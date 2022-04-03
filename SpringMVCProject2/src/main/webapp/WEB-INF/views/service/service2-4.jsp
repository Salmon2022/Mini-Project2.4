<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비교분석결과1</title>

    
	<%@ include file="../include/base-static-files2.jsp" %>
    
</head>

<body>
    <div class='container-fluid'>
        <%@ include file="../include/afterlogin_header.jsp"%>
        <section class="row section">
            <!-- section -->
            <div>
                <div class="dropdown">
                    <button class="dropbtn">
                        <span class="dropbtn_icon">--- 소득 수준 ---</span>
                    </button>
                    <div class="dropdown-content">
                        <a href="service2-3_200.html">200만원 미만</a>
                        <a href="service2-3_200-300.html">200~300만원</a>
                        <a href="service2-3_300-400.html">300~400만원</a>
                        <a href="service2-3_400-500.html">400~500만원</a>
                        <a href="service2-3_500-600.html">500~600만원</a>
                        <a href="service2-3_600.html">600만원 이상</a>
                    </div>
                </div>


            <div class='center'>
                <img class='center' src='plot/Rplot.png' width='800px' height="600px"><br>
            </div> 
                <!-- <div class='center'>
                    <h2>비교분석 결과1</h2>
                   
                    <img class='center' src='plot/Rplot01.png' width='800px' height="600px"><br>
                    <img class='center' src='plot/Rplot02.png' width='800px' height="600px"><br>
                    <img class='center' src='plot/Rplot06.png' width='800px' height="600px"><br>
                    <img class='center' src='plot/Rplot07.png' width='800px' height="600px"><br>
                    <img class='center' src='plot/Rplot08.png' width='800px' height="600px"><br>
                    <img class='center' src='plot/Rplot09.png' width='800px' height="600px">


                </div> -->

            </div>

        </section>
         <%@ include file="../include/footer.jsp"%>
    </div>
 
</body>
</html>