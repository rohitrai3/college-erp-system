<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%@ include file = "student_header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Attendance</title>
<link href="./css/student_my_attendance.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
	<div class="my_attendance_text">
		My Attendance
	</div>
	<div class="academic_year_text">
		<strong>Academic Year :</strong>
	</div>
	<div class="academic_year_select">
		<form action="#">
			<select name="academic_year" id="academic_year" onchange="this.form.submit()">
				<option value="2019">2018-19</option>
				<option value="2018">2017-18</option>
			</select>
		</form>
	</div>
	<div class="content">
		
	</div>
	<div class="monthly_attendance">
		Subject-wise Attendance
	</div>
	<div class="total_attendance">
		Total Attendance
	</div>
	<div class="monthly_attendance_line_chart" id="bar_chart">
		
	</div>
	<div class="monthly_attendance_pie_chart" id="chart_div">
		
	</div>
	<%
		ResultSet rs=(ResultSet)request.getAttribute("rs");
		int aj_p=0;
		int aj_a=0;
		int aj_l=0;
		int aj_s=0;
		int aj_wd=0;
		int dos_p=0;
		int dos_a=0;
		int dos_l=0;
		int dos_s=0;
		int dos_wd=0;
		int dwdm_p=0;
		int dwdm_a=0;
		int dwdm_l=0;
		int dwdm_s=0;
		int dwdm_wd=0;
		int sna_p=0;
		int sna_a=0;
		int sna_l=0;
		int sna_s=0;
		int sna_wd=0;
		int we_p=0;
		int we_a=0;
		int we_l=0;
		int we_s=0;
		int we_wd=0;
		int ajl_p=0;
		int ajl_a=0;
		int ajl_l=0;
		int ajl_s=0;
		int ajl_wd=0;
		int snal_p=0;
		int snal_a=0;
		int snal_l=0;
		int snal_s=0;
		int snal_wd=0;
		int wel_p=0;
		int wel_a=0;
		int wel_l=0;
		int wel_s=0;
		int wel_wd=0;
		int totalPresent=0;
		int totalAbsent=0;
		int totalLeave=0;
		String subject=null;
		String attendance=null;
		while(rs.next())
		{
			subject=rs.getString(10);
			attendance=rs.getString(5);
			if(subject.equalsIgnoreCase("Advance Java") && attendance.equalsIgnoreCase("P"))
			{
				aj_p++;
				aj_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("Advance Java") && attendance.equalsIgnoreCase("A"))
			{
				aj_a++;
				aj_wd++;
				totalAbsent++;
			}
			if(subject.equalsIgnoreCase("Distributed Operating System") && attendance.equalsIgnoreCase("P"))
			{
				dos_p++;
				dos_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("Distributed Operating System") && attendance.equalsIgnoreCase("A"))
			{
				dos_a++;
				dos_wd++;
				totalAbsent++;
			}
			if(subject.equalsIgnoreCase("Data Warehouse and Data Mining") && attendance.equalsIgnoreCase("P"))
			{
				dwdm_p++;
				dwdm_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("Data Warehouse and Data Mining") && attendance.equalsIgnoreCase("A"))
			{
				dwdm_a++;
				dwdm_wd++;
				totalAbsent++;
			}
			if(subject.equalsIgnoreCase("System and Network Administration") && attendance.equalsIgnoreCase("P"))
			{
				sna_p++;
				sna_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("System and Network Administration") && attendance.equalsIgnoreCase("A"))
			{
				sna_a++;
				sna_wd++;
				totalAbsent++;
			}
			if(subject.equalsIgnoreCase("Web Engineering") && attendance.equalsIgnoreCase("P"))
			{
				we_p++;
				we_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("Web Engineering") && attendance.equalsIgnoreCase("A"))
			{
				we_a++;
				we_wd++;
				totalAbsent++;
			}
			if(subject.equalsIgnoreCase("Advance Java Lab") && attendance.equalsIgnoreCase("P"))
			{
				ajl_p++;
				ajl_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("Advance Java Lab") && attendance.equalsIgnoreCase("A"))
			{
				ajl_a++;
				ajl_wd++;
				totalAbsent++;
			}
			if(subject.equalsIgnoreCase("System and Network Administration Lab") && attendance.equalsIgnoreCase("P"))
			{
				snal_p++;
				snal_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("System and Network Administration Lab") && attendance.equalsIgnoreCase("A"))
			{
				snal_a++;
				snal_wd++;
				totalAbsent++;
			}
			if(subject.equalsIgnoreCase("Web Engineering Lab") && attendance.equalsIgnoreCase("P"))
			{
				wel_p++;
				wel_wd++;
				totalPresent++;
			}
			else if(subject.equalsIgnoreCase("Web Engineering Lab") && attendance.equalsIgnoreCase("A"))
			{
				wel_a++;
				wel_wd++;
				totalAbsent++;
			}
		}
		double aj_percent=(double)aj_p/aj_wd*100;
		double dos_percent=(double)dos_p/dos_wd*100;
		double dwdm_percent=(double)dwdm_p/dwdm_wd*100;
		double sna_percent=(double)sna_p/sna_wd*100;
		double we_percent=(double)we_p/we_wd*100;
		double ajl_percent=(double)ajl_p/ajl_wd*100;
		double snal_percent=(double)snal_p/snal_wd*100;
		double wel_percent=(double)wel_p/wel_wd*100;
	%>
	<table id="my_attendance_table">
		<tr id="table_heading">
			<th>Subject</th>
			<th>Present</th>
			<th>Absent</th>
			<th>Leave</th>
			<th>Suspend</th>
			<th>Total W.D.</th>
			<th>Present %</th>
		</tr>
		<tr class="even_row">
			<td class="col1">Advance Java</td>
			<td class="col2"><%= aj_p %></td>
			<td class="col2"><%= aj_a %></td>
			<td class="col2"><%= aj_l %></td>
			<td class="col2"><%= aj_s %></td>
			<td class="col2"><%= aj_wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", aj_percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1">Distributed Operating System</td>
			<td class="col2"><%= dos_p %></td>
			<td class="col2"><%= dos_a %></td>
			<td class="col2"><%= dos_l %></td>
			<td class="col2"><%= dos_s %></td>
			<td class="col2"><%= dos_wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", dos_percent) %></td>
		</tr>
		<tr class="even_row">
			<td class="col1">Data Warehouse and Data Mining</td>
			<td class="col2"><%= dwdm_p %></td>
			<td class="col2"><%= dwdm_a %></td>
			<td class="col2"><%= dwdm_l %></td>
			<td class="col2"><%= dwdm_s %></td>
			<td class="col2"><%= dwdm_wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", dwdm_percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1">System and Network Administration</td>
			<td class="col2"><%= sna_p %></td>
			<td class="col2"><%= sna_a %></td>
			<td class="col2"><%= sna_l %></td>
			<td class="col2"><%= sna_s %></td>
			<td class="col2"><%= sna_wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", sna_percent) %></td>
		</tr>
		<tr class="even_row">
			<td class="col1">Web Engineering</td>
			<td class="col2"><%= we_p %></td>
			<td class="col2"><%= we_a %></td>
			<td class="col2"><%= we_l %></td>
			<td class="col2"><%= we_s %></td>
			<td class="col2"><%= we_wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", we_percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1">Advance Java Lab</td>
			<td class="col2"><%= ajl_p %></td>
			<td class="col2"><%= ajl_a %></td>
			<td class="col2"><%= ajl_l %></td>
			<td class="col2"><%= ajl_s %></td>
			<td class="col2"><%= ajl_wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", ajl_percent) %></td>
		</tr>
		<tr class="even_row">
			<td class="col1">System and Network Administration Lab</td>
			<td class="col2"><%= snal_p %></td>
			<td class="col2"><%= snal_a %></td>
			<td class="col2"><%= snal_l %></td>
			<td class="col2"><%= snal_s %></td>
			<td class="col2"><%= snal_wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", snal_percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1_row8">Web Engineering Lab</td>
			<td class="col2_row8"><%= wel_p %></td>
			<td class="col2_row8"><%= wel_a %></td>
			<td class="col2_row8"><%= wel_l %></td>
			<td class="col2_row8"><%= wel_s %></td>
			<td class="col2_row8"><%= wel_wd %></td>
			<td class="col34_row8"><%= String.format("%2.02f", wel_percent) %></td>
		</tr>
	</table>
	    
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Attendance');
        data.addColumn('number', 'Percentage');
        data.addRows([
          ['Present', <%= totalPresent %>],
          ['Absent', <%= totalAbsent %>],
          ['Leave', <%= totalLeave %>]
        ]);

        // Set chart options
        var options = {'width':500,
                       'height':300,
                       'backgroundColor':'aliceblue'};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Subject', 'Present', 'Absent', 'Leave'],
          ['A.J.', <%= aj_p %>, <%= aj_a %>, <%= aj_l %>],
          ['D.O.S.', <%= dos_p %>, <%= dos_a %>, <%= dos_l %>],
          ['D.W.D.M.', <%= dwdm_p %>, <%= dwdm_a %>, <%= dwdm_l %>],
          ['S.N.A.', <%= sna_p %>, <%= sna_a %>, <%= sna_l %>],
          ['W.E.', <%= we_p %>, <%= we_a %>, <%= we_l %>],
          ['A.J. Lab', <%= ajl_p %>, <%= ajl_a %>, <%= ajl_l %>],
          ['S.N.A. Lab', <%= snal_p %>, <%= snal_a %>, <%= snal_l %>],
          ['W.E. Lab', <%= wel_p %>, <%= wel_a %>, <%= wel_l %>]
        ]);

        var options = {
          'backgroundColor':'aliceblue'
        };

        var chart = new google.charts.Bar(document.getElementById('bar_chart'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
    
	<%@ include file = "footer.jsp" %>
</body>
</html>