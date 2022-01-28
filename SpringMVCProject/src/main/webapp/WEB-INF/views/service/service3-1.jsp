<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>추천카테고리</title>

	 <%@ include file="../include/header.jsp" %>
	 
    <link href='css/bootstrap.min.css' rel='stylesheet'>

    <link rel='stylesheet' href='css/bootstrap-theme.min.css'>

<script>
//DB에서 controller를 통해 view단으로 데이터 전달
//자바 스크립트를 통해 워드클라우드 시각화


</script>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Noto+Sans+KR:wght@500&family=Roboto+Slab:wght@500&display=swap');



        .half_background {
            background: linear-gradient(to top, rgb(157, 216, 182) 40%, transparent 30%);
        }

        .half_background2 {
            background: linear-gradient(to top, rgb(160, 223, 189) 0%, transparent 20%);
        }

        .header {
            border: 1px solid;
            height: 150px;

        }

        .logo {
            text-align: center;
            border-radius: 5px 5px 5px 5px;
            height: 100px;
        }

        input[id='menuicon'] {
            display: none;
        }

        input[id='menuicon']+label {
            display: block;
            width: 30px;
            height: 20px;
            position: relative;
            transition: all .35s;
            cursor: pointer;
            bottom: 38px;
            left: 20px;
        }

        input[id='menuicon']+label span {
            display: block;
            position: absolute;
            width: 100%;
            height: 5px;
            border-radius: 30px;
            background: rgb(255, 255, 255);
            transition: all .35s;
        }

        input[id='menuicon']+label span:nth-child(1) {
            top: 0;
        }

        input[id='menuicon']+label span:nth-child(2) {
            top: 50%;
            transform: translateY(-50%);
        }

        input[id='menuicon']+label span:nth-child(3) {
            bottom: 0;
        }

        input[id='menuicon']:checked+label {
            z-index: 2;
        }

        input[id='menuicon']:checked+label span:nth-child(1) {
            top: 50%;
            transform: translateY(-50%) rotate(45deg)
        }

        input[id='menuicon']:checked+label span:nth-child(2) {
            opacity: 0;
        }

        input[id='menuicon']:checked+label span:nth-child(3) {
            bottom: 50%;
            transform: translateY(50%) rotate(-45deg)
        }

        div[class='sidebar'] {
            width: 300px;
            height: 100%;
            background: rgb(129, 199, 172);
            position: fixed;
            top: 0;
            left: -300px;
            z-index: 1;
            transition: all .35s;
            opacity: 80%;
        }

        input[id='menuicon']:checked+label+div {
            left: 0;
        }



        h5 {
            float: right;
        }

        h3 {
            padding-bottom: 40px;
            font-family: 'Do Hyeon', sans-serif;
            font-weight: bold;
            text-align: center;
            font-family: 'Noto Sans KR', sans-serif;
            color: rgb(255, 254, 254)
        }

        h1 {
            font-family: 'Roboto Slab', serif;
            text-align: center;

        }

        .btn {
            float: right;
        }

        .nav {
            text-align: center;
            background-color: #3d5a5b;
            border: 1px solid;
            height: 50px;
        }

        h4 {
            white-space: nowrap;
        }


        ul li {
            list-style: none;
        }

        a.color1 {
            text-decoration: none;
            color: white;
            font-family: 'Noto Sans KR', sans-serif;
        }

        a.color2 {
            color: white;
            font-size: 15px;

        }

        a:hover {
            color: black;
        }

        #menu {
            color: black;
            text-align: center;
        }

        #menu>ul>li {
            /* float:left; */
            display: inline-block;
            width: 140px;
            position: relative;
            font: bold 20px "malgun gothic";
            top: 7px;
        }

        #menu>ul>li>ul {
            width: 150px;
            display: none;
            position: absolute;
            background: grey;
            padding: 12px;
        }

        #menu>ul>li:hover>ul {
            display: block;

        }

        #menu>ul>li>ul>li:hover {
            background: rgb(128, 184, 44);
            transition: ease 1s;
        }

        .section {
            height: calc(100vh-300px);
            padding: 100px;
            display:block;
        }

        .sec1 {
            text-align: center;
            margin:auto;
        }
        
        .footer {

            height: 100px;
        }

        .copyright {
            border: 1px solid;
            height: 50px;
            text-align: center;
            padding: 10px;

        }
    </style>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
    <div class='container-fluid'>
        <header class='row header'>
            <div class="logo image-container"><a href='usermain_afterlogin.html'><img src='img/logo_transparent.png'
                        height='155px' width='300px'></a></div>
            <h5 class='logout'><a href='usermain_beforelogin2.html'>로그아웃</a></h5>
            <h5>&nbsp;|&nbsp;</h5>
            <h5 class='mypage'><a href='userinfo_change.html'>마이페이지</a></h5>
            <h5>&nbsp;|&nbsp;</h5>
            <h5 class='name'>'이름'님 안녕하세요.</h5>

            <!-- header -->
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
            <div class="row">
                <div class="sec1">
                    <h4>육류가공품</h4>
                    <img src='/wordcloud/육가공품.PNG' width='500px' height="500px">
                </div>
            </div>

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