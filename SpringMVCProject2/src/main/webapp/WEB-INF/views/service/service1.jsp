<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>분석개요</title>

     <%@ include file="../include/base-static-files.jsp" %>

   
</head>

<body>
    <div class='container-fluid'>
       <%@ include file="../include/afterlogin_header.jsp"%>
        <section> 
            <div>
                <div class='center'>
                    <br><br>
                    <h2 class='title'>분석 개요</h2>
                    <br><br>
                    <p>가공식품 정의 :</p><br>
                    <p>가공식품이란 식품원료(농, 임, 축, 수산물 등)에 식품 또는 식품첨가물을 가하거나 그 원형을 변형시키고 식품첨가물을 사용하여 제조/가공.포장한 식품이다.</p>
                    <img class='center' src='img/가공식품.jfif' width='800px' height="500px"><br>
                    <br><br>
                    <p>분석범위 및 분석순서 :</p>
                    <br>
                    <p>25가지 가공식품 세부항목 중 코로나 이후 지출액 증가비율의 평균 이상인 항목(1인가구, 소득범위별)<br>
                        총 9개품목 (육류가공품, 조미수산가공품, 유가공품, 빵/떡, 간편식, 면류, 전분/분말류, 다류, 주류 등)</p>
                    <p>
                        <img class='center' src='img/분석순서.png' width='700px' height='500px'><br>
                        <li>코로나 전후의 1인가구 온라인 가공식품 소비패턴 파악</li>
                        <li>코로나 전후의 소득별 구매장소 비율, 가공식품 구입변화, 온라인 구입비중 증가 분석</li>
                        <li>코로나 전후의 1인가구의 온라인 가공식품 지출액 비교분석을 통해 지출액이 증가한 품목 선별</li><br>
                        <br></p>
                        <img class='center' src='img/로드맵.png' width='1000px' height='530px'><br>
                        <br><br>
                        <p>시계열 분석의 경우, 코로나 유행기를 N차로 나누어 각 시기마다의 온라인 매출을 파악한다.</p>
                        <img class='center' src='img/유행기.png' width='900px' height='430px'><br>
                </div>
                <br><br> 
            </div>
        </section>
         <%@ include file="../include/footer.jsp"%>
    </div>
</body>
</html>