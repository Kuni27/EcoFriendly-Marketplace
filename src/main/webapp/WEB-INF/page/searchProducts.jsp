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

<!-- <script src="js/jquery-1.8.2.min.js"></script> -->

<script>

function addToCart(id){
	//alert("inside addToCart method");
	var eleVal = document.getElementById(id).innerHTML;
	//alert("eleVal: "+eleVal);
	document.getElementById("addProductId").value= eleVal;
	var addForm = document.getElementById("addToCartForm");
	//alert("addForm: "+addForm);
	var reqParams ="?name="+document.getElementById("name").value.trim();
	reqParams +="&email="+document.getElementById("email").value.trim();
	reqParams +="&uname="+document.getElementById("uname").value.trim();
	//alert("reqParams:" +reqParams);
	addForm.action = addForm.action + reqParams;
	//alert("add form action:" +(addForm.action));
	addForm.submit();
	
	
}
</script>
</head>

<body>

<!-- importing navigation bar -->
<%@ include file="navbar.jsp"%>

<!-- Content -->
	
	<%
	    if (request.getParameter("name") == null) {
	        //out.println("Please enter your name.");
	    } else {
	       //out.println("Hello <b>"+request. getParameter("name")+"</b>!");
	        String ecoText = "eco friendly "+ request. getParameter("name") ;
	       //out.println("Hello <b>"+ecoText+"</b>!");
	      // out.println("      ");
	        if(ecoText.contains("pen")){
	        %>
	        <br/>
	          <div>
				<div style="width:70%;clear:both;padding-bottom:9%;height:270px;">
					<div id="1frame" style="width:20%;float:left;margin-left:30%;">
						<iframe  style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&language=en_IN&marketplace=amazon&region=IN&placement=B095XCV5Y2&asins=B095XCV5Y2&linkId=526ebae4dcbaf7917439b98edacff1a4&show_border=true&link_opens_in_new_window=true"></iframe>
				    </div>
				    <div style="width:20%;float:left;margin-top:6%">
						 <input  type="button" value="Add To Cart"  onclick="javascript:addToCart('1frame');"/>
				    </div>
				</div>
	
				<div style="width:70%;clear:both;padding-bottom:9%;height:270px;">
				    <div id="2frame" style="width:20%;float:left;margin-left:30%;">
					 <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08BJB46BJ&asins=B08BJB46BJ&linkId=23a1b9187a581a009393f9fa05ce3ee6&show_border=true&link_opens_in_new_window=true"></iframe>
					  </div>
				    <div style="width:20%;float:left;margin-top:6%">
						 <input type="button" value="Add To Cart" onclick="javascript:addToCart('2frame');"/>
				    </div>
		        </div>
		       
				<div style="width:70%;clear:both;padding-bottom:9%;height:270px;">
				    <div id="3frame" style="width:20%;float:left;margin-left:30%;">
					<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08NPJZKJT&asins=B08NPJZKJT&linkId=36657f1144d64bdaa0ca195e8c95bd04&show_border=true&link_opens_in_new_window=true"></iframe>
					 </div>
				    <div style="width:20%;float:left;margin-top:6%">
						 <input type="button" value="Add To Cart" onclick="javascript:addToCart('3frame');"/>
				    </div>
		        </div>
			</div>
			

			<!-- <br/>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <iframe id="iframe1" style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&language=en_IN&marketplace=amazon&region=IN&placement=B095XCV5Y2&asins=B095XCV5Y2&linkId=526ebae4dcbaf7917439b98edacff1a4&show_border=true&link_opens_in_new_window=true"></iframe>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08BJB46BJ&asins=B08BJB46BJ&linkId=23a1b9187a581a009393f9fa05ce3ee6&show_border=true&link_opens_in_new_window=true"></iframe>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08NPJZKJT&asins=B08NPJZKJT&linkId=36657f1144d64bdaa0ca195e8c95bd04&show_border=true&link_opens_in_new_window=true"></iframe>
	    
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <iframe  style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&language=en_IN&marketplace=amazon&region=IN&placement=B095XCV5Y2&asins=B095XCV5Y2&linkId=526ebae4dcbaf7917439b98edacff1a4&show_border=true&link_opens_in_new_window=true"></iframe>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08BJB46BJ&asins=B08BJB46BJ&linkId=23a1b9187a581a009393f9fa05ce3ee6&show_border=true&link_opens_in_new_window=true"></iframe>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08NPJZKJT&asins=B08NPJZKJT&linkId=36657f1144d64bdaa0ca195e8c95bd04&show_border=true&link_opens_in_new_window=true"></iframe>
	        
	        <br/>
	         <br/>
	          <br/>
	         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <iframe  style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&language=en_IN&marketplace=amazon&region=IN&placement=B095XCV5Y2&asins=B095XCV5Y2&linkId=526ebae4dcbaf7917439b98edacff1a4&show_border=true&link_opens_in_new_window=true"></iframe>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08BJB46BJ&asins=B08BJB46BJ&linkId=23a1b9187a581a009393f9fa05ce3ee6&show_border=true&link_opens_in_new_window=true"></iframe>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08NPJZKJT&asins=B08NPJZKJT&linkId=36657f1144d64bdaa0ca195e8c95bd04&show_border=true&link_opens_in_new_window=true"></iframe>
	         
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <iframe  style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&language=en_IN&marketplace=amazon&region=IN&placement=B095XCV5Y2&asins=B095XCV5Y2&linkId=526ebae4dcbaf7917439b98edacff1a4&show_border=true&link_opens_in_new_window=true"></iframe>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08BJB46BJ&asins=B08BJB46BJ&linkId=23a1b9187a581a009393f9fa05ce3ee6&show_border=true&link_opens_in_new_window=true"></iframe>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08NPJZKJT&asins=B08NPJZKJT&linkId=36657f1144d64bdaa0ca195e8c95bd04&show_border=true&link_opens_in_new_window=true"></iframe>
	         -->
	        <%
	        }else if(ecoText.contains("cloth")){
	       		%>
	       		<br/>
	       		 <div>
				<div style="width:70%;clear:both;padding-bottom:9%;height:270px;">
					<div id="1frame" style="width:20%;float:left;margin-left:30%;">
						<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08MD3QK1L&asins=B08MD3QK1L&linkId=0324abb3b3b31937b17d6acb8d4b9a9d&show_border=true&link_opens_in_new_window=true"></iframe>
				    </div>
				    <div style="width:20%;float:left;margin-top:6%">
						 <input  type="button" value="Add To Cart"  onclick="javascript:addToCart('1frame');"/>
				    </div>
				</div>
	
				<div style="width:70%;clear:both;padding-bottom:9%;height:270px;">
				    <div id="2frame" style="width:20%;float:left;margin-left:30%;">
					<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B089NC85G8&asins=B089NC85G8&linkId=63dace5bbd522f9109448f3311808183&show_border=true&link_opens_in_new_window=true"></iframe>
					  </div>
				    <div style="width:20%;float:left;margin-top:6%">
						 <input type="button" value="Add To Cart" onclick="javascript:addToCart('2frame');"/>
				    </div>
		        </div>
		       
				<div style="width:70%;clear:both;padding-bottom:9%;height:270px;">
				    <div id="3frame" style="width:20%;float:left;margin-left:30%;">
					<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08HV67QP6&asins=B08HV67QP6&linkId=649c2c092f5dc4ae2d9e6ca487af40c0&show_border=true&link_opens_in_new_window=true"></iframe>
					 </div>
				    <div style="width:20%;float:left;margin-top:6%">
						 <input type="button" value="Add To Cart" onclick="javascript:addToCart('3frame');"/>
				    </div>
		        </div>
			</div>
			
	       		
	       		
	       		<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08MD3QK1L&asins=B08MD3QK1L&linkId=0324abb3b3b31937b17d6acb8d4b9a9d&show_border=true&link_opens_in_new_window=true"></iframe>
	       		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B089NC85G8&asins=B089NC85G8&linkId=63dace5bbd522f9109448f3311808183&show_border=true&link_opens_in_new_window=true"></iframe>
	       		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08HV67QP6&asins=B08HV67QP6&linkId=649c2c092f5dc4ae2d9e6ca487af40c0&show_border=true&link_opens_in_new_window=true"></iframe>
	 	         --><%
	        }else if(ecoText.contains("cosmetic")){%>
	        <iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=qf_sp_asin_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&amp;region=IN&placement=B08CFPX3SF&asins=B08CFPX3SF&linkId=6892040eede2d1b90b48f81098705026&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"></iframe>
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=qf_sp_asin_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&amp;region=IN&placement=B0955G8F3Y&asins=B0955G8F3Y&linkId=7a9bbc909e20853e24b449ab9cb573d7&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"></iframe>
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=qf_sp_asin_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&amp;region=IN&placement=B081NJJDXW&asins=B081NJJDXW&linkId=7e7eaeb5c75f36a14a6cc806facb9559&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"></iframe>
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=qf_sp_asin_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&amp;region=IN&placement=B00791FFD0&asins=B00791FFD0&linkId=1f31793dd616a7a554ca922a3bf424e6&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"></iframe>
       		<%
	        }else {%>
	        
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08MD3QK1L&asins=B08MD3QK1L&linkId=0324abb3b3b31937b17d6acb8d4b9a9d&show_border=true&link_opens_in_new_window=true"></iframe>
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B089NC85G8&asins=B089NC85G8&linkId=63dace5bbd522f9109448f3311808183&show_border=true&link_opens_in_new_window=true"></iframe>
       		<iframe style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" frameborder="0" src="//ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ss&ref=as_ss_li_til&ad_type=product_link&tracking_id=hmoorthy-21&marketplace=amazon&region=IN&placement=B08HV67QP6&asins=B08HV67QP6&linkId=649c2c092f5dc4ae2d9e6ca487af40c0&show_border=true&link_opens_in_new_window=true"></iframe>
 	        <%
	        }
	    }
	%>
	
	
	<div id="mydiv1" class="row" style="margin-top:4px; margin-right:0px; margin-left:0px;margin-bottom:19px ">
	
		<form id="addToCartForm" action="${pageContext.servletContext.contextPath}/addToCart" method="POST">
			<input type="hidden" name="addProductName" id="addProductId" value=""/>
		</form>
	</div>
	
	
</body>

</html>