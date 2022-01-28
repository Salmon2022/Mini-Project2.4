<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>afterlogin</title>
    
    <%@ include file="../include/header.jsp" %>
    
    <link href='css/bootstrap.min.css' rel='stylesheet'>

    <link rel='stylesheet' href='css/bootstrap-theme.min.css'>

    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css'>

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

        .section{
            border: 1px solid;
            height: calc(100vh-300px);
            
        }

        .sec5{
            text-align: center;
        }
        
        .carousel-control.left,.carousel-control.right{
            background-image: none;
        }
        .carousel3 > .item > img{
            height:400px;
            width: 100%;
        }

        h1{
            text-align: center;
        }
        h3{
            text-align: center;
        }
        p{
            text-align: center;
        }
        .image{
            text-align: center;
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
        
       
    </style>
</head>

<body>
    <div class='container-fluid'>
        <header class='row header'>
                <!-- header -->
            <div class="logo image-container"><a href='usermain_beforelogin'><img src='img/logo_transparent.png' height='155px' width='300px'></a></div>
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
            <br>
            <br>
            <h1>Welcome to Globalmall</h1>
            <br>
            <br>
            <br>
            <h3>홈페이지 소개</h3>
            <p>코로나 19 전후 1인가구 온라인 가공식품 소비패턴을 파악합니다.<br>코로나 19 이후 1인가구의 가공식품 소비 지출액이 증가한 품목<br>(육류가공품, 조미수산 가공품, 유가공품, 간편식, 면류, 빵/떡, 전분/분말류, 다류, 주류)의 검색결과를<br> 크롤링하여 워드클라우드 분석을 하였습니다.<br></p>
            <br>
            <br>
            <div class="sec5 col-xs-12 col-md-12 col-lg-12"><a href='service5.html'>추천카테고리</a>
                <div class='row'>
                    <div id="carousel-example4-generic" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                          <li data-target="#carousel-example4-generic" data-slide-to="0" class="active"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="1"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="2"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="3"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="4"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="5"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="6"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="7"></li>
                          <li data-target="#carousel-example4-generic" data-slide-to="8"></li>
                        </ol>
                      
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner carousel3" role="listbox">
                          <div class="item active">
                            <img src="img/육가공품2.jfif" alt="육가공품" >
                            <div class="carousel-caption">
                              육가공품
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/조미수산가공품2.jfif" alt="조미수산가공품" >
                            <div class="carousel-caption">
                              조미수산가공품
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/유가공품2.jfif" alt="유가공품" >
                            <div class="carousel-caption">
                              유가공품
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/간편식2.jfif" alt="간편식" >
                            <div class="carousel-caption">
                              간편식
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/빵2.jfif" alt="빵" >
                            <div class="carousel-caption">
                              빵
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/전분분말류2.jfif" alt="전분분말류" >
                            <div class="carousel-caption">
                              전분분말류
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/떡2.jfif" alt="떡" >
                            <div class="carousel-caption">
                              떡
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/면류2.jfif" alt="면류" >
                            <div class="carousel-caption">
                            면류
                            </div>
                          </div>
                          <div class="item">
                            <img src="img/다류2.jfif" alt="다류" >
                            <div class="carousel-caption">
                              다류
                            </div>
                          </div>
                        </div>
                       <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example4-generic" role="button" data-slide="prev">
                          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                          <span class="sr-only btn1">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example4-generic" role="button" data-slide="next">
                          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                          <span class="sr-only btn2">Next</span>
                        </a>
                      </div>
                  </div>  
              </div>
            </div>
                       
            <br>
            <br>

            <h3>연구배경</h3>
            <div class="image">
                <img src="img/corona_plot.png" width="500px" height="400px">
            </div>
            <p>2021년 6월부터 증가하는 코로나 확진자수<br>코로나 여파와 온라인 구매 편의성 증대로 인하여<br> 온라인 쇼핑몰을 통해 가공식품을 구매자가 늘고 있음<br></p>
            <div class="image">
                <img src="img/coronab&f.PNG">
            </div>
            <p>음식료품, 가전/전자/통신기기, 농축산물, 생활용품, 가구, 음식 서비스 등 실내활동과 관련된 품목은<br> 코로나 이전과 비교해 온라인 판매액이 크게 증가</p>
            <br>
            <br>
            <h3>분석이유</h3>
            <p>2021년 9월말 기준 전국 1인가구는 전체가구의 40%를 차지<br>주요가구 형태가 된 1인가구의 니즈에 맞는 상품 판매전략이 필요함</p>
            <div class="image">
                <img  src="/img/singlefamily.PNG" width="400px" height="400px">
            </div>   
            <p>온라인 가공식품 쇼핑몰 상품관리 측면에서 코로나 이후 1인가구의 
                변화된 소비패턴에 맞는 상품 판매의 필요성</p>
            <br>
            <br>
            <h3>분석범위</h3>
            <p>25가지 가공식품 세부항목 중 코로나 이후 지출액 증가비율의 평균 이상인 항목(1인가구, 소득범위별) :<br> 총 9개품목 (육류가공품, 조미수산가공품, 유가공품, 빵/떡, 간편식, 면류, 전분/분말류, 다류, 주류 등)</p>
        </section>
        <footer class="row footer">
                <!-- footer-->
            <div class="copyright">Copyright : global processed food 설립연도 : 2022.01.05</div>
        </footer>
    </div>


<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script>   
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>    
<script>
    $(function(){
        $('.btn1').click(function(){
            $('.carousel').carousel('cycle');
        })
        $('.btn2').click(function(){
            $('.carousel').carousel('pause');
        })

    })
</script>    
</body>
</html>