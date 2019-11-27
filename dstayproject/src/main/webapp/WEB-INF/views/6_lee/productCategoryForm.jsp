<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="author" content="Philip Herlambang">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">


    <meta name="twitter:card" content="summary">
    <meta name="title" content="Back to Kimi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="en-id">


    open graph metadata facebook, slack, whatsapp line
    <meta property="fb:app_id" content="150112802189143"/>
    <meta property="og:locale" content="en_US" />
    <meta property="og:title" content="Back to Kimi" />
    <meta property='og:site_name' content='Kimi | Curated Foods and Beverages' />
    <meta property="og:url" content="http://kimistatic.s3-website-ap-southeast-1.amazonaws.com/" />
    <meta property="og:description" content="Kimi is a curated foods and beverages artisans." />
    <meta property='og:image' content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png" />


    open graph metadata twitter
    <meta name="twitter:title" content="Back to Kimi">
    <meta name="twitter:url" content="http://www.backtokimi.com">
    <meta name="twitter:description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="twitter:image" content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
    <meta name="twitter:site" content="@backtokimi">


    <link rel="icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/favicon.ico">
    <link rel="apple-touch-icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">

    <title>Articles</title>

    Bootstrap core CSS
    <link href="resources/css/6_lee/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/6_lee/kimi.css" rel="stylesheet">
    <link href="resources/css/6_lee/font-awesome.min.css" rel="stylesheet">

    owl carousel
    <link rel="stylesheet" href="resources/css/6_lee/owl_carousel/owl.carousel.css">
    <link rel="stylesheet" href="resources/css/6_lee/owl_carousel/owl.theme.default.css">
 -->
</head>
<body>
	<div class="container-fluid less-padding">
   	 	<h2 class="default-userProductList-InfoBar-title text-center"><i class="fa fa-heart-o" aria-hidden="true"></i> Editor's Pick</h2>
   	 	<div class="small-slider owl-carousel owl-theme">
		 		
	     	<c:forEach items="${pc}" var="pc">
	   
		         <a href="productCotegory.do?pcno=${pc.no}" class="item">
		            <div class="scrim"></div>
		            	<span class="small-text-overlay">${pc.pcSum} Products</span>
		            <p>${pc.name}</p>
		            <img src="resources/images/6_lee/${pc.origin_fileName}" width="100%">
		        </a> 
		        
	        </c:forEach>
    </div>
</div>
<br><br>







<!-- <script src="resources/js/6_lee/jquery.min.js"></script>

owl carousel
<script src="resources/js/6_lee/owl_carousel/owl.carousel.js"></script>

boostrap js
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/6_lee/bootstrap.min.js"></script>

tipuesearch
<script src="resources/js/6_lee/tipusearch/tipuesearch_content.js"></script>
<script src="resources/js/6_lee/tipusearch/tipuesearch_set.js"></script>
<script src="resources/js/6_lee/tipusearch/tipuesearch.js"></script>

<script src="resources/js/6_lee/prism/prism.js"></script>

kimi basic js
<script src="resources/js/6_lee/kimi.js"></script> -->

</body>
</html>