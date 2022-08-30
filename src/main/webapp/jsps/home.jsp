<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>P2pro Technologies- Home Page</title>
<link href="images/P2pro-logo.jpg" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to P2pro Technology Solution Pvt Ltd. Hyderabad, Telangana </h1>
<h1 align="center"> P2pro Technology Solution Pvt Ltd-"triggering the pipeline  on 3oth Aug" Very Good Training center for DevOps with AWS, Digital Marketing & Cyber Security's as well in Madhapur and we also providr Job Assitance Job Support....Teaching Real Time scnerios in all the technologies</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<%
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName());
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/P2pro-logo.jpg" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		P2pro Technology Solution Pvt Ltd,
		Doctors Pride Apartment, Ground floor, Shriram colony, Madhapur,
		Hyderabad, Telangana 500081,
		+91-9491442131
		+91-9935398899
		p2protech@gmail.com
		<br>
		<a href="p2protech@gmail.com">Mail to P2pro Technology Solution Pvt Ltd</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>P2pro Technology Solution Pvt Ltd - Consultant, Training, Development Center.</p>
<p align=center><small>Copyrights 2021 by <a href="http://p2protech.com/">P2pro Technology Solution Pvt Ltd</a> </small></p>

</body>
</html>
