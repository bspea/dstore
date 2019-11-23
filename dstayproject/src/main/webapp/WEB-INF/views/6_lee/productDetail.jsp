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

    <title>Back to Kimi</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/6_lee/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/6_lee/kimi.css" rel="stylesheet">
    <link href="resources/css/6_lee/font-awesome.min.css" rel="stylesheet">

</head>

<body>

<jsp:include page="../1_common/menubar.jsp"/> 


<div class="container kimi-container">
    <ol class="breadcrumb hidden-xs">
        <li style="color:#8b0000">Home</li>
        <li style="color:#8b0000">${pd.pcname }</li>
        <li style="color:#8b0000">${pd.pname}</li>
    </ol>
</div>


<div class="container" style="background: white; padding-bottom: 50px;">
    <div class="col-md-6">
        <!--carousel-->
        <div id="main_area">
            <!-- Slider -->
            <div class="row" style="margin-top: 25px;">

                <div class="col-sm-9 less-padding">
                    <div class="col-xs-12 less-padding" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="col-sm-12" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        <div class="active item" data-slide-number="0">
                                            <img src="resources/images/6_lee/sosisSolo_carousel.jpg">
                                        </div>

                                        <div class="item" data-slide-number="1">
                                            <img src="resources/images/6_lee/sosisSolo_carousel_2.jpg">
                                        </div>

                                    </div>
                                    <!-- Carousel nav -->
                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/Slider-->

                <div class="col-sm-3" id="slider-thumbs">
                    <a class="thumbnail" id="carousel-selector-0">
                        <img src="resources/images/6_lee/sosisSolo_carousel.jpg">
                    </a>

                    <a class="thumbnail" id="carousel-selector-1">
                        <img src="resources/images/6_lee/sosisSolo_carousel_2.jpg">
                    </a>

                </div>
            </div>

        </div>
        <!--carousel ends-->
    </div>

    <div class="col-md-6" style="position: relative;">
        <div class="bookmarked"><img src="resources/images/6_lee/bookmarked.png" width="86"> </div>
        <h1>${pd.pname}</h1>

        


        <p class="product-description">${pd.pcontents}</p>
        <p class="product-description">조리법(전자레인지 몇분 등등), 보관법(냉장,실온)</p>
		<p class="product-description">성분표(함량말고 성분들만 대략적으로)</p>
        <div class="product-detail-tag-container">
            <h1>평점(5점 만점) </h1>
        </div>

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-6">
                <h3>￦ ${pd.price}</h3>
            </div>
            <div class="col-md-6" style="padding-top: 18px;">
                <p class="pull-left" style="line-height: 35px; margin-right: 20px;">Quantity</p>
                <form class="form-inline product-detail-form">
                    <div class="form-group pull-left"><button class="btn btn-default">-</button></div>
                    <div class="form-group pull-left">
                        <input type="number" class="form-control number-input" id="" placeholder="10" style="width: 60px; border: none; font-weight: bold; font-size: 20px;">
                    </div>
                    <div class="form-group"><button class="btn btn-default">+</button></div>
                </form>
            </div>
        </div>

        <div class="product-detail-action-button-container">
            <button onclick="location.href='shoppingCart.do'" class="btn button-add-to-bag" style="margin-right: 10px;">장바구니</button>
            <button class="btn btn-default button-black button-learn-more" id="bookmarkButton">찜하기</button>
            <button class="btn btn-default button-black button-learn-more" id="deleteBookmarkButton" style="display: none;">장바구니 해제</button>
        </div>


    </div>
</div><!-- /.container -->

<div class="container" style="background: white; padding-bottom: 50px;">
    <h2 class="text-center">${pd.pname}</h2>
    <hr class="hr-short">

    <div class="col-md-8 col-md-offset-2">
        <p class="helvetica-18 text-center">간단히 적을 곳(품절이나/제고입예정 등등/주의/안내문구)</p>
        <img src="resources/images/6_lee/sosisSolo_landscape.jpg" width="100%" class="maya-small-padding" style="margin: 30px 0;">

        <p class="helvetica-18 text-center">원산지/성분함량/제조사 등등(위의 img태그에 이미지로 ))</p>
    </div>
</div>


<div class="container" style="background: white; padding-bottom: 50px;">
    <h2 class="text-center">비슷한 상품 or 이 상품을 구매한 유저가 다음으로 고른상품 등등 나중에 생각해보자</h2>
    <hr class="hr-short">

    <div class="row">
        <div class="col-sm-6 col-md-4">
            <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">
                <img src="resources/images/6_lee/nasi_bakar_ayam_woku_2.jpg" alt="sosis solo">
            </a>
            <div class="caption box">
                <h3>Nasi Bakar Ayam Woku</h3>
                <div class="row">
                    <div class="col-sm-8 col-xs-6">
                        <p class="default-userProductList-CardList-price">Rp 23.000 / pcs</p>
                        <span class="min-order">5 pcs min order</span>
                    </div>

                    <div class="col-sm-4 col-xs-6">
                        <button onclick="location.href='shoppingCart.do'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4" data-behavior="sample_code">
            <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">
                <!--<img src="https://res.cloudinary.com/kimithemes/image/upload/c_thumb,g_center,h_600,q_auto:best,w_600/v1506066842/risotto_ri5sle.jpg" alt="risotto lemon">-->
                <img src="resources/images/6_lee/risotto_square.jpg" alt="risotto lemon">
            </a>
            <div class="caption box">
                <h3>Lemon Risotto</h3>
                <div class="row">
                    <div class="col-sm-8 col-xs-6">
                        <p class="default-userProductList-CardList-price">Rp 45.000 / pcs</p>
                        <span class="min-order">10 pcs min order</span>
                    </div>

                    <div class="col-sm-4 col-xs-6">
                        <button onclick="location.href='shoppingCart.do'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-6 col-md-4">
            <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">
                <!--<img src="http://res.cloudinary.com/kimithemes/image/upload/c_thumb,h_480,w_480/v1506069881/IMG_20161004_075006_v8yiq2.jpg" alt="sosis solo">-->
                <img src="resources/images/6_lee/sosisSolo.jpg" alt="sosis solo">
            </a>
            <div class="caption box">
                <h3>Sosis Solo Sucicakes</h3>
                <div class="row">
                    <div class="col-sm-8 col-xs-6">
                        <p class="default-userProductList-CardList-price">Rp 4.500 / pcs</p>
                        <span class="min-order">10 pcs min order</span>
                    </div>

                    <div class="col-sm-4 col-xs-6">
                        <button onclick="location.href='shoppingCart.do'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>

				<!-- 후기 / 문의   버튼-->
<div class="container" style=" background:white; padding-bottom: 50px; ">
 <a id="inquiry" class="btn pull-right button-green-top-nav" style="width:50%;">문의(문의 갯수)</a>
 <span><a id="review" class="btn pull-right button-green-top-nav" style="width:50%;">후기(후기 갯수)</a></span>
</div>
					
				<!-- 후기 -->
<div class="container" id="reviewForm" style=" background:white; padding-bottom: 50px; display:'';">
	<h4><strong>후기는 구매 후 마이페이지에서 이용 가능합니다.</strong></h4>	
	<br><br>
		<div id="reviewFormReply" >
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
		<P> 아무개 : 안녕하세요  [2019-11-11]</P><hr>
				
		</div>
		<!-- 페이징바 -->
		 <div class="col-md-12 hidden-xs text-center">
                <!--pagination-->
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="current"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                    </ul>
                </nav>
                <!--pagination ends-->
            </div>

	</div>


					<!-- 문의 -->
		<div class="container" id="inquiryForm" style=" background:white; padding-bottom: 50px; display:none;">
		<form action="search.html">
        	 <div class="form-group">
                 <input type="text" class="form-control" id="" placeholder="제목(100자 이하)" maxlength="100" required>
             </div>
        	 
        	 <span> <textarea id="inquiryTextarea" cols="160" rows="10" class="form-control" maxlength="3000" style="resize:none" placeholder="무분별한 비방/욕설은 관리자 차원에서 삭제 합니다." required></textarea></span>
      
      	<div>
        	 <p id="limit" style="display:'inline-block'"><span id="content1">0</span>/3000
                 <input type="submit" class="btn default-userProductList-CardList-button pull-right" value="등록">
        	 </p>
        	 <br><br>
    	    
	         
      	</div>
        </form>
        
        		<!-- 후기 -->
			<div id="inquiryFormReply">
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
			
		</div>
		
		
		<!-- 페이징 바  -->
		 <div class="col-md-12 hidden-xs text-center">
                <!--pagination-->
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="current"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                    </ul>
                </nav>
                <!--pagination ends-->
           </div>
		
		
		
		
</div>
			
	
		
		

<!--include footer-->
<jsp:include page="footer.jsp"/>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/6_lee/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/6_lee/bootstrap.min.js"></script>

<script>
      
        	/* 문의 글자 제한  */
        $(function(){
            // textarea에 keyup이벤트가 발생했을 경우 
            $("#inquiryTextarea").on("keydown",function(){
                // 현재 요소(textarea)의 값의 길이를 알아내기
               var inputLength = $(this).val().length;
                
                $("#content1").text(inputLength);
                if(inputLength >= 3000){
                    alert("글자수가 초과되었습니다");
                    $("#counter").css("color","red");
                }else{
                    $("#counter").css("color","black");
                }
            });
        });
       
        	
        /* 클릭 시 분리  */
        $(function(){
        	$("#inquiry").on('click', function(){
        		$("#inquiryForm").css("display","");
        		$("#reviewForm").css("display","none");
        	});
        
        	$("#review").on('click', function(){
        		$("#inquiryForm").css("display","none");
        		$("#reviewForm").css("display","");
        	});
        
        
        
        
        
        });
        
        
        
    </script>


<script>
    jQuery(document).ready(function($) {

        // bookmark
        $('.bookmarked').hide();


        $('#bookmarkButton').on('click', function () {
            $('.bookmarked').fadeIn(200);
            $('#bookmarkButton').hide();
            $('#deleteBookmarkButton').show();
        });



        // Delete bookmark

        $('#deleteBookmarkButton').on('click', function () {
            $('.bookmarked').fadeOut(200);
            $('#bookmarkButton').show();
            $('#deleteBookmarkButton').hide();
        });


        $('#myCarousel').carousel({
            interval: 5000
        });

        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click(function () {
            var id_selector = $(this).attr("id");
            try {
                var id = /-(\d+)$/.exec(id_selector)[1];
                console.log(id_selector, id);
                jQuery('#myCarousel').carousel(parseInt(id));
            } catch (e) {
                console.log('Regex failed!', e);
            }
        });
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
            var id = $('.item.active').data('slide-number');
            $('#carousel-text').html($('#slide-content-'+id).html());
        });
    });
</script>

<!--kimi basic js-->
<script src="resources/js/6_lee/kimi.js"></script>

</body>
</html>
