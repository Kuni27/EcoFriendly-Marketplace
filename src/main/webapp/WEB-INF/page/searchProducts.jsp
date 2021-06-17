<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- <script src="js/jquery-1.8.2.min.js"></script> -->

<!-- <script>
    $(document).ready(function(){
        $('#mydiv1').load('https://amzn.to/3wxEW7Y');
    });
</script> -->


<script>
    $(document).ready(function(){
        $('iframe').each(function(){
        	$('amzn-ad-container').style.width= "240px";
        });
    });
</script>

<!-- <script>
	window.onload = function searchFunction(){//begin function
	//get the search value
	//var searchBtn = document.getElementById("search");
	 console.log('The Script will load now.');
	 alert("inside searchFunction");
	var searchStr = "eco friendly "+document.getElementById("name").value;
	
	 //get the html of the iframe(must be in the same domain)
	//var iframe = document.getElementById("iframe2").contentDocument.body;

	 /*create a new RegExp object using search variable as a parameter,
	 the g option is passed in so it will find more than one occurence of the
	 search parameter*/                                               
	//var result = new RegExp(searchStr, 'g');

	 //set the html of the iframe making the found items bold
	//iframe.innerHTML = iframe.innerHTML.replace(result,"<b>" + searchStr + "</b>" );  
	 

	};//end function

</script> -->

</head>

<body onload="fixIframeSize()">

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>

<!-- Content -->

	<%
	    if (request.getParameter("name") == null) {
	        out.println("Please enter your name.");
	    } else {
	        out.println("Hello <b>"+request. getParameter("name")+"</b>!");
	        String ecoText = "eco friendly "+ request. getParameter("name") ;
	        out.println("Hello <b>"+ecoText+"</b>!");
	        if(ecoText.contains("pen")){
	        %>
	        <iframe  style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&language=en_IN&marketplace=amazon&region=IN&placement=B095XCV5Y2&asins=B095XCV5Y2&linkId=526ebae4dcbaf7917439b98edacff1a4&show_border=true&link_opens_in_new_window=true"></iframe>
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08BJB46BJ&asins=B08BJB46BJ&linkId=23a1b9187a581a009393f9fa05ce3ee6&show_border=true&link_opens_in_new_window=true"></iframe>
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08NPJZKJT&asins=B08NPJZKJT&linkId=36657f1144d64bdaa0ca195e8c95bd04&show_border=true&link_opens_in_new_window=true"></iframe>
	        <%
	        }else if(ecoText.contains("cloth")){
	       		%>
	       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08MD3QK1L&asins=B08MD3QK1L&linkId=0324abb3b3b31937b17d6acb8d4b9a9d&show_border=true&link_opens_in_new_window=true"></iframe>
	       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B089NC85G8&asins=B089NC85G8&linkId=63dace5bbd522f9109448f3311808183&show_border=true&link_opens_in_new_window=true"></iframe>
	       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08HV67QP6&asins=B08HV67QP6&linkId=649c2c092f5dc4ae2d9e6ca487af40c0&show_border=true&link_opens_in_new_window=true"></iframe>
	 	        <%
	        }else if(ecoText.contains("cosmetic")){%>
	        
       		<iframe style="width:240px;height:480px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08MD3QK1L&asins=B08MD3QK1L&linkId=0324abb3b3b31937b17d6acb8d4b9a9d&show_border=true&link_opens_in_new_window=true"></iframe>
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B089NC85G8&asins=B089NC85G8&linkId=63dace5bbd522f9109448f3311808183&show_border=true&link_opens_in_new_window=true"></iframe>
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08HV67QP6&asins=B08HV67QP6&linkId=649c2c092f5dc4ae2d9e6ca487af40c0&show_border=true&link_opens_in_new_window=true"></iframe>
 	        <%
	        }
	    }
	%>
	
	<div id="mydiv1" class="row" style="margin-top:4px; margin-right:0px; margin-left:0px;margin-bottom:19px ">
		
	</div>
	<!-- <iframe src="http://www.amazon.com/search?q=crafts" marginwidth="0" marginheight="0" scrolling="no" frameborder="0"></iframe>
	 -->
	
	
	<!-- <div> 
    	<object type="text/html" data="http://validator.w3.org/" width="800px" height="600px" style="overflow:auto;border:5px ridge blue">
   		 </object>
    
 	</div> -->
	
	


</body>

<script type="text/javascript">
window.onload = function fixIframeSize(){
	alert("start fixIframeSize");
	document.getElementsByClassName("amzn-ad-container").style.width = "240px";
    document.getElementsByClassName("amzn-ad-container").style.height = "480px";
    alert("end fixIframeSize");
}

</script>
</html>