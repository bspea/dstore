<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>

    <!-- Boot Strap -->
    <link href="${ pageContext.request.contextPath }/resources/css/1_common/bootstrap.min.css" rel="stylesheet">

    <!-- Template css-->
    <link href="${ pageContext.request.contextPath }/resources/css/1_common/kimi.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/mainBanner.css?ver=4" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/specialCategory.css" rel="stylesheet">

    <!-- Custom JavaScript-->
    <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/4_jong/mobile-menu.js?ver=1"></script>
    <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/4_jong/mainBanner.js?ver=1"></script>
	<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/4_jong/productMenu.js?ver=1"></script>


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
    body {
    overflow-x:hidden;
    }

    .detailImage {
        width: 100%;
        height: 100%;
    }
    /* 테스트용 CSS */
    </style>
</head>
<body>
	<jsp:include page="../1_common/menubar.jsp"/>	

    <!-- Banner 부분 -->
    <div class="mainBanner">
        <div class="mainBanner-img banner-pc">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner1.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner2.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner3.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner4.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner5.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner6.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner7.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner8.png">
        </div>

        <div class="mainBanner-img banner-mobile">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner1m.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner2m.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner3m.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner4m.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner5m.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner6m.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner7m.png">
            <img src="${ pageContext.request.contextPath }/resources/images/4_jong/banner8m.png">
        </div>
    </div>
    <div class="container bannerBtn-div d-flex h-100">
        <img class="leftArrow" src="${ pageContext.request.contextPath }/resources/images/4_jong/menuLeft.png" onclick="bannerIconLeftClick();">
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(0);'><p>오.행.딜</p></div>
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(1);'><p>도시락몰 회원혜택</p></div>
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(2);'><p>소시지 10+1</p></div>
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(3);'><p>매일매일 우유</p></div>
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(4);'><p>몰박스 7탄</p></div>
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(5);'><p>따듯한 한끼</p></div>
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(6);'><p>정기배송관</p></div>
        <div class="col-xs-2 text-center banner-btn" onclick='bannerMenuClick(7);'><p>반짝특가</p></div>
        <img class="rightArrow" src="${ pageContext.request.contextPath }/resources/images/4_jong/menuRight.png" onclick="bannerIconRightClick();">
    </div>

    
    
    <!-- BootStrap Template -->
    <div class="clearfix maya-tiny-padding"></div>
    <div class="container">
            <div class="row">
                <h2 class="default-userProductList-InfoBar-title text-center"><i class="fa fa-heart-o" aria-hidden="true"></i> This Week Favoourites</h2>
                <!-- 반복문으로 해당 데이터를 넣습니다. -->
    			<c:forEach items="${ list }" var="b">
                <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                    <a href="productDetail.do?pdno=${b.no} " class="thumbnail_item thumbnail less-padding less-margin" style="margin-bottom:0px;">
                        <img class="detailImage" src="${ b.path }" alt="risotto lemon">
                    </a>
                    <div class="caption box">
                        <h3 style="height:35px;">${b.name} </h3>
                        <div class="row">
                            <div class="col-sm-8 col-xs-6">
                                <p class="default-userProductList-CardList-price"><fmt:formatNumber value="${b.price}" pattern="#,###"/>원 </p>
                                <!-- 네모낳게 div 들어가는 것. 현재 안만들어놓았음 --><span class="min-order"></span>
                            </div>
    
                            <div class="col-sm-4 col-xs-6">
                                <button class="btn default-userProductList-CardList-button pull-right" role="button" onclick="addProduct(${b.no}, ${b.price}, '${ b.path}', '${b.name} }', '${ b.categorytName }' );">장바구니 등록</button>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
    

            </div>

    <!-- BootStrap Template END-->
    <!-- 베스트 메뉴 칸 -->
    <div class="container specialMenu">
        <!-- 왼쪽칸 -->
        <div class="col-xs-12 col-md-4 spLeft">
            <!-- 제목부분 -->
            <p class="spTitle">오늘의 도시락</p>
            <!-- 판매량 급상승 부분 (랭크버튼) -->
            <div class="spLeftSelectRankDiv">
                <p class="spRankTitle">판매량 급상승</p>
            </div>
            <!-- 이미지 부분 -->
            <div class="spLeftImageDiv">
            </div>
            <!-- 이미지의 제목부분 -->
            <div class="spLeftImageTitleDiv mobileText">
            </div>
            <!-- 가격 부분 -->
            <div class="spLeftPriceDiv mobileText" style="text-align:center">
            </div>
            <!-- 이후 설명 -->
            <div class="spLeftEtcDiv mobileText">
            </div>
    </div>

    <div class="col-xs-12 spMobile" style="border-top: 1px solid rgb(200, 200, 200);">
    </div>

    <!-- 오른쪽칸 -->
    <div class="col-xs-12 col-md-8 spRight">
        <div class="spRightNotice spPc">일주일 간의 데이터를 바탕으로 선정된 제품입니다.</div>
        <div class="spRightNotice spMobile">추천 상품</div>
        <!-- 정렬 메뉴 부분 -->
        <div class="spRightSortMenu">
            <div class="spRightSortText">가격대별 베스트</div>
            <div class="spRightSortButton spRightSortButtonClick" onclick="specialProductSortButtonClick(0);">등록일</div>
            <div class="spRightSortButton" onclick="specialProductSortButtonClick(1);">가격</div>
            <div class="spRightSortButton" onclick="specialProductSortButtonClick(2);">판매량</div>
        </div>
        <!-- 상품 부분 -->
        <div class="spRightMain">
            
        </div>
    </div>







    <script>
    // 장바구니 추가  : by lee sang hwan
    function addProduct(pdNo, price, imgPath, name, categorytName){
    	
    	var	mNo = "${loginUser.no}";
    	var cookie1 = "${cookie1}";
    	
    	if(mNo != "" && mNo != "NaN"){
    		$.ajax({
    			url : "checkShoppingCart.do",
    			data:{pno:pdNo, mno:mNo},
    			success:function(result){
    				if(result == "ok"){
			    	$.ajax({
			    		url : "insertShoppingCart.do",
			    		data:{pno:pdNo, mno:mNo, cpricesum:price, ccount:1, cimpath:imgPath },
			    		success:function(result){
			    			if (confirm("장바구니에 등록되었습니다. 이동하시겠습니까?") == 1)
			    				location.href='selectShoppingCart.do';
			    		},error:function(){
			    			
			    		}
			    	})
    			}else{
    				alert("이미 장바구니에 추가 되었습니다.");
    			}
    			},error:function(){
    			}
    		})
    	}else{
    	
    		$.ajax({
    			url:"nonMemberCart.do",
    			data:{pno:pdNo, cpricesum:price, ccount:1, cimpath:imgPath, pname:name, pdprice:price, pcname:categorytName},
    			success:function(data){
    				if(data == "no"){
    					alert("이미 추가된 상품 입니다.");
    				} else {
    					if (confirm("장바구니에 등록되었습니다. 이동하시겠습니까?") == 1)
    						location.href='selectShoppingCart.do';
    				}
    			},error:function(){
    			
    			}
    		})
    	}	    	
    }
    </script>
</body>
</html>