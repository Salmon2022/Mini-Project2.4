<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class='row header'>
	<div class="logo image-container">
		<a href='usermain_afterlogin'><img
			src='img/logo_transparent.png' height='155px' width='300px'></a>
	</div>

	<h5 class='logout'>
		<a href='usermain_beforelogin'>로그아웃</a>
	</h5>
	<h5>&nbsp;|&nbsp;</h5>
	<h5 class='logout'>
		<a href='noticeboard'>고객센터</a>
	</h5>
	<h5>&nbsp;|&nbsp;</h5>
	<h5 class='mypage'>
		<a href='userinfo_change'>마이페이지</a>
	</h5>
	<h5>&nbsp;|&nbsp;</h5>
	<h5 class='name'>${sessionScope.userName}(${sessionScope.userId})님
		환영합니다.</h5>

	<!-- header -->
</header>
<nav class="row nav">
	<!-- nav -->
	<div id="menu">
		<ul>
			<li><a class="color1" href="service1">분석개요</a></li>

			<li><a class="color1" href="service2-1">분석서비스</a>
				<ul>
					<li><a class="color2" href="service2-1">시계열분석 서비스</a></li>
					<li><a class="color2" href="service2-2">상관분석 서비스</a></li>
					<li><a class="color2" href="service2-3">추세선 서비스</a></li>
					<li><a class="color2" href="service2-4">비교분석 서비스1</a></li>
					<li><a class="color2" href="service2-5">비교분석 서비스2</a></li>
					<li><a class="color2" href="service2-6">비교분석 서비스3</a></li>
				</ul></li>
			<li><a class="color1" href="service3">추천카테고리</a>
				<ul>
					<li><a class="color2" href="service3?categoryId=1">육류가공품</a></li>
					<li><a class="color2" href="service3?categoryId=2">조미수산가공품</a></li>
					<li><a class="color2" href="service3?categoryId=3">유가공품</a></li>
					<li><a class="color2" href="service3?categoryId=4">빵</a></li>
					<li><a class="color2" href="service3?categoryId=5">떡</a></li>
					<li><a class="color2" href="service3?categoryId=6">간편식</a></li>
					<li><a class="color2" href="service3?categoryId=7">면류</a></li>
					<li><a class="color2" href="service3?categoryId=8">전분/분말류</a></li>
					<li><a class="color2" href="service3?categoryId=9">다류</a></li>
				</ul></li>
			<li><a class="color1" href="service4.html">거래액 예측</a> <!-- <ul>
                                <li><a href="#">SUB_MENU</a></li>
                                <li><a href="#">SUB_MENU2</a></li>
                                <li><a href="#">SUB_MENU3</a></li>
                            </ul> --></li>
		</ul>
	</div>

</nav>