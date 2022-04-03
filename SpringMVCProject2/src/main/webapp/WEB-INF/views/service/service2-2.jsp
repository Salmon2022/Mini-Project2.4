<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상관분석 서비스2</title>

   <%@ include file="../include/base-static-files2.jsp" %>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawTitleSubtitle);

function drawTitleSubtitle() {
      
	  var data = new google.visualization.DataTable();
      data.addColumn('string', 'correlation-pair');
      data.addColumn('number','correlation');
      
      var dataRow=[];
      
      	dataRow = ['${correlList.get(0).getCorrelation_pair()}',${correlList.get(0).getCorrelation()}];
    	data.addRow(dataRow);
      	dataRow = ['${correlList.get(1).getCorrelation_pair()}',${correlList.get(1).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(2).getCorrelation_pair()}',${correlList.get(2).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(3).getCorrelation_pair()}',${correlList.get(3).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(4).getCorrelation_pair()}',${correlList.get(4).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(5).getCorrelation_pair()}',${correlList.get(5).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(6).getCorrelation_pair()}',${correlList.get(6).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(7).getCorrelation_pair()}',${correlList.get(7).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(8).getCorrelation_pair()}',${correlList.get(8).getCorrelation()}];
    	data.addRow(dataRow);
    	dataRow = ['${correlList.get(9).getCorrelation_pair()}',${correlList.get(9).getCorrelation()}];
    	data.addRow(dataRow);
    	  	
      var materialOptions = {
        chart: {
          title: '코로나 확진자수와 온라인 상품 매출액의 상관관계',
        },
        hAxis: {
          title: '상관계수',
          minValue: 0,
          maxValue:1.0,
        },
        vAxis: {
          title: '상관계수 pair'
        },
        bars: 'horizontal'
      };
      var materialChart = new google.charts.Bar(document.getElementById('chart_div'));
      materialChart.draw(data, materialOptions);
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
                    <span class="dropbtn_icon">--- 연도별 상관계수 ---</span>
                </button>
                <div class="dropdown-content">
                    <a href="service2-2?analysis_year=2020">2020년</a>
                    <a href="service2-2?analysis_year=2021">2021년</a>
                </div>
            </div>
            <div>
                <div class='center'>
                    상관분석결과2<br><br>
                     <c:if test="${analysis_year == 2020}">           	 
                   	 	<div id="chart_div" style="width: 900px; height: 500px; margin:auto;"></div>
                   	 	              	 
                	 </c:if>
                    <c:if test="${analysis_year == 2021}">           	 
                   	 	<div id="chart_div" style="width: 900px; height: 500px; margin:auto;"></div>                	 
                	 </c:if>
            </div>

        </section>
        <%@ include file="../include/footer.jsp"%>
    </div>
</body>
</html>