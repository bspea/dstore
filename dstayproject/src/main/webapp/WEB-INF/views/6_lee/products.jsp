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

    <title>Products</title>

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
	


<!-- <div class="container-fluid less-padding">
    <h2 class="default-userProductList-InfoBar-title text-center"><i class="fa fa-heart-o" aria-hidden="true"></i> Editor's Pick</h2>
    <div class="small-slider owl-carousel owl-theme">
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">5 Products</span>
            <p>한식 도시락</p>
            <img src="resources/images/6_lee/tag_nasi.jpg" width="100%">
        </a>
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">15 Products</span>
            <p>일식 도시락</p>
            <img src="resources/images/6_lee/tag_doughnut.jpg" width="100%">
        </a>
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">52 Products</span>
            <p>특식 도시락</p>
            <img src="resources/images/6_lee/tag_bread.jpg" width="100%">
        </a>
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">100 Products</span>
            <p>단백질 도시락</p>
            <img src="resources/images/6_lee/tag_cake.jpg" width="100%">
        </a>
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">10 Products</span>
            <p>샐러드</p>
            <img src="resources/images/6_lee/tag_coffee.jpg" width="100%">
        </a>
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">10 Products</span>
            <p>사이드</p>
            <img src="resources/images/6_lee/tag_fastfood.jpg" width="100%">
        </a>
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">10 Products</span>
            <p>쥬스</p>
            <img src="resources/images/6_lee/tag_juice.jpg" width="100%">
        </a>
        <a href="productsCategory.do" class="item">
            <div class="scrim"></div>
            <span class="small-text-overlay">5 Products</span>
            <p>커피</p>
            <img src="resources/images/6_lee/tag_coffee.jpg" width="100%">
        </a>
    </div>
</div>
<br><br> 
-->
 <div class="col-md-12" style="width:30%; ">
       <form action="search.html">
          <input type="text" name="q" id="tipue_search_input" class="searchbox-search-result" placeholder="search" style="margin-left: 120%; height: 61px; background:#E7E7E7; placeholder {color : #FAED7D;}">
        </form>
 </div>
		  <span>
         	  <a href="" class="btn pull-right button-green-top-nav" style="margin-right: 32%;">검색</a>
          </span>

             


<div class="container">
    <div class="">
        <div class="clearfix"></div>

        <div class="row">
            <h2 class="default-userProductList-InfoBar-title text-center"><i class="fa fa-heart-o" aria-hidden="true"></i> This Week Favoourites</h2>
            <!--<div class="col-sm-6 col-md-4" data-behavior="sample_code">-->
                <!--<a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">-->
                    <!--<img src="https://res.cloudinary.com/kimithemes/image/upload/c_thumb,h_480,w_480/v1506329237/seafood_rd0j5y.jpg" alt="Seafood">-->
                <!--</a>-->
                <!--<div class="caption box">-->
                    <!--<h3>Seafood</h3>-->
                    <!--<div class="row">-->
                        <!--<div class="col-sm-8 col-xs-6">-->
                            <!--<p class="default-userProductList-CardList-price">Rp 45.000 / pcs</p>-->
                            <!--<span class="min-order">10 pcs min order</span>-->
                        <!--</div>-->

                        <!--<div class="col-sm-4 col-xs-6">-->
                            <!--<button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
            <!--</div>-->

            <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                <a href="productDetail.do" class="thumbnail_item thumbnail less-padding less-margin">
                  	<div class="bookmarked" style="z-index:2;"><img src="resources/images/6_lee/bookmarked.png" width="86"></div>
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

            <!--<div class="col-sm-6 col-md-4" data-behavior="sample_code">-->
                <!--<a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">-->
                    <!--<img src="https://res.cloudinary.com/kimithemes/image/upload/c_thumb,h_480,w_480/v1506329233/seafood_2_vcuolq.jpg" alt="Seafood">-->
                <!--</a>-->
                <!--<div class="caption box">-->
                    <!--<h3>Seafood</h3>-->
                    <!--<div class="row">-->
                        <!--<div class="col-sm-8 col-xs-6">-->
                            <!--<p class="default-userProductList-CardList-price">Rp 45.000 / pcs</p>-->
                            <!--<span class="min-order">5 pcs min order</span>-->
                        <!--</div>-->

                        <!--<div class="col-sm-4 col-xs-6">-->
                            <!--<button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
            <!--</div>-->

            <div class="col-sm-6 col-md-4">
                <a href="productDetail.do" class="thumbnail_item thumbnail less-padding less-margin">
                    <img src="resources/images/6_lee/oats.jpg" alt="Oats Cake">
                </a>
                <div class="caption box">
                    <h3>Oats Cake</h3>
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

            <div class="col-sm-6 col-md-4">
                <a href="productDetail.do" class="thumbnail_item thumbnail less-padding less-margin">
                    <img src="resources/images/6_lee/mango.jpg" alt="Mango Cake">
                </a>
                <div class="caption box">
                    <h3>Mango Cake</h3>
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

            <div class="col-sm-6 col-md-4">
                <a href="productDetail.do" class="thumbnail_item thumbnail less-padding less-margin">
                    <img src="resources/images/6_lee/cake_square.jpg" alt="Cake">
                </a>
                <div class="caption box">
                    <h3>Cake</h3>
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
                <a href="productDetail.do" class="thumbnail_item thumbnail less-padding less-margin">
                    <img src="resources/images/6_lee/seafood_square.jpg" alt="cake">
                </a>
                <div class="caption box">
                    <h3>Party Cake</h3>
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

            <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                <a href="productDetail.do" class="thumbnail_item thumbnail less-padding less-margin">
                    <img src="resources/images/6_lee/moesli.jpg" alt="Moesli">
                </a>
                <div class="caption box">
                    <h3>Moesli</h3>
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


        </div>
    </div>

	 <div class="row">
        <div class="product-detail-tag-container col-md-12 text-center">
            <button class="btn outline-white-button text-center">Load More</button>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 col-md-offset-1">
            <p class="text-center">
                <img src="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/svg/pilih_menu.svg" width="120" />
                <h5 class="text-roboto text-center">Pilih Menu yang Anda Inginkan</h5>
            </p>
        </div>
        <div class="col-md-2">
            <p class="text-center">
                <img src="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/svg/atur_jadwal.svg" width="120" />
                <h5 class="text-roboto text-center">Atur Jadwal dan Alamat Pengantaran</h5>
            </p>
        </div>
        <div class="col-md-2">
            <p class="text-center">
                <img src="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/svg/approval.svg" width="120" />
                <h5 class="text-roboto text-center">Dapatkan Approval dari Chef</h5>  
            </p>
        </div>
        <div class="col-md-2">
            <p class="text-center">
                <img src="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/svg/pay.svg" width="120" />
                <h5 class="text-roboto text-center">Lakukan Pembayaran</h5>
            </p>
        </div>
        <div class="col-md-2">
            <p class="text-center">
                <img src="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/svg/nikmati.svg" width="120" />
                <h5 class="text-roboto text-center">Nikmati Order Anda Sesuai Jalan</h5>    
            </p>
        </div>
    </div>

</div><!-- /.container -->

<div class="clearfix maya-tiny-padding"></div>
<div class="container mobile-full-width-slider">
    <h2 class="default-userProductList-InfoBar-title text-center"><i class="fa fa-heart-o" aria-hidden="true"></i> Featured Merchant</h2>
    <div class="featured-merchant-slider owl-carousel owl-theme">
        <div class="item">
            <!--<div class="scrim"></div>-->
            <!--<p>Sucicakes</p>-->
            <img src="resources/images/6_lee/sucicakes_logo.png" class="img-rounded" width="100%">
        </div>

        <div class="item">
            <!--<div class="scrim"></div>-->
            <!--<p>Nasi Bakar 58</p>-->
            <img src="resources/images/6_lee/nasi_bakar_logo.jpg" class="img-rounded" width="100%">
        </div>

        <div class="item">
            <!--<div class="scrim"></div>-->
            <!--<p>LL Ball</p>-->
            <img src="resources/images/6_lee/llball_logo.JPG" class="img-rounded" width="100%">
        </div>

        <div class="item">
            <!--<div class="scrim"></div>-->
            <!--<p>LL Ball</p>-->
            <img src="resources/images/6_lee/deliciozo_logo.jpg" class="img-rounded" width="100%">
        </div>

        <div class="item">
            <!--<div class="scrim"></div>-->
            <!--<p>LL Ball</p>-->
            <img src="resources/images/6_lee/bakmi_48_logo.jpg" class="img-rounded" width="100%">
        </div>

        <div class="item">
            <!--<div class="scrim"></div>-->
            <!--<p>LL Ball</p>-->
            <img src="resources/images/6_lee/llball_logo.JPG" class="img-rounded" width="100%">
        </div>

        <div class="item">
            <!--<div class="scrim"></div>-->
            <!--<p>LL Ball</p>-->
            <img src="resources/images/6_lee/fans_logo.png" class="img-rounded" width="100%">
        </div>

    </div>
</div>
<div class="clearfix maya-small-padding"></div>




<!--include footer-->
<jsp:include page="footer.jsp"/>


<script src="resources/js/6_lee/jquery.min.js"></script>

<!-- owl carousel -->
<script src="resources/js/6_lee/owl_carousel/owl.carousel.js"></script>

<!--boostrap js-->
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/6_lee/bootstrap.min.js"></script>

<!--tipuesearch-->
<script src="resources/js/6_lee/tipusearch/tipuesearch_content.js"></script>
<script src="resources/js/6_lee/tipusearch/tipuesearch_set.js"></script>
<script src="resources/js/6_lee/tipusearch/tipuesearch.js"></script>

<script src="resources/js/6_lee/prism/prism.js"></script>

<!--kimi basic js-->
<script src="resources/js/6_lee/kimi.js"></script>


</body>
</html>
