<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>


<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/aboutus.css"/>">
<link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
</head>

<body>

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>

<!-- Content -->
	<div id="mydiv1" class="row" style="margin-top:4px; margin-right:0px; margin-left:0px;margin-bottom:19px ">
		<div class="col-sm-4" style="margin-top:0px">
			<div class="container-fluid bg-1 text-center">
				<h3>Who Am I?</h3>
				<img src="<c:url value="/resource/images/aboutImage.jpg"/>" class="img-circle" alt="AboutUs" width="350"
					height="350">
				<h3>Cool Earth- an Eco Friendly Marketplace</h3>
			</div>

		</div>

		<div class="container-fluid bg-2 text-center">
			<h3>What Am I?</h3>
			<div id="para"><p>Cool Earth's vision is to promote using eco friendly products.
				
			</p>
			</div>
			<div id="para"><p>We bring in variety of eco-friendly products from all the places and provide you a
					one stop shop experience. </p>
		</div></div>
	</div>
	
	
	<!-- <div> 
    	<object type="text/html" data="http://validator.w3.org/" width="800px" height="600px" style="overflow:auto;border:5px ridge blue">
   		 </object>
    
 	</div> -->
	
	
<!-- 	importing footer  -->
<%-- <%@ include file="footer.jsp"%>  --%>

</body>
</html>