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
        <div class="">
            <div class="row">
                <h2 class="default-userProductList-InfoBar-title text-center"><i class="fa fa-heart-o" aria-hidden="true"></i> This Week Favoourites</h2>
    			<c:forEach items="${ list }" var="b">
                <div class="col-sm-6 col-md-4" data-behavior="sample_code">
                    <a href="productDetail.html" class="thumbnail_item thumbnail less-padding less-margin" style="margin-bottom:0px;">
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
                                <button onclick="location.href='shoppingCart.html'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
    

            </div>
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
                <div class="spRankButtonDiv" onclick="specialLeftRankDiv(0);">1</div>
                <div class="spRankButtonDiv" onclick="specialLeftRankDiv(1);">2</div>
                <div class="spRankButtonDiv" onclick="specialLeftRankDiv(2);">3</div>
            </div>
            <!-- 이미지 부분 -->
            <div class="spLeftImageDiv">
                <img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage4.jpg">
                <img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage5.jpg">
                <img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage6.jpg">
            </div>
            <!-- 이미지의 제목부분 -->
            <div class="spLeftImageTitleDiv mobileText">
                    <p>[위클리]오쿡 컵 도시락 6종 6팩</p>
                    <p>[위클리]영양&칼로리밸런스 도시락 6종 12팩</p>
                    <p>[위클리]오마이도시락 5종 10팩</p>
            </div>
            <!-- 가격 부분 -->
            <div class="spLeftPriceDiv mobileText">
                <div class="spLeftDiscountRate">20%</div>
                <div class="spLeftPrice">19,900원</div>
                <div class="spLeftRawCost">(25,000원)</div>

                <div class="spLeftDiscountRate">26%</div>
                <div class="spLeftPrice">43,900원</div>
                <div class="spLeftRawCost">(60,000원)</div>

                <div class="spLeftDiscountRate">15%</div>
                <div class="spLeftPrice">29,500</div>
                <div class="spLeftRawCost">(35,000원)</div>
            </div>
            <!-- 이후 설명 -->
            <div class="spLeftEtcDiv mobileText">
                <div class="spLeftBookmark">찜 188명</div>
                <div class="spLeftReview">상품후기 1413명</div>
                <div class="spLeftInquiry">상품문의 199명</div>

                <div class="spLeftBookmark">찜 500명</div>
                <div class="spLeftReview">상품후기 5122명</div>
                <div class="spLeftInquiry">상품문의 6222명</div>

                <div class="spLeftBookmark">찜 9999명</div>
                <div class="spLeftReview">상품후기 9999명</div>
                <div class="spLeftInquiry">상품문의 9999명</div>
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
            <div class="spRightSortButton spRightSortButtonClick" onclick="specialProductSortButtonClick(0);">가격</div>
            <div class="spRightSortButton" onclick="specialProductSortButtonClick(1);">할인율</div>
            <div class="spRightSortButton" onclick="specialProductSortButtonClick(2);">판매량</div>
        </div>
        <!-- 상품 부분 -->
        <div class="spRightMain">
            <div class="col-xs-12 col-md-4 spRightProduct">
                <div class="spRightProductImage"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage7.jpg"></div>
                <div class="spRightProductTitle mobileText">[매일][15%쿠폰]아몬드 브리즈 오리지널 950ML*10개</div>
                <div class="spRightProductPay mobileText">
                    <div class="spRightDiscountRate">0%</div>
                    <div class="spRightPrice mobileTextFocus">21,900원</div>
                    <div class="spRightRawCost">(21,900원)</div>
                </div>
            </div>

            <div class="col-xs-12 col-md-4 spRightProduct">
                <div class="spRightProductImage"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage8.jpg"></div>
                <div class="spRightProductTitle mobileText">[매일][15%쿠폰] 아몬드브리즈 외 인기 13종</div>
                <div class="spRightProductPay mobileText">
                    <div class="spRightDiscountRate">3%</div>
                    <div class="spRightPrice mobileTextFocus">29,900원</div>
                    <div class="spRightRawCost">(30,900원)</div>
                </div>
            </div>

            <div class="col-xs-12 col-md-4 spRightProduct">
                <div class="spRightProductImage"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage9.jpg"></div>
                <div class="spRightProductTitle mobileText">연세두유 2종 96팩 (검은콩48팩+호두&아몬드48팩)</div>
                <div class="spRightProductPay mobileText">
                        <div class="spRightDiscountRate">30%</div>
                        <div class="spRightPrice mobileTextFocus">9,000원</div>
                        <div class="spRightRawCost">(12,900원)</div>
                </div>
            </div>

            <div class="col-xs-12 col-md-4 spRightProduct">
                <div class="spRightProductImage"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage10.jpg"></div>
                <div class="spRightProductTitle mobileText">쥬비스 건강현미밥바 14개</div>
                <div class="spRightProductPay mobileText">
                    <div class="spRightDiscountRate">0%</div>
                    <div class="spRightPrice mobileTextFocus">52,000원</div>
                    <div class="spRightRawCost">(52,000원)</div>
                </div>
            </div>

            <div class="col-xs-12 col-md-4 spRightProduct">
                <div class="spRightProductImage"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/testImage11.jpg"></div>
                <div class="spRightProductTitle mobileText">[산과들에] 하루 한줌견과 100봉(5종)</div>
                <div class="spRightProductPay mobileText">
                    <div class="spRightDiscountRate">25%</div>
                    <div class="spRightPrice mobileTextFocus">29,900원</div>
                    <div class="spRightRawCost">(39,900원)</div>
                </div>
            </div>
                
        </div>
    </div>







    <script>
        var spcSelectRankIndex = 0;

        $(function() {
            var $leftImg = $(".spLeftImageDiv img");
            var $leftImgTitle = $(".spLeftImageTitleDiv p");
            var $btnRank = $(".spRankButtonDiv");
            
            $.each($btnRank, function(index) {
                $btnRank.eq(index).css("background","gray");
            });
            $btnRank.eq(0).css("background","#8b0000");
            $(".spLeftImageTitleDiv p").eq(0).css("display","inherit");

            $(".spLeftDiscountRate").eq(0).css("display","inline-block");
            $(".spLeftPrice").eq(0).css("display","inline-block");
            $(".spLeftRawCost").eq(0).css("display","inline-block");
            
            $(".spLeftBookmark").eq(0).css("display","inline-block");
            $(".spLeftReview").eq(0).css("display","inline-block");
            $(".spLeftInquiry").eq(0).css("display","inline-block");


            $leftImgTitle.eq(0).css("display","inherit");
        });
        
        // 판매량 급상승 옆에 있는 Rank 숫자 버튼 눌렀을 때 발생
        function specialLeftRankDiv(index) {
            // 현재 선택한 Index가 동일하면 의미 없음으로 삭제합니다.
            if (index == spcSelectRankIndex) {
                return false;
            }

            // 선택되어있는 번호 색깔을 바꾸는 작업
            var $btnRank = $(".spRankButtonDiv");
            $btnRank.eq(index).css("background","#8b0000");
            $btnRank.eq(spcSelectRankIndex).css("background","gray");
           
            
            // 이미지 슬라이드 작업
            var $leftImg = $(".spLeftImageDiv img");
            var imgDivWidth = $(".spLeftImageDiv").outerWidth() + 3;
            // 현재 선택된 번호가, 선택한 번호보다 작음 (왼쪽으로 슬라이드)
            $.each($leftImg, function(indexLoop) {
                    $leftImg.eq(indexLoop).transition({x: '-' + imgDivWidth * index + 'px'});
            });

            // 제목 바꾸는 작업
            var $leftImageTitle = $(".spLeftImageTitleDiv p");
            $leftImageTitle.eq(spcSelectRankIndex).css("display","none");
            $leftImageTitle.eq(index).css("display","inherit");
            
            // 가격 바꾸는 작업
            var $LeftDiscountRate = $(".spLeftDiscountRate");
            $LeftDiscountRate.eq(spcSelectRankIndex).css("display","none");
            $LeftDiscountRate.eq(index).css("display","inline-block");

            var $LeftPrice = $(".spLeftPrice");
            $LeftPrice.eq(spcSelectRankIndex).css("display","none");
            $LeftPrice.eq(index).css("display","inline-block");

            var $LeftRawCost = $(".spLeftRawCost");
            $LeftRawCost.eq(spcSelectRankIndex).css("display","none");
            $LeftRawCost.eq(index).css("display","inline-block");
            
            // 찜, 상품후기, 상품문의 바꾸는 작업
            var $LeftBookmark = $(".spLeftBookmark");
            $LeftBookmark.eq(spcSelectRankIndex).css("display","none");
            $LeftBookmark.eq(index).css("display","inline-block");

            var $LeftReview = $(".spLeftReview");
            $LeftReview.eq(spcSelectRankIndex).css("display","none");
            $LeftReview.eq(index).css("display","inline-block");

            var $LeftInquiry = $(".spLeftInquiry");
            $LeftInquiry.eq(spcSelectRankIndex).css("display","none");
            $LeftInquiry.eq(index).css("display","inline-block");

            spcSelectRankIndex = index;
        }

        var specialBtnSortIndex = 0;
        function specialProductSortButtonClick(index) {            
            if (specialBtnSortIndex == index)
                return false;

                

            // 버튼에 대한 처리
            $(".spRightSortButton").eq(specialBtnSortIndex).removeClass("spRightSortButtonClick");

            $(".spRightSortButton").eq(index).addClass("spRightSortButtonClick");

            specialBtnSortIndex = index;
        }
        
        $(function() {
        	console.log();
        });
    </script>
</body>
</html>