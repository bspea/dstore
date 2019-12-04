
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
            $(".spLeftPrice").eq(0).css({"display":"inline-block","text-align":"center"});
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
            $LeftPrice.eq(index).css({"display":"inline-block"});

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
            
            
            // ajax
            // 0 : 가격
            // 1 : 할인율
            // 2 : 판매량
            switch(index) {
            case 0: RightMenuSort_New(); break;
            case 1: RightMenuSort_Price(); break;
            case 2: RightMenuSort_Cell(); break;
            }

            specialBtnSortIndex = index;
        }
        
        $(function() {
        	LeftMenuReset();
        	RightMenuSort_New();
        });
        
        function RightMenuSort_New() {
       	 	$.ajax({
          		url : "menuSortNew.do",
          		dataType:"json",
          		success:function(result) {
          			RightSortMenuReset();
          			$.each(result, function(index, value) {   
          				console.log(value);
          				addRightSortMenu(value.path, value.no, value.name, value.price);
          			});
          		},
          		fail:function() {
          			console.log("AJAX 실패 (베스트메뉴)");
          		}
        	})
        }
        
        function RightMenuSort_Price() {
       	 	$.ajax({
          		url : "menuSortPrice.do",
          		dataType:"json",
          		success:function(result) {
          			RightSortMenuReset();
          			$.each(result, function(index, value) {   
          				console.log(value);
          				addRightSortMenu(value.path, value.no, value.name, value.price);
          			});
          		},
          		fail:function() {
          			console.log("AJAX 실패 (베스트메뉴)");
          		}
        	})
        }
        
        function RightMenuSort_Cell() {
       	 	$.ajax({
          		url : "menuSortCell.do",
          		dataType:"json",
          		success:function(result) {
          			RightSortMenuReset();
          			$.each(result, function(index, value) {   
          				console.log(value);
          				addRightSortMenu(value.path, value.no, value.name, value.price);
          			});
          		},
          		fail:function() {
          			console.log("AJAX 실패 (베스트메뉴)");
          		}
        	})
        }
        
        function LeftMenuReset() {
        	 $.ajax({
             	url : "bestMenuByPrice.do",
             	dataType:"json",
             	success:function(result) {
             		LeftBestMenuReset();
             		$.each(result, function(index, value) {
             			
             			addLeftBestMenu(index, value.path, value.no, value.name, value.price, value.bookmarkCount, value.reviewCount, value.inQueryCount);
             		});
             	},
             	fail:function() {
             		console.log("AJAX 실패 (베스트메뉴)");
             	}
             })
        }
        
        function addLeftBestMenu(index, path, no, name, price, bkMax, rvMax, iqMax) {
        	if(bkMax == null)
        		bkMax = 0;
        	
        	if(rvMax == null)
        		rvMax = 0;
        	
        	if(iqMax == null)
        		iqMax = 0;
        	
        	
        	if (index == 0)
        		$(".spLeftSelectRankDiv").append('<div class="spRankButtonDiv" onclick="specialLeftRankDiv(' + index + ');" style="background: rgb(139, 0, 0);">' + (index+1) + '</div>');
        	else
        		$(".spLeftSelectRankDiv").append('<div class="spRankButtonDiv" onclick="specialLeftRankDiv(' + index + ');">' + (index+1) + '</div>');
        	
        	$(".spLeftImageDiv").append('<a href="productDetail.do?pdno=' + no + '"><img src="'+ path + '"></a>');
        	
        	if (index == 0)
        		$(".spLeftImageTitleDiv").append('<p style="display:inherit;">' + name + '</p>');
        	else
        		$(".spLeftImageTitleDiv").append('<p>' + name + '</p>');
        		
        	

        	if (index == 0) {
            	$(".spLeftPriceDiv").append('<div class="spLeftDiscountRate" style="display:inherit;"></div>'); // 현재 사용 X
            	$(".spLeftPriceDiv").append('<div class="spLeftPrice" style="display:inherit;">' + addComma(price) + '원</div>');
            	$(".spLeftPriceDiv").append('<div class="spLeftRawCost" style="display:inherit;"></div>'); // 현재 사용 X
        	} else {
            	$(".spLeftPriceDiv").append('<div class="spLeftDiscountRate"></div>'); // 현재 사용 X
            	$(".spLeftPriceDiv").append('<div class="spLeftPrice">' + addComma(price) + '원</div>');
            	$(".spLeftPriceDiv").append('<div class="spLeftRawCost"></div>'); // 현재 사용 X
        	}
        	
        	if (index == 0) {
        		$(".spLeftEtcDiv").append('<div class="spLeftBookmark" style="display:inline-block;">찜 ' + bkMax + '명</div>');
        		$(".spLeftEtcDiv").append('<div class="spLeftReview" style="display:inline-block;">상품후기 ' + rvMax + '명</div>');
        		$(".spLeftEtcDiv").append('<div class="spLeftInquiry" style="display:inline-block;">상품문의 ' + iqMax + '명</div>');
        	} else {
        		$(".spLeftEtcDiv").append('<div class="spLeftBookmark">찜 ' + bkMax + '명</div>');
        		$(".spLeftEtcDiv").append('<div class="spLeftReview">상품후기 ' + rvMax + '명</div>');
        		$(".spLeftEtcDiv").append('<div class="spLeftInquiry">상품문의 ' + iqMax + '명</div>');
        	}
        }
        
        function LeftBestMenuReset() {
        	$(".spRankButtonDiv").remove();
        	$(".spLeftImageDiv").text("");
        	$(".spLeftImageTitleDiv").text("");
        	$(".spLeftDiscountRate").remove();
        	$(".spLeftPrice").remove();
        	$(".spLeftRawCost").remove();
        	$(".spLeftBookmark").remove();
        	$(".spLeftReview").remove();
        	$(".spLeftInquiry").remove();
        }
        
        function RightSortMenuReset() {
        	$(".spRightMain").text("");
        }
        
        function addRightSortMenu(imgPath, no, name, price) {
        	$(".spRightMain").append('<div class="col-xs-12 col-md-4 spRightProduct">');
        	$(".spRightProduct").last().append('<div class="spRightProductImage"><a href="productDetail.do?pdno=' + no + '"><img src="' + imgPath + '"></a></div>');
        	$(".spRightProduct").last().append('<div class="spRightProductTitle mobileText">' + name + '</div>');
        	$(".spRightProduct").last().append('<div class="spRightProductPay mobileText"></div>');
        	$(".spRightProductPay").last().append('<div class="spRightPrice mobileTextFocus">' + price + '</div>');
        }
        
       
        // 콤마 만들어주는 그것
        function addComma(num) {
        	  var regexp = /\B(?=(\d{3})+(?!\d))/g;
        	  return num.toString().replace(regexp, ',');
        	}