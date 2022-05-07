<%@page pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(ChartLoai);
      google.charts.setOnLoadCallback(ChartMonth);
      google.charts.setOnLoadCallback(ChartBarLoai);
      google.charts.setOnLoadCallback(ChartBarThang);
      
      function ChartLoai() {
    	  var array = [
              ['Loai', 'Doanh Thu'],
              <c:forEach items="${chartList}" var="chart">
              ["${chart.loai}",     ${chart.doanhthu}],
              </c:forEach>
            ];
        var data = google.visualization.arrayToDataTable(array);

        var options = {
          title: 'DOANH THU THEO LOAI',
          pieHole: 0.4,width:600,height:300
        };
        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
      function ChartMonth() {

          var array = [
              ['Thang', 'Doanh Thu'],
              <c:forEach items="${chartMonth}" var="chart">
              ["${chart.thang}",     ${chart.doanhthu}],
              </c:forEach>
            ];
        	var data = google.visualization.arrayToDataTable(array);

          var options = {
            title: 'DOANH THU THEO THANG',width:600,height:300
          };

          var chart = new google.visualization.PieChart(document.getElementById('piechart'));

          chart.draw(data, options);
        }
      
      
      function ChartBarLoai() {
    	  var array = [
    		  ['Loai','Loai'],
              <c:forEach items="${chartList}" var="chart">
              
              ["${chart.loai}",	${chart.doanhthu}],
              </c:forEach>
            ];
        var data = google.visualization.arrayToDataTable(array);

        var options = {
                chart: {
                	title: 'DOANH THU THEO LOAI'
                },
                bars: 'horizontal' // Required for Material Bar Charts.
              };

        var chart = new google.charts.Bar(document.getElementById('barchart_loai'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
      function ChartBarThang() {
    	  var array = [
    		  ['Thang','Thang'],
              <c:forEach items="${chartMonth}" var="chart">
              
              ["${chart.thang}",	${chart.doanhthu}],
              </c:forEach>
            ];
        var data = google.visualization.arrayToDataTable(array);

        var options = {
                chart: {
                	title: 'DOANH THU THEO THANG'
                },
                bars: 'horizontal' // Required for Material Bar Charts.
              };

        var chart = new google.charts.Bar(document.getElementById('barchart_thang'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
  </head>
  <body>
    <table>
      <tr>
        <td><div id="donutchart"></div></td>
        <td><div id="piechart"></div></td>
      </tr>
      <tr>
      	<td><div id="barchart_loai" style="width:500px ; height:300px"></div></td>
      	<td><div id="barchart_thang" style="width:500px ; height:300px"></div></td>
      </tr>
    </table>
  </body>
</html>
