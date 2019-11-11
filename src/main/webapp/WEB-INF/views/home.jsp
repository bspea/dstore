<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>



    <!-- Boot Strap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template css-->
    <link href="resources/css/kimi.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="resources/css/logo-top.css" rel="stylesheet">
    <link href="resources/css/top-menu.css" rel="stylesheet">
    <link href="resources/css/mainBanner.css" rel="stylesheet">

    <!-- Custom JavaScript-->
    <script type="text/javascript" src="resources/js/mobile-menu.js"></script>
    <script type="text/javascript" src="resources/js/mainBanner.js"></script>



    <style>
    html, body {
        height: 100%;
        margin: 0px;
        padding: 0px;
        background:rgb(245, 245, 245);
    }
    html {
        padding-bottom: 50px;
    min-height: 100%;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    position: relative;
    }




    /* 테스트용 CSS */
    </style>
<body>
	<div class="fixedArea">
    <div class="topFixedDiv">

    <div class="logo-top">
        <div class="topLeft">
                <a href="home.do"><img src="resources/images/logo.png" width=100px></a>
        </div>

        <div class="topMiddle">
            <input type="text" placeholder="검색어를 입력해주세요.">
        </div>

        <div class="topRight">
             <!-- pc버전 -->
            <div class="size-pc">
            <c:if test="${empty loginUser }">
            	<a href="loginForm.do">로그인</a>
                <a href="registerForm.do">회원가입</a>
            </c:if>
            <c:if test="${!empty loginUser && loginUser.email eq 'admin@dstay.com' }">
	            <a href="">관리자</a>
	            <a href="logout.do">로그아웃</a>
            </c:if>
            <c:if test="${!empty loginUser && loginUser.email ne 'admin@dstay.com'}">
                <a href="logout.do">록아웃</a>
                <a href="">마이페이지</a>
            </c:if>
            
                <a href="">장바구니</a>
                <a href="">고객센터</a>
            </div>

            <!-- 모바일버전 (화면작은) -->
            <div class="size-mobile">
                <img class="test" src="resources/images/listTest.png" onclick="mobileOpenMenu();">

                <!-- 아이콘 누르면 나타날 메뉴리스트 -->
                <div class="icon-menuList">
                    <div class="menuList-title">차종환 님</div>
                    <div id="menuList-select"></div>
                    <div><img src="resources/images/menusmallicon.png">로그인</div>
                    <div><img src="resources/images/menusmallicon.png">마이페이지</div>
                    <div><img src="resources/images/menusmallicon.png">장바구니</div>
                    <div><img src="resources/images/menusmallicon.png">고객센터</div>
                </div>
                <div class="icon-menuList-leave" onclick="mobileCloseMenu();">메뉴바 닫기</div>
            </div>
        </div>
    </div>

    <div class="menu-div">
            <div class="menu-line">메뉴목록</div>
            <div class="menu-line">베스트목록</div>
            <div class="menu-line">신상품</div>
            <div class="menu-line">할인품목</div>
        
    </div>
    </div>
    </div>

    <!-- Banner 부분 -->
    <div class="mainBanner">
        <div class="mainBanner-img banner-pc">
            <img src="resources/images/banner1.png">
            <img src="resources/images/banner2.png">
        </div>

        <div class="mainBanner-img banner-mobile">
            <img src="resources/images/banner1.png">
            <img src="resources/images/banner2.png">
        </div>
    </div>
    <div class="container">
        <div class="col-xs-1 text-center banner-btn">안녕</div>
    </div>

    
    
    <!-- BootStrap Template -->
    <div class="clearfix maya-tiny-padding"></div>
    <div class="container">
        <div class="">
    
            <div class="row">
                <h2 class="default-userProductList-InfoBar-title text-center"><i class="fa fa-heart-o" aria-hidden="true"></i> This Week Favoourites</h2>
    
                <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                    <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">
                        <img src="resources/images/nurung.jpg" alt="risotto lemon">
                    </a>
                    <div class="caption box">
                        <h3>현미 누룽지 5종 세트</h3>
                        <div class="row">
                            <div class="col-sm-8 col-xs-6">
                                <p class="default-userProductList-CardList-price">25,000원</p>
                                <span class="min-order">여기에 네모낳게 div 들어감</span>
                            </div>
    
                            <div class="col-sm-4 col-xs-6">
                                <button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
    
                <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                    <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">
                        <img src="resources/images/nurung2.jpg" alt="risotto lemon">
                    </a>
                    <div class="caption box">
                        <h3>현미 누룽지 5종 세트</h3>
                        <div class="row">
                            <div class="col-sm-8 col-xs-6">
                                <p class="default-userProductList-CardList-price">Rp 45.000 / pcs</p>
                                <span class="min-order">10 pcs min order</span>
                            </div>
    
                            <div class="col-sm-4 col-xs-6">
                                <button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                    <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">
                        <img src="resources/images/nurung2.jpg" alt="risotto lemon">
                    </a>
                    <div class="caption box">
                        <h3>현미 누룽지 5종 세트</h3>
                        <div class="row">
                            <div class="col-sm-8 col-xs-6">
                                <p class="default-userProductList-CardList-price">Rp 45.000 / pcs</p>
                                <span class="min-order">10 pcs min order</span>
                            </div>
    
                            <div class="col-sm-4 col-xs-6">
                                <button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                    <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin">
                        <img src="resources/images/nurung2.jpg" alt="risotto lemon">
                    </a>
                    <div class="caption box">
                        <h3>현미 누룽지 5종 세트</h3>
                        <div class="row">
                            <div class="col-sm-8 col-xs-6">
                                <p class="default-userProductList-CardList-price">Rp 45.000 / pcs</p>
                                <span class="min-order">10 pcs min order</span>
                            </div>
    
                            <div class="col-sm-4 col-xs-6">
                                <button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>

    <!-- BootStrap Template END-->



    <script>
    $(function(){
    // 페이지 로드될 때 Banner display 풀어주는 부분입니다.
        var $imgPc = $(".banner-pc img");
        var $imgMobile = $(".banner-mobile img");


        $imgPc.eq(0).css("display","inherit");
        $imgMobile.eq(0).css("display","inherit");
    });
    </script>
</body>
</html>