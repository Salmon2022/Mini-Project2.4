<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 페이지</title>
    
    <%@ include file="../include/base-static-files.jsp" %>


</head>

<body>
    <div class='container-fluid'>
        <%@ include file="../include/afterlogin_header.jsp"%>
        <section class="row section">
                <!-- section -->
            <br>
            <br>
            <h1>Welcome to Globalmall</h1>
            <br>
            <br>
            <br>
            <h3 class="sec5 after-login-text">홈페이지 소개</h3>
            <p class="sec5">코로나 19 전후 1인가구 온라인 가공식품 소비패턴을 파악합니다.<br>코로나 19 이후 1인가구의 가공식품 소비 지출액이 증가한 품목<br>(육류가공품, 조미수산 가공품, 유가공품, 간편식, 면류, 빵/떡, 전분/분말류, 다류, 주류)의 검색결과를<br> 크롤링하여 워드클라우드 분석을 하였습니다.<br></p>
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

            <h3 class="sec5 after-login-text">연구배경</h3>
            <div class="image">
                <img src="img/corona_plot.png" width="500px" height="400px">
            </div>
            <p class="sec5">2021년 6월부터 증가하는 코로나 확진자수<br>코로나 여파와 온라인 구매 편의성 증대로 인하여<br> 온라인 쇼핑몰을 통해 가공식품을 구매자가 늘고 있음<br></p>
            <div class="image">
                <img src="img/coronab&f.PNG">
            </div>
            <p class="sec5">음식료품, 가전/전자/통신기기, 농축산물, 생활용품, 가구, 음식 서비스 등 실내활동과 관련된 품목은<br> 코로나 이전과 비교해 온라인 판매액이 크게 증가</p>
            <br>
            <br>
            <h3 class="sec5 after-login-text">분석이유</h3>
            <p class="sec5">2021년 9월말 기준 전국 1인가구는 전체가구의 40%를 차지<br>주요가구 형태가 된 1인가구의 니즈에 맞는 상품 판매전략이 필요함</p>
            <div class="image">
                <img  src="img/singlefamily.PNG" width="400px" height="400px">
            </div>   
            <p class="sec5">온라인 가공식품 쇼핑몰 상품관리 측면에서 코로나 이후 1인가구의 
                변화된 소비패턴에 맞는 상품 판매의 필요성</p>
            <br>
            <br>
            <h3 class="sec5 after-login-text">분석범위</h3>
            <p class="sec5">25가지 가공식품 세부항목 중 코로나 이후 지출액 증가비율의 평균 이상인 항목(1인가구, 소득범위별) :<br> 총 9개품목 (육류가공품, 조미수산가공품, 유가공품, 빵/떡, 간편식, 면류, 전분/분말류, 다류, 주류 등)</p>
        </section>
        <%@ include file="../include/footer.jsp"%>
    </div>
  
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