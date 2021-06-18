<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
	
<style type="text/css">
.amzn-ad-container {
    width: 240px !important;
    height: 480px !important;
   
}
</style>

<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
</head>

<body>

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>

<!-- Content -->


	<div id="mydiv1" class="row" style="margin: 4% 0% 0% 30%;width: 40%;height: 40%;border: 2px solid DarkGreen;padding: 20px 20px 20px 41px;">

	
	
	       <h2> Register your details:</h2>
		   
		  	<form:form action="${pageContext.servletContext.contextPath}/customer/registration" method="post" modelAttribute="userZ">

		   Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input type="email" path="email" size="35" required="required"/>
		   <br><br>
		   First Name:&nbsp;&nbsp;&nbsp;&nbsp; <form:input type="text" path="fname" minLength="2" maxLength="25" size="35%" required="required"/>
		   <br><br>
		   Last Name:&nbsp;&nbsp;&nbsp;&nbsp; <form:input type="text" path="lname" minLength="2" maxLength="35" size="35" required="required"/>
		   <br><br>
		   Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input type="password" path="userpwd" minLength="8" maxLength="10" size="35" required="required"/>
		   <br><br>
		   <button id = "SUbmitSignup" value = "Signup" style = "background-color : lawnGreen ; margin-left: 22% ; width : 90px; height : 30px" > SignUp</button>
<%-- 		   <form:button type="submit" id="submitSignup" value="Signup"  style="margin-left: 22%;width: 90px;background-color: lawngreen;height: 30px;" /> GoGreen --%>
		   <br><br><br>
		   </form:form>
	</div>
	
	
	


</body>
</html>