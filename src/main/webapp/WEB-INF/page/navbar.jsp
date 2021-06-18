<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" /> --%>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/overall.css"/>">

<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: green;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  
  
}
.button1 {
   background-color: green;
   color: black;
   border: 2px solid #4CAF50; /* Green */
}


.search {
   background-color: white;
   color: black;
   border: 2px solid #4CAF50; /* Green */
   width: "100px";
}

* {
  box-sizing: border-box;
}

/* Style the search field */
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

/* Style the submit button */
form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none; /* Prevent double borders */
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

/* Clear floats */
form.example::after {
  content: "";
  clear: both;
  display: table;
}

.sb-example-1 .search {
  width: 100%;
  position: relative;
  display: flex;
}
.sb-example-1 .searchTerm {
  width: 100%;
  border: 3px solid #00B4CC;
  border-right: none;
  padding: 5px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}
.sb-example-1 .searchTerm:focus{
  color: #00B4CC;
}
.sb-example-1 .searchButton {
  width: 40px;
  height: 50px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}
.sb-example-1 .searchButton i{
  color: #0052cc;
}
</style>
<script >
function getParams(element){
	
	var reqParams = element.href;
	reqParams +="?name="+document.getElementById("name").value.trim();
	reqParams +="&email="+document.getElementById("email").value.trim();
	reqParams +="&uname="+document.getElementById("uname").value.trim();
	alert(reqParams);
	window.location.assign(reqParams);
	
}
</script>

</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">

		<div class="nav navbar">
			<img class="navbar-brand"
				src="<c:url value="/resource/images/eco_cart_logo.jpg"/>"
				href="<c:url value="/index"/>" 
				alt="logo-image"></img>
				<!-- <h1><b>Eco-Kart</b></h1> -->
		</div>

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value="/home" />">Eco-Kart </a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
		
			<ul class="nav navbar-nav navbar-right">
			
				  <c:if test="${uname==null or empty uname}">
						<li><a class="button button1" href="<c:url value="/customer/signup" />"><span
								class="glyphicon glyphicon-log-user"></span> SignUp</a></li>
						<li><a class="button button1" href="<c:url value="/login" />"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
						
				  </c:if>
				  
				  
				  <c:if test="${!empty uname}">
					
					
						<li><a href="<c:url value="/index1" />"><span
								class="glyphicon glyphicon-shopping-user"></span>Welcome, ${uname} </a></li>
						
						<li><a href="<c:url value="/myCart" />"><span
								class="glyphicon glyphicon-shopping-cart"></span>My Cart</a></li>
								
						<li><a class="button button1" href="<c:url value="/logout" />"><span
								class="glyphicon glyphicon-log-in"></span> Logout</a></li>
					</c:if>

			</ul>
			
			
			<%-- <ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li><a class="button button1" href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-shopping-cart"></span>My Cart</a></li>
					<li><a href="<c:url value="/customer/registration" />"><span
							class="glyphicon glyphicon-log-user"></span> SignUp</a></li>
					<li><a href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
			</ul> --%>
		
			
			<ul class="nav navbar-nav">
				<li><a class="button button1" href=" <c:url value="/home" />">Home</a></li>
				<li><a class="button button1" href=" <c:url value="/aboutus" />">About Us</a></li>
				<li><a class="button button1" href=" <c:url value="/contactus" />">Contact Us</a></li>
				<li><a class="button button1" href=" <c:url value="/services" />">Services</a></li>
				<%-- <li><a class="button button1" href=" <c:url value="/searchProducts" />">Search Products</a></li>
			 --%>	<!-- <li>
					<form action= "searchProducts"  method="GET">
						<input class="button search"  type="text" name="name" placeholder="Search..">
			    		<input  type ="submit" value="search">
			    	</form>
			    	
		    	</li> -->
		    	<li><a onclick="javascript:getParams(this);return false;" href=" <c:url value="/searchProducts" />"></a></li>
		    	<li>
					<form action= "${pageContext.servletContext.contextPath}/searchProducts"  method="GET" >
						<input class="button search"  type="text" id="name" name="name" >
			    		<!-- <input type ="submit" value="search"> -->
						<c:if test="${uname==null or empty uname}">
							<input type="hidden" id="uname" name="uname" value=""/>
						</c:if>
						<c:if test="${!empty uname}">
							<input type="hidden" id="uname" name="uname" value="${uname}"/>
						</c:if>
						
						<c:if test="${email==null or empty email}">
							<input type="hidden" id="email" name="email" value=""/>
						</c:if>
						<c:if test="${!empty email}">
							<input type="hidden" id="email"  name="email" value="${email}"/>
						</c:if>
						
						
						
			    	</form>
		    	</li>
		    	
		    	
		    	
			</ul>
			
			
		
			
			
<%-- 
			<ul class="nav navbar-nav navbar-right">

				
				<c:if test="${!empty pageContext.request.userPrincipal.name}">
					<li><a href="<c:url value="/home" />"><span
							class="glyphicon glyphicon-shopping-user"></span>Welcome..${pageContext.request.userPrincipal.name}</a></li>
					
					<li><a href="<c:url value="/cart/getCartById" />"><span
								class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</c:if>
			</ul> --%>


			
		</div>
	</div>
	</nav>



</body>
</html>