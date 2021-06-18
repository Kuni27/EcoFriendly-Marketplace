<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AboutUs</title>
<%-- <link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>"> --%>
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>


<%-- <link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/aboutus.css"/>"> --%>
<%-- <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" /> --%>


</head>

<body>

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>

<!-- Content -->
	<div id="mydiv1" class="row" style="margin-top:4px; margin-right:0px; margin-left:0px;margin-bottom:19px ">
		
		<div class="col-sm-4" style="margin-top:0px">
			<div class="container-fluid bg-1 text-center">
				<!-- <h3>Who Am I?</h3> -->
				<br/>
				<br/>
				
				<img src="<c:url value="/resource/images/aboutImage.jpg"/>" class="img-circle" alt="AboutUs" width="300"
					height="300">
				<h3>Eco-Kart - an Eco Friendly Marketplace</h3>
			</div>

		</div>

		<div class="container-fluid bg-2 text-center">
			<!-- <h3>What Am I?</h3> -->
			<br/>
			<br/>
			<br/>
			<br/>
			<div id="para"><p>
			Welcome to Eco-Kart
			Looking for the best-eco friendly products? "Eco-Kart" is here to put a full stop to your search as we provide you a huge range of Eco-friendly products by connecting you directly with the suppliers and with other e-commerce sites . 
							
			</p>
			</div>
			<br/>
			<div id="para"><p>
			Our Objective  is to provide you sustainable and eco-friendly solutions to your day to day needs and thereby reducing your carbon footprint .We aim to create awareness, provide innovative eco-friendly products to help you make the shift to a greener,
			more natural lifestyle with ease. 
			</p></div>
			
			<!-- <div id="para"><p>We are driven by our mission of enabling individuals, communities and businesses to help create a positive impact on the environment by catalysing them to adopt to new processes, technology and products. We work towards bringing together eco-aligned vendors, 
			manufacturers and services to the forefront thereby assisting in reducing respective carbon footprints.
			 </p>
			</div>
			
			<div id="para"><p>
			We understand your pain of searching multiple sites in getting the best product and ending up with getting none and here is the solution for this - "Eco-Kart"
			 </p>
			</div> -->
			
			<br/>
			<!-- <div id="para"><p>When you buy from us, you can rest assured that the product you buy is made with natural materials, has been responsibly made with the utmost care to ensure zero-waste material is produced.
				We have a wide range of products and services right from chemical free toys, to eco-fashion,from eco-friendly equipment to brilliantly designed cookware .
 				</p>
			</div> -->
			
			<div id="para"><p >
				We have a deep fundamental understanding of trust and mutual respect with our clients. 
				Our extreme commitment to meet our customer satisfaction is the basis of our long-term customer relationships.
				</p>
			</div>
		</div>
	</div>
	
	
	<!-- <div> 
    	<object type="text/html" data="http://validator.w3.org/" width="800px" height="600px" style="overflow:auto;border:5px ridge blue">
   		 </object>
    
 	</div> -->
	
	
<!-- 	importing footer  -->
<%-- <%@ include file="footer.jsp"%>  --%>

</body>
</html>