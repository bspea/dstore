<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
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


    <!-- open graph metadata facebook, slack, whatsapp line -->
    <meta property="fb:app_id" content="150112802189143"/>
    <meta property="og:locale" content="en_US" />
    <meta property="og:title" content="Back to Kimi" />
    <meta property='og:site_name' content='Kimi | Curated Foods and Beverages' />
    <meta property="og:url" content="http://kimistatic.s3-website-ap-southeast-1.amazonaws.com/" />
    <meta property="og:description" content="Kimi is a curated foods and beverages artisans." />
    <meta property='og:image' content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png" />


    <!-- open graph metadata twitter -->
    <meta name="twitter:title" content="Back to Kimi">
    <meta name="twitter:url" content="http://www.backtokimi.com">
    <meta name="twitter:description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="twitter:image" content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
    <meta name="twitter:site" content="@backtokimi">


    <link rel="icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/favicon.ico">
    <link rel="apple-touch-icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">

    <title>Articles</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/6_lee/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/6_lee/kimi.css" rel="stylesheet">
    <link href="resources/css/6_lee/font-awesome.min.css" rel="stylesheet">

    <!-- owl carousel -->
    <link rel="stylesheet" href="resources/css/6_lee/owl_carousel/owl.carousel.css">
    <link rel="stylesheet" href="resources/css/6_lee/owl_carousel/owl.theme.default.css">

</head>

<body>
	<jsp:include page="../1_common/menubar.jsp"/>
<br><br><br><br><br>
	<jsp:include page="./productCategoryForm.jsp"/>




<div class="container">
    <div class="maya-tiny-padding"></div>
    <div>
        <!--breadcrumb start-->
        <!--<ol class="breadcrumb hidden-xs">-->
            <!--<li><a href="index.html">Home</a></li>-->
            <!--<li>Articles</li>-->
        <!--</ol>-->

        <div class="row">
            <div class="col-md-12">
                <p class="text-roboto-light">30 Products in Category <strong>Healthy</strong></p>
            </div>
		  
		  <c:forEach items="${pd}" var="pd">
            <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                <a href="productDetail.do?pdno=${pd.pno}" class="thumbnail_item thumbnail less-padding less-margin">
                    <img src="${pd.pipath}" alt="risotto lemon">
                </a>
                <div class="caption box">
                    <h3 style="height: 52px;">${pd.pname}</h3>
                    <div class="row">
                        <div class="col-sm-8 col-xs-6">
                            <p class="default-userProductList-CardList-price">￦${pd.price}</p>
                        </div>

                        <div class="col-sm-4 col-xs-6">
                            <button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>
		  </c:forEach>
       					
       					
       					<!-- 페이징 바  -->
            <div class="col-md-12 hidden-xs text-center">
                
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="current">
                        	
                        	<c:if test="${pp.currentPage eq 1 }">
								<a href="${before}" style="font-size: 40px; background-color: rosybrown; pointer-events: none; cursor: default;">&lt</a>
							</c:if>
						
							<c:if test="${pp.currentPage ne 1 }">
								<c:url value="productCotegory.do" var="before">
									<c:param name="pcno" value="${caNo}"/>
									<c:param name="currentPage" value="${pp.currentPage-1}"/>
								</c:url>
								<a href="${before}" style="font-size: 40px">&lt</a>
							</c:if>
							
							<c:forEach begin="${pp.startPage}" end="${pp.endPage}" var="p">
								<c:if test="${p eq pp.currentPage}">
									<a style="background-color:coral">${p}</a>
								</c:if>
			
								<c:if test="${p ne pp.currentPage}">
									<c:url value="productCotegory.do" var="page">
										<c:param name="pcno" value="${caNo }"/>
										<c:param name="currentPage" value="${p}"/>
									</c:url>
									<a href="${page}">${p}</a>
								</c:if> 
			
							</c:forEach>
			
							<c:if test="${pp.currentPage eq pp.maxPage}">
								<a href="${after}" style="font-size: 40px; background-color: rosybrown; pointer-events: none; cursor: default;">&gt</a>
							</c:if>
			
							<c:if test="${pp.currentPage ne pp.maxPage }">
								<c:url value="productCotegory.do" var="after">
									<c:param name="pcno" value="${caNo }"/>
									<c:param name="currentPage" value="${pp.currentPage+1 }"/>
								</c:url>
								<a href="${after}" style="font-size: 40px">&gt</a>
							</c:if>
                        </li>
                        
                    </ul>
                </nav>

                <!--pagination ends-->
            </div>
        </div>
    </div>
  </div>
</div><!-- /.container -->

<!--include footer-->
<jsp:include page="footer.jsp"/>


<script src="resources/js/6_lee/jquery.min.js"></script>

<!-- owl carousel -->
<script src="resources/js/6_lee/owl_carousel/owl.carousel.js"></script>

<!--boostrap js-->
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/6_lee/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/js/6_lee/kimi.js"></script>

<script>
    $('.small-slider').owlCarousel({
        loop:true,
        margin:10,
        nav:false,
        dots: false,
        responsive:{
            0:{
                items:3.5
            },
            600:{
                items:6
            },
            1000:{
                items:8
            }
        }
    })
</script>

</body>
</html>