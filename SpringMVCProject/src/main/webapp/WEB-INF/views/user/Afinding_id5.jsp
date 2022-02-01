<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>
    
     <%@ include file="../include/base-static-files.jsp" %>
    
     
  

<script>
$(document).ready(function(){
	$("#findid").on('click', function(event){
		
		
		var userName = $("#userName").val();
		var userEmail = $("#userEmail").val();
		var userPhone = $("#userPhone").val();
		
		
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
			document.form1.action="${path}/myapp/findid.do"
			document.form1.submit();
		
		
	  		});
		});	

</script>

</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
    <div class='container-fluid'>
       <%@ include file="../include/beforelogin_header.jsp" %>

        <section class="row section">
            <form name="form1" method="post">
            <div class="mainCon">
                <div class="mainTitle">아이디 찾기</div>
                   <form action="member_process.php?mode=login" method="post">
                    <table class="mainTable">
                     <tr>
                       <td>성명 : </td>
                       <td style='padding: 5px;'><input id="userName" type="text" name="user_name" required></td>
                     </tr>
                     <tr>
                       <td> 전화번호 : </td>
                       <td><input id="userPhone" type="text" name="user_phone" required></td>
                       <td style='padding: 5px;'></td>
                     </tr>
                     <tr>
                       <td> 이메일 : </td>
                       <td><input id="userEmail" type="text" name="user_email" required></td>
                       <td style='padding: 5px;'></td>
                     </tr>
         
                     <tr>
                       <table style='margin:auto; text-align:center; margin-top: 20px;'>
                       <td><a id="findid" class="btn btn-default btn1" href='#'>아이디찾기</a></td>
                        
                       </table>
                       <c:if test="${check==1}">
                       <br>
                       <p class="result">일치하는 정보가 존재하지 않습니다.</p>
                     	</c:if>
                     	<c:if test="${check==0}">
                     	<br>
                     	<p class="result">찾으시는 아이디는 ${id} 입니다.</p>
                     	</c:if>
                     </tr>
                   </table>
                   </form>
                   </div>
               </form>
        </section>
    <%@ include file="../include/footer.jsp" %>
</div>
</body>
</html>