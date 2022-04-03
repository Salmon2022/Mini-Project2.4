<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>시계열 분석서비스</title>
	
	 <%@ include file="../include/base-static-files2.jsp" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);


	function drawChart() {


 var data = new google.visualization.DataTable();
 
 data.addColumn('datetime', '월');
 data.addColumn('number','농축수산물');
 data.addColumn('number','음식료품');
 data.addColumn('number','음식서비스');
 data.addColumn('number','합계평균');
 
 var dataRow=[];
 
 dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',1),${timeSerisList.get(0).getTrading_amount()},${timeSerisList.get(12).getTrading_amount()},${timeSerisList.get(24).getTrading_amount()},${timeSerisList.get(36).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',2),${timeSerisList.get(1).getTrading_amount()},${timeSerisList.get(13).getTrading_amount()},${timeSerisList.get(25).getTrading_amount()},${timeSerisList.get(37).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',3),${timeSerisList.get(2).getTrading_amount()},${timeSerisList.get(14).getTrading_amount()},${timeSerisList.get(26).getTrading_amount()},${timeSerisList.get(38).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',4),${timeSerisList.get(3).getTrading_amount()},${timeSerisList.get(15).getTrading_amount()},${timeSerisList.get(27).getTrading_amount()},${timeSerisList.get(39).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',5),${timeSerisList.get(4).getTrading_amount()},${timeSerisList.get(16).getTrading_amount()},${timeSerisList.get(28).getTrading_amount()},${timeSerisList.get(40).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',6),${timeSerisList.get(5).getTrading_amount()},${timeSerisList.get(17).getTrading_amount()},${timeSerisList.get(29).getTrading_amount()},${timeSerisList.get(41).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',7),${timeSerisList.get(6).getTrading_amount()},${timeSerisList.get(18).getTrading_amount()},${timeSerisList.get(30).getTrading_amount()},${timeSerisList.get(42).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',8),${timeSerisList.get(7).getTrading_amount()},${timeSerisList.get(19).getTrading_amount()},${timeSerisList.get(31).getTrading_amount()},${timeSerisList.get(43).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',9),${timeSerisList.get(8).getTrading_amount()},${timeSerisList.get(20).getTrading_amount()},${timeSerisList.get(32).getTrading_amount()},${timeSerisList.get(44).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',10),${timeSerisList.get(9).getTrading_amount()},${timeSerisList.get(21).getTrading_amount()},${timeSerisList.get(33).getTrading_amount()},${timeSerisList.get(45).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',11),${timeSerisList.get(10).getTrading_amount()},${timeSerisList.get(22).getTrading_amount()},${timeSerisList.get(34).getTrading_amount()},${timeSerisList.get(46).getTrading_amount()}];
  	data.addRow(dataRow);
 	dataRow = [new Date('${timeSerisList.get(0).getAnalysis_year()}',12),${timeSerisList.get(11).getTrading_amount()},${timeSerisList.get(23).getTrading_amount()},${timeSerisList.get(35).getTrading_amount()},${timeSerisList.get(47).getTrading_amount()}];
  	data.addRow(dataRow);
	
	
	
	

	
	
	

  var options = {
    title: '2019년 온라인 상품 거래액',
    curveType: 'function',
    legend: { position: 'bottom' }
  };

  var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

  chart.draw(data, options);
}

</script>
</head>
<body>
    <div class='container-fluid'>
        <%@ include file="../include/afterlogin_header.jsp"%>
        <section class="row section">
            <!-- section -->
            <div class="dropdown">
                <button class="dropbtn">
                    <span class="dropbtn_icon">--- 연도별 거래액 ---</span>
                </button>
                <div class="dropdown-content">
                    <a href="service2?analysis_year=2019">2019년</a>
                    <a href="service2?analysis_year=2020">2020년</a>
                    <a href="service2?analysis_year=2021">2021년</a>
                </div>
            </div>
            <br>
            <br>
            <div>
                <div class='center'>
                    <br><br>
                    <h2>시계열 분석 서비스</h2>
                     <c:if test="${analysis_year == 2019}">           	 
                   	 	<div id="curve_chart" style="width: 900px; height: 500px; margin:auto;'"></div>                	 
                	 </c:if>
                	  <c:if test="${analysis_year == 2020}">
                     <div id="curve_chart" style="width: 900px; height: 500px; margin:auto;"></div>                	 
                	 
                	 </c:if>
                	  <c:if test="${analysis_year == 2021}">
                     <div id="curve_chart" style="width: 900px; height: 500px; margin:auto;"></div>                	 
                	 
                	 </c:if>
                </div>
                <br><br> 
            </div>
        </section>
         <%@ include file="../include/footer.jsp"%>
    </div>
</body>
</html>