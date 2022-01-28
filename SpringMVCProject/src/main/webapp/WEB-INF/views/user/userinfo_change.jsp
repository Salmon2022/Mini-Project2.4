<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <%@ include file="../include/header.jsp" %>
    
    <link href='css/bootstrap.min.css' rel='stylesheet'>

    <link rel='stylesheet' href='css/bootstrap-theme.min.css'>

<script>
$(document).ready(function(){
	$("#btnupdate").on('click', function(event){
		
		var userId = $("userId").val();
		var userPw = $("#userPw2").val();
		var userName = $("#userName").val();
		var userEmail = $("#userEmail").val();
		var userPhone = $("#userPhone").val();
		var userGender = $('input[name="user_gender"]:checked').val();
		var userBirthdate = $("#userBirthdate").val();
		
		if(userId == "") {
			alert("Id를 입력해주세요");
			$("#userId").focus();
			return;
		}
		
		if(userPw == "") {
			alert("password를 입력해주세요");
			$("#userPw").focus();
			return;
		}
		if(userName == ""){
			alert("이름을 입력해주세요");
			$("#userName").focus();
			return;			
		}
		if(userEmail == ""){
			alert("Email을 입력해주세요");
			$("#userEmail").focus();
			return;
		}
		if(userPhone == ""){
			alert("휴대폰 번호를 입력해주세요");
			$("#userPhone").focus();
			return;
		}
		if(userGender == ""){
			alert("성별을 선택하세요")
			return;
		}
		if(userBirthdate == ""){
			alert("생년월일을 입력하세요")
			$("#userBirthdate").focus();
			return;
		}
	
		document.form1.action="${path}/myapp/user/update.do"
		document.form1.submit();
		
  		});
	});
		
	
$(document).ready(function(){
	$("#btndelete").on('click', function(event){
		var userEmail = $("#userEmail").val();

		document.form1.action="${path}/myapp/user/delete.do"
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
            
            transition: ease 1s;
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
        .gender{
            text-align: center;
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
        		<!-- form태그 -->
                <form name="form1" method="post">
                <!-- section -->
                <div class="left">
                    <div class='btn-group-vertical' role='group' aria-label='...'>
                        <button type='button' class='btn btn-default'><a href='#'>마이페이지</a></button>
                    </div> 
                </div>
                <div class="right">
                    <h2>개인정보 변경</h2>
                    <div class="sec2 col-xs-12 col-md-12 col-lg-12">
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputPassword1' class='control-label'>아이디</label>
                            <input type='text' class='form-control' id='userId' name='user_id' placeholder="아이디">
                        </div>
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputPassword1' class='control-label'>비밀번호</label>
                            <input type='password' class='form-control' id='userPw1' name='user_password1' placeholder="암호">
                        </div>
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputPassword1' class='control-label'>비밀번호 확인</label>
                            <input type='password' class='form-control' id='userPw2' name='user_password' placeholder="암호 확인">
                        </div>
                        <div class="col-xs-6 col-md-6 col-lg-6 form-group">
                            <label for="exampleInputName1">이름</label>
                            <input type="text" class="form-control" id="userName" name="user_name" placeholder="홍길동">
                          </div>
                          <div class="col-xs-6 col-md-6 col-lg-6 form-group">
                            <label for="exampleInputBirthdate1">생년월일</label>
                            <input type="text" class="form-control" id="userBirthdate" name="user_birthdate" placeholder="2022-01-01">
                          </div>
                        <div class='col-xs-6 col-md-6 col-lg-6 form-group'>
                            <label for='exampleInputEmail1' class='control-label'>이메일 주소</label>
                            <input type='email' class='form-control' id='userEmail' name="user_email" placeholder="이메일을 입력하세요">
                        </div>
                        <div class="col-xs-6 col-md-6 col-lg-6 form-group">
                            <label for="exampleInputphone1">휴대폰번호</label>
                            <input type="text" class="form-control" id="userPhone" name="user_phone" placeholder="010-1111-1111">
                        </div>
                        <div class='gender'>
                            <label for="exampleInputgender1">성별</label> &nbsp;&nbsp;
                            <input type="radio" id="man" name="user_gender" value="남" checked>
                            <label for="남자">남자</label>
                            &nbsp;&nbsp;
                            <input type="radio" id="female" name="user_gender" value="여">
                            <label for="여자">여자</label>
                        </div>
                        <br>
                        <br>
                        <div class="text-center">
                          <div class='btn-group' role='group' aria-label='...'>
                            <button id="btnupdate" type='button' class='btn btn-default btn1'><a href='#'>변경완료</a></button>
                            <button id="btndelete" type='button' class='btn btn-default btn2'><a href='#'>회원탈퇴</a></button>
                          </div>
                        </div>   
                    </div>
                </div>
                </form>
                <!-- form태그 -->
        </section>
        <footer class="row footer">
                <!-- footer-->
            <div class="copyright">Copyright : global processed food 설립연도 : 2022.01.05</div>
        </footer>
    </div>


<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script>   
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>    
<script>
    //웹페이지를 모두 불러오면
    $(document).ready(function(){
        //btn클래스 태그 a에 click 이벤트를 연결
        $('button.btn1').on('click',function(event){
            alert("개인정보 변경이 완료되었습니다.")
        });
        $('button.btn2').on('click',function(event){
            alert("회원탈퇴가 완료되었습니다.")
        });
    });
</script>    
</body>
</html>