<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Attendance</title>
<link href="./css/my_attendance.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
	<%@ include file = "header.jsp" %>
	
	
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
		Monthly Attendance
	</div>
	<div class="monthly_attendance_line_chart" id="bar_chart">
		
	</div>
	<div class="monthly_attendance_pie_chart" id="chart_div">
		
	</div>
	<%
		ResultSet rs=(ResultSet)request.getAttribute("rs");
		String[] jul=new String[31];
		String[] aug=new String[31];
		String[] sep=new String[31];
		String[] oct=new String[31];
		String[] nov=new String[31];
		String[] dec=new String[31];
		String[] jan=new String[31];
		String[] feb=new String[31];
		int month=0;
		int day=0;
		int wd=0;
		int p=0;
		int a=0;
		int l=0;
		int totalPresent=0;
		int totalAbsent=0;
		int totalLeave=0;
		double percent=0;
		for(int i=6;i<31;i+=7)
		{
			jul[i]="S";
		}
		for(int i=3;i<31;i+=7)
		{
			aug[i]="S";
		}
		for(int i=0;i<31;i+=7)
		{
			sep[i]="S";
		}
		for(int i=5;i<31;i+=7)
		{
			oct[i]="S";
		}
		for(int i=2;i<31;i+=7)
		{
			nov[i]="S";
		}
		for(int i=0;i<31;i+=7)
		{
			dec[i]="S";
		}
		for(int i=4;i<31;i+=7)
		{
			jan[i]="S";
		}
		for(int i=1;i<31;i+=7)
		{
			feb[i]="S";
		}
		while(rs.next())
		{
			month=rs.getInt(1);
			switch(month)
			{
				case 1:
					day=rs.getInt(2);
					switch(day)
					{
						case 1:
							jan[0]=rs.getString(3);
							break;
						case 2:
							jan[1]=rs.getString(3);
							break;
						case 3:
							jan[2]=rs.getString(3);
							break;
						case 4:
							jan[3]=rs.getString(3);
							break;
						case 6:
							jan[5]=rs.getString(3);
							break;
						case 7:
							jan[6]=rs.getString(3);
							break;
						case 8:
							jan[7]=rs.getString(3);
							break;
						case 9:
							jan[8]=rs.getString(3);
							break;
						case 10:
							jan[9]=rs.getString(3);
							break;
						case 11:
							jan[10]=rs.getString(3);
							break;
						case 13:
							jan[12]=rs.getString(3);
							break;
						case 14:
							jan[13]=rs.getString(3);
							break;
						case 15:
							jan[14]=rs.getString(3);
							break;
						case 16:
							jan[15]=rs.getString(3);
							break;
						case 17:
							jan[16]=rs.getString(3);
							break;
						case 18:
							jan[17]=rs.getString(3);
							break;
						case 20:
							jan[19]=rs.getString(3);
							break;
						case 21:
							jan[20]=rs.getString(3);
							break;
						case 22:
							jan[21]=rs.getString(3);
							break;
						case 23:
							jan[22]=rs.getString(3);
							break;
						case 24:
							jan[23]=rs.getString(3);
							break;
						case 25:
							jan[24]=rs.getString(3);
							break;
						case 27:
							jan[26]=rs.getString(3);
							break;
						case 28:
							jan[27]=rs.getString(3);
							break;
						case 29:
							jan[28]=rs.getString(3);
							break;
						case 30:
							jan[29]=rs.getString(3);
							break;
					}
				break;
				case 2:
					day=rs.getInt(2);
					switch(day)
					{
						case 1:
							feb[0]=rs.getString(3);
							break;
						case 3:
							feb[2]=rs.getString(3);
							break;
						case 4:
							feb[3]=rs.getString(3);
							break;
						case 5:
							feb[4]=rs.getString(3);
							break;
						case 6:
							feb[5]=rs.getString(3);
							break;
						case 7:
							feb[6]=rs.getString(3);
							break;
						case 8:
							feb[7]=rs.getString(3);
							break;
						case 10:
							feb[9]=rs.getString(3);
							break;
						case 11:
							feb[10]=rs.getString(3);
							break;
						case 12:
							feb[11]=rs.getString(3);
							break;
						case 13:
							feb[12]=rs.getString(3);
							break;
						case 14:
							feb[13]=rs.getString(3);
							break;
						case 15:
							feb[14]=rs.getString(3);
							break;
						case 17:
							feb[16]=rs.getString(3);
							break;
						case 18:
							feb[17]=rs.getString(3);
							break;
						case 19:
							feb[18]=rs.getString(3);
							break;
						case 20:
							feb[19]=rs.getString(3);
							break;
						case 21:
							feb[20]=rs.getString(3);
							break;
						case 22:
							feb[21]=rs.getString(3);
							break;
						case 24:
							feb[23]=rs.getString(3);
							break;
						case 25:
							feb[24]=rs.getString(3);
							break;
						case 26:
							feb[25]=rs.getString(3);
							break;
						case 27:
							feb[26]=rs.getString(3);
							break;
						case 28:
							feb[27]=rs.getString(3);
							break;
					}
				break;
				case 7:
					day=rs.getInt(2);
					switch(day)
					{
						case 1:
							jul[0]=rs.getString(3);
							break;
						case 2:
							jul[1]=rs.getString(3);
							break;
						case 3:
							jul[2]=rs.getString(3);
							break;
						case 4:
							jul[3]=rs.getString(3);
							break;
						case 5:
							jul[4]=rs.getString(3);
							break;
						case 6:
							jul[5]=rs.getString(3);
							break;
						case 8:
							jul[7]=rs.getString(3);
							break;
						case 9:
							jul[8]=rs.getString(3);
							break;
						case 10:
							jul[9]=rs.getString(3);
							break;
						case 11:
							jul[10]=rs.getString(3);
							break;
						case 12:
							jul[11]=rs.getString(3);
							break;
						case 13:
							jul[12]=rs.getString(3);
							break;
						case 15:
							jul[14]=rs.getString(3);
							break;
						case 16:
							jul[15]=rs.getString(3);
							break;
						case 17:
							jul[16]=rs.getString(3);
							break;
						case 18:
							jul[17]=rs.getString(3);
							break;
						case 19:
							jul[18]=rs.getString(3);
							break;
						case 20:
							jul[20]=rs.getString(3);
							break;
						case 22:
							jul[21]=rs.getString(3);
							break;
						case 23:
							jul[22]=rs.getString(3);
							break;
						case 24:
							jul[23]=rs.getString(3);
							break;
						case 25:
							jul[24]=rs.getString(3);
							break;
						case 26:
							jul[25]=rs.getString(3);
							break;
						case 27:
							jul[27]=rs.getString(3);
							break;
						case 29:
							jul[28]=rs.getString(3);
							break;
						case 30:
							jul[29]=rs.getString(3);
							break;
						case 31:
							jul[30]=rs.getString(3);
							break;
					}
				break;
				case 8:
					day=rs.getInt(2);
					switch(day)
					{
						case 1:
							aug[0]=rs.getString(3);
							break;
						case 2:
							aug[1]=rs.getString(3);
							break;
						case 3:
							aug[2]=rs.getString(3);
							break;
						case 5:
							aug[4]=rs.getString(3);
							break;
						case 6:
							aug[5]=rs.getString(3);
							break;
						case 7:
							aug[6]=rs.getString(3);
							break;
						case 8:
							aug[7]=rs.getString(3);
							break;
						case 9:
							aug[8]=rs.getString(3);
							break;
						case 10:
							aug[9]=rs.getString(3);
							break;
						case 12:
							aug[11]=rs.getString(3);
							break;
						case 13:
							aug[12]=rs.getString(3);
							break;
						case 14:
							aug[13]=rs.getString(3);
							break;
						case 15:
							aug[14]=rs.getString(3);
							break;
						case 16:
							aug[15]=rs.getString(3);
							break;
						case 17:
							aug[16]=rs.getString(3);
							break;
						case 19:
							aug[18]=rs.getString(3);
							break;
						case 20:
							aug[19]=rs.getString(3);
							break;
						case 21:
							aug[20]=rs.getString(3);
							break;
						case 22:
							aug[21]=rs.getString(3);
							break;
						case 23:
							aug[22]=rs.getString(3);
							break;
						case 24:
							aug[23]=rs.getString(3);
							break;
						case 26:
							aug[25]=rs.getString(3);
							break;
						case 27:
							aug[26]=rs.getString(3);
							break;
						case 28:
							aug[27]=rs.getString(3);
							break;
						case 29:
							aug[28]=rs.getString(3);
							break;
						case 30:
							aug[29]=rs.getString(3);
							break;
						case 31:
							aug[30]=rs.getString(3);
							break;
					}
				break;
				case 9:
					day=rs.getInt(2);
					switch(day)
					{
						case 2:
							sep[1]=rs.getString(3);
							break;
						case 3:
							sep[2]=rs.getString(3);
							break;
						case 4:
							sep[3]=rs.getString(3);
							break;
						case 5:
							sep[4]=rs.getString(3);
							break;
						case 6:
							sep[5]=rs.getString(3);
							break;
						case 7:
							sep[6]=rs.getString(3);
							break;
						case 9:
							sep[8]=rs.getString(3);
							break;
						case 10:
							sep[9]=rs.getString(3);
							break;
						case 11:
							sep[10]=rs.getString(3);
							break;
						case 12:
							sep[11]=rs.getString(3);
							break;
						case 13:
							sep[12]=rs.getString(3);
							break;
						case 14:
							sep[13]=rs.getString(3);
							break;
						case 16:
							sep[15]=rs.getString(3);
							break;
						case 17:
							sep[16]=rs.getString(3);
							break;
						case 18:
							sep[17]=rs.getString(3);
							break;
						case 19:
							sep[18]=rs.getString(3);
							break;
						case 20:
							sep[19]=rs.getString(3);
							break;
						case 21:
							sep[20]=rs.getString(3);
							break;
						case 23:
							sep[22]=rs.getString(3);
							break;
						case 24:
							sep[23]=rs.getString(3);
							break;
						case 25:
							sep[24]=rs.getString(3);
							break;
						case 26:
							sep[25]=rs.getString(3);
							break;
						case 27:
							sep[26]=rs.getString(3);
							break;
						case 28:
							sep[27]=rs.getString(3);
							break;
						case 30:
							sep[29]=rs.getString(3);
							break;
					}
				break;
				case 10:
					day=rs.getInt(2);
					switch(day)
					{
						case 1:
							oct[0]=rs.getString(3);
							break;
						case 2:
							oct[1]=rs.getString(3);
							break;
						case 3:
							oct[2]=rs.getString(3);
							break;
						case 4:
							oct[3]=rs.getString(3);
							break;
						case 5:
							oct[4]=rs.getString(3);
							break;
						case 7:
							oct[6]=rs.getString(3);
							break;
						case 8:
							oct[7]=rs.getString(3);
							break;
						case 9:
							oct[8]=rs.getString(3);
							break;
						case 10:
							oct[9]=rs.getString(3);
							break;
						case 11:
							oct[10]=rs.getString(3);
							break;
						case 12:
							oct[11]=rs.getString(3);
							break;
						case 14:
							oct[13]=rs.getString(3);
							break;
						case 15:
							oct[14]=rs.getString(3);
							break;
						case 16:
							oct[15]=rs.getString(3);
							break;
						case 17:
							oct[16]=rs.getString(3);
							break;
						case 18:
							oct[17]=rs.getString(3);
							break;
						case 19:
							oct[18]=rs.getString(3);
							break;
						case 21:
							oct[20]=rs.getString(3);
							break;
						case 22:
							oct[21]=rs.getString(3);
							break;
						case 23:
							oct[22]=rs.getString(3);
							break;
						case 24:
							oct[23]=rs.getString(3);
							break;
						case 25:
							oct[24]=rs.getString(3);
							break;
						case 26:
							oct[25]=rs.getString(3);
							break;
						case 28:
							oct[27]=rs.getString(3);
							break;
						case 29:
							oct[28]=rs.getString(3);
							break;
						case 30:
							oct[29]=rs.getString(3);
							break;
						case 31:
							oct[30]=rs.getString(3);
							break;
					}
				break;
				case 11:
					day=rs.getInt(2);
					switch(day)
					{
						case 1:
							nov[0]=rs.getString(3);
							break;
						case 2:
							nov[1]=rs.getString(3);
							break;
						case 4:
							nov[3]=rs.getString(3);
							break;
						case 5:
							nov[4]=rs.getString(3);
							break;
						case 6:
							nov[5]=rs.getString(3);
							break;
						case 7:
							nov[6]=rs.getString(3);
							break;
						case 8:
							nov[7]=rs.getString(3);
							break;
						case 9:
							nov[8]=rs.getString(3);
							break;
						case 11:
							nov[10]=rs.getString(3);
							break;
						case 12:
							nov[11]=rs.getString(3);
							break;
						case 13:
							nov[12]=rs.getString(3);
							break;
						case 14:
							nov[13]=rs.getString(3);
							break;
						case 15:
							nov[14]=rs.getString(3);
							break;
						case 16:
							nov[15]=rs.getString(3);
							break;
						case 18:
							nov[17]=rs.getString(3);
							break;
						case 19:
							nov[18]=rs.getString(3);
							break;
						case 20:
							nov[19]=rs.getString(3);
							break;
						case 21:
							nov[20]=rs.getString(3);
							break;
						case 22:
							nov[21]=rs.getString(3);
							break;
						case 23:
							nov[22]=rs.getString(3);
							break;
						case 25:
							nov[24]=rs.getString(3);
							break;
						case 26:
							nov[25]=rs.getString(3);
							break;
						case 27:
							nov[26]=rs.getString(3);
							break;
						case 28:
							nov[27]=rs.getString(3);
							break;
						case 29:
							nov[28]=rs.getString(3);
							break;
						case 30:
							nov[29]=rs.getString(3);
							break;
					}
				break;
				case 12:
					day=rs.getInt(2);
					switch(day)
					{
						case 2:
							dec[1]=rs.getString(3);
							break;
						case 3:
							dec[2]=rs.getString(3);
							break;
						case 4:
							dec[3]=rs.getString(3);
							break;
						case 5:
							dec[4]=rs.getString(3);
							break;
						case 6:
							dec[5]=rs.getString(3);
							break;
						case 7:
							dec[6]=rs.getString(3);
							break;
						case 9:
							dec[8]=rs.getString(3);
							break;
						case 10:
							dec[9]=rs.getString(3);
							break;
						case 11:
							dec[10]=rs.getString(3);
							break;
						case 12:
							dec[11]=rs.getString(3);
							break;
						case 13:
							dec[12]=rs.getString(3);
							break;
						case 14:
							dec[13]=rs.getString(3);
							break;
						case 16:
							dec[15]=rs.getString(3);
							break;
						case 17:
							dec[16]=rs.getString(3);
							break;
						case 18:
							dec[17]=rs.getString(3);
							break;
						case 19:
							dec[18]=rs.getString(3);
							break;
						case 20:
							dec[19]=rs.getString(3);
							break;
						case 21:
							dec[20]=rs.getString(3);
							break;
						case 23:
							dec[22]=rs.getString(3);
							break;
						case 24:
							dec[23]=rs.getString(3);
							break;
						case 25:
							dec[24]=rs.getString(3);
							break;
						case 26:
							dec[25]=rs.getString(3);
							break;
						case 27:
							dec[26]=rs.getString(3);
							break;
						case 28:
							dec[27]=rs.getString(3);
							break;
						case 30:
							dec[29]=rs.getString(3);
							break;
						case 31:
							dec[30]=rs.getString(3);
							break;
					}
				break;
			}
		}
	%>
	<table id="my_attendance_table">
		<tr id="table_heading">
			<th id="mn">Month Name</th>
			<%
				for(int i=1;i<=31;i++)
				{
					out.println("<th class=\"date\">"+i+"</th>");
				}
			%>
			<th id="wd">Total W.D.</th>
			<th id="present">Present %</th>
		</tr>
		<tr class="even_row">
			<td class="col1">Jul</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(jul[i]==null)
					{
						out.println("<td class=\"col2\"></td>");
					}
					else
					{
						if(jul[i].equals("S"))
						{
							out.println("<td class=\"col2\"><div class=\"sunday\">"+jul[i]+"</div></td>");
						}
						else if(jul[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2\"><div class=\"absent\">"+jul[i]+"</div></td>");
						}
						else if(jul[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2\"><div class=\"leave\">"+jul[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2\">"+jul[i]+"</td>");
						}
					}
				}
				int julPresent=p;
				int julAbsent=a;
				int julLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2"><%= wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1">Aug</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(aug[i]==null)
					{
						out.println("<td class=\"col2\"></td>");
					}
					else
					{
						if(aug[i].equals("S"))
						{
							out.println("<td class=\"col2\"><div class=\"sunday\">"+aug[i]+"</div></td>");
						}
						else if(aug[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2\"><div class=\"absent\">"+aug[i]+"</div></td>");
						}
						else if(aug[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2\"><div class=\"leave\">"+aug[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2\">"+aug[i]+"</td>");
						}
					}
				}
				int augPresent=p;
				int augAbsent=a;
				int augLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2"><%= wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", percent) %></td>
		</tr>
		<tr class="even_row">
			<td class="col1">Sep</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(sep[i]==null)
					{
						out.println("<td class=\"col2\"></td>");
					}
					else
					{
						if(sep[i].equals("S"))
						{
							out.println("<td class=\"col2\"><div class=\"sunday\">"+sep[i]+"</div></td>");
						}
						else if(sep[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2\"><div class=\"absent\">"+sep[i]+"</div></td>");
						}
						else if(sep[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2\"><div class=\"leave\">"+sep[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2\">"+sep[i]+"</td>");
						}
					}
				}
				int sepPresent=p;
				int sepAbsent=a;
				int sepLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2"><%= wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1">Oct</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(oct[i]==null)
					{
						out.println("<td class=\"col2\"></td>");
					}
					else
					{
						if(oct[i].equals("S"))
						{
							out.println("<td class=\"col2\"><div class=\"sunday\">"+oct[i]+"</div></td>");
						}
						else if(oct[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2\"><div class=\"absent\">"+oct[i]+"</div></td>");
						}
						else if(oct[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2\"><div class=\"leave\">"+oct[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2\">"+oct[i]+"</td>");
						}
					}
				}
				int octPresent=p;
				int octAbsent=a;
				int octLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2"><%= wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", percent) %></td>
		</tr>
		<tr class="even_row">
			<td class="col1">Nov</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(nov[i]==null)
					{
						out.println("<td class=\"col2\"></td>");
					}
					else
					{
						if(nov[i].equals("S"))
						{
							out.println("<td class=\"col2\"><div class=\"sunday\">"+nov[i]+"</div></td>");
						}
						else if(nov[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2\"><div class=\"absent\">"+nov[i]+"</div></td>");
						}
						else if(nov[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2\"><div class=\"leave\">"+nov[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2\">"+nov[i]+"</td>");
						}
					}
				}
				int novPresent=p;
				int novAbsent=a;
				int novLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2"><%= wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1">Dec</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(dec[i]==null)
					{
						out.println("<td class=\"col2\"></td>");
					}
					else
					{
						if(dec[i].equals("S"))
						{
							out.println("<td class=\"col2\"><div class=\"sunday\">"+dec[i]+"</div></td>");
						}
						else if(dec[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2\"><div class=\"absent\">"+dec[i]+"</div></td>");
						}
						else if(dec[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2\"><div class=\"leave\">"+dec[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2\">"+dec[i]+"</td>");
						}
					}
				}
				int decPresent=p;
				int decAbsent=a;
				int decLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2"><%= wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", percent) %></td>
		</tr>
		<tr class="even_row">
			<td class="col1">Jan</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(jan[i]==null)
					{
						out.println("<td class=\"col2\"></td>");
					}
					else
					{
						if(jan[i].equals("S"))
						{
							out.println("<td class=\"col2\"><div class=\"sunday\">"+jan[i]+"</div></td>");
						}
						else if(jan[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2\"><div class=\"absent\">"+jan[i]+"</div></td>");
						}
						else if(jan[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2\"><div class=\"leave\">"+jan[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2\">"+jan[i]+"</td>");
						}
					}
				}
				int janPresent=p;
				int janAbsent=a;
				int janLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2"><%= wd %></td>
			<td class="col34_row1"><%= String.format("%2.02f", percent) %></td>
		</tr>
		<tr class="odd_row">
			<td class="col1_row8">Feb</td>
			<%
				wd=0;
				p=0;
				a=0;
				l=0;
				for(int i=0;i<31;i++)
				{
					if(feb[i]==null)
					{
						out.println("<td class=\"col2_row8\"></td>");
					}
					else
					{
						if(feb[i].equals("S"))
						{
							out.println("<td class=\"col2_row8\"><div class=\"sunday\">"+feb[i]+"</div></td>");
						}
						else if(feb[i].equals("A"))
						{
							wd++;
							a++;
							totalAbsent++;
							out.println("<td class=\"col2_row8\"><div class=\"absent\">"+feb[i]+"</div></td>");
						}
						else if(feb[i].equals("L"))
						{
							wd++;
							l++;
							totalLeave++;
							out.println("<td class=\"col2_row8\"><div class=\"leave\">"+feb[i]+"</div></td>");
						}
						else
						{
							wd++;
							p++;
							totalPresent++;
							out.println("<td class=\"col2_row8\">"+feb[i]+"</td>");
						}
					}
				}
				int febPresent=p;
				int febAbsent=a;
				int febLeave=l;
				if(wd==0)
				{
					percent=0;
				}
				else
				{
					percent=(double)p/wd*100;
				}
			%>
			<td class="col2_row8"><%= wd %></td>
			<td class="col34_row8"><%= String.format("%2.02f", percent) %></td>
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
          ['Month', 'Present', 'Absent', 'Leave'],
          ['Jul', <%= julPresent %>, <%= julAbsent %>, <%= julLeave %>],
          ['Aug', <%= augPresent %>, <%= augAbsent %>, <%= augLeave %>],
          ['Sep', <%= sepPresent %>, <%= sepAbsent %>, <%= sepLeave %>],
          ['Oct', <%= octPresent %>, <%= octAbsent %>, <%= octLeave %>],
          ['Nov', <%= novPresent %>, <%= novAbsent %>, <%= novLeave %>],
          ['Dec', <%= decPresent %>, <%= decAbsent %>, <%= decLeave %>],
          ['Jan', <%= janPresent %>, <%= janAbsent %>, <%= janLeave %>],
          ['Feb', <%= febPresent %>, <%= febAbsent %>, <%= febLeave %>]
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