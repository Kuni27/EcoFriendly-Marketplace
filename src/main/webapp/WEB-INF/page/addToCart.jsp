<%@ page import="com.controller.CartController" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">

<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>



</head>

<body>

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>
<div>
	add to cart page
</div>


<%---
String product_Id =request.getParameter("GreenId");
String AmazonIFrame= request.getParameter("AmazonIFrame");
int quatity = 1;
int productPrice = 0;
int product_Total = 0;
int cart_Total= 0;
int updateQuery = 0;
int quantity = 0;
PreparedStatement pstatement;
int z= 0;

try{
	Connection con = CartController.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("Select *  from Product where Greenid ='"+ product_Id + "'");
	ResultSet rs1 = st.executeQuery("Select * from Cart where Productid ='"+ product_Id +"'");
	while(rs1.next()){
		quantity = rs1.getInt("Quantity");
		quantity = quantity+1;
		z=1;

		
	}
	if(z==1 ){
		st.executeUpdate("update cart set quantity= '"+  quantity+"'");
		response.sendRedirect("home.jsp");
	}
	
	if(z == 0){
		String queryString = "insert into Cart(CartId, ProductId,AmazonIFrame) values (?,?,?)";
		pstatement = con.prepareStatement(queryString);
		pstatement.setString(1, rs.getString("OrderId") );
		pstatement.setString(2, rs.getString("GreenId"));
		pstatement.setString(3, rs.getString("AmazonIFrame"));
		
		updateQuery = pstatement.executeUpdate();
		if(updateQuery!=0){
			System.out.println("Added to cart");
		}
		response.sendRedirect("home.jsp");
	}
}
catch(Exception e){
	System.out.println(e);
	
}
--%>

</html>