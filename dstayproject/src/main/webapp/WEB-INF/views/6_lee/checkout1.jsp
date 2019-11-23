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

    <title>Checkout 1</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/6_lee/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/6_lee/kimi.css" rel="stylesheet">
    <link href="resources/css/6_lee/font-awesome.min.css" rel="stylesheet">
    
    <!-- 모달창에 필요 -->
    <link rel="stylesheet" href="./bootstrapt/css/bootstrap.min.css" />
	<script src="./bootstrapt/js/bootstrap.min.js"></script>
    

</head>

<body>



<jsp:include page="../1_common/menubar.jsp"/> 

<div class="container" style="width: 1360px;">

	


    <div class="kimi-container">
        <!--breadcrumb start-->
        <ol class="breadcrumb hidden-xs">
            <li><h4 style="color:#8b0000;">주문 페이지</h4></li>
        </ol>
        <div class="clearfix"></div>

        <div class="box-bg-gray visible-xs less-padding-left">
            <i class="fa fa-shopping-cart" aria-hidden="true"></i>

            <a style="margin-right: 15px;" class="text-black" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                Show Order Summary <i class="fa fa-angle-down" aria-hidden="true"></i>
            </a>

            <strong class="pull-right">IDR 225.000</strong>

            <div class="clearfix"></div>
            <div class="collapse" id="collapseExample">
                <div class="row">
                    <div class="box-bg-gray">
                        <div class="row">
                            <div class="col-xs-3">
                                <img src="resources/images/6_lee/brownies.jpg" width="100%">
                            </div>
                            <div class="col-xs-5">
                                <span>Brownies Chocolate</span><br/>
                                <small>Sucicakes</small>
                            </div>
                            <div class="col-xs-4">
                                <p class="text-right">IDR 50.000</p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-3">
                                <img src="resources/images/6_lee/lapisSurabaya.jpg" width="100%">
                            </div>
                            <div class="col-xs-5">
                                <span>Brownies Chocolate</span><br/>
                                <small>Sucicakes</small>
                            </div>
                            <div class="col-xs-4">
                                <p class="text-right">IDR 50.000</p>
                            </div>
                        </div>

                        <hr>

                        <form class="form-inline">
                            <div class="col-xs-8">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="" placeholder="Discount Code">
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <button type="submit" class="btn btn-default button-black-medium">Apply</button>
                            </div>
                        </form>
                        <hr/>

                        <div class="row">
                            <div class="col-xs-6">Subtotal</div>
                            <div class="col-xs-6"><p class="text-right"><strong>IDR 207.000</strong></p></div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6">Shipping + Trx Fee</div>
                            <div class="col-xs-6"><p class="text-right"><strong> - </strong></p></div>
                        </div>

                        <hr/>

                        <div class="pull-left">Total</div>
                        <div class="pull-right"><strong>IDR 232.000</strong></div>

                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

		<div class="col-md-4" style="display: inline-block; width: 300px;">
                <div class="box-bg-white hidden-xs" style="margin-bottom: 0px;">
                    <div class="row">
   
						 <a id="markSpBtn" class="btn pull-right button-green-top-nav" style="width:50%;" >지정배송지(3)</a>
						 <span><a id="recentlySpBtn" class="btn pull-right button-green-top-nav" style="width:50%;">최근배송지(3)</a></span>
						 <br><br><br><br>
						
						  	<div id="recentlySp" style="display:'';">
						 	 	
						 	    	주소 : 경기도 성남시 분당구 분당동 <br>
						 	    	상세주소 : 분당동 12-2
						 	  	  <hr>
						 	  	 
						 	  	
						 	    	주소 : 경기도 성남시 분당구 분당동 <br>
						 	    	상세주소 : 분당동 12-2
						 	  	  <hr>
						 	  	  
						 	  	  
						 	    	주소 : 경기도 성남시 분당구 분당동 <br>
						 	    	상세주소 : 분당동 12-2
						 		  
						 	</div>	 
	
						    <div id="markSp" style="display:none;">
						    	
						    	<p id="addAddress" style="text-align:center; cursor:pointer; color:#8b0000;">배송지 추가하기</p>
						    	
						    	<hr>
						   
						   		배송지명:우리집<br>
						    	주소: 경기도 성남시 분당구<br>
						    	상세주소:분당동<br>
						    	<div style="display: inline-block; height: 0px; position: relative; left: 198px;">
						    	<p id="addAddress" style="text-align:center; cursor:pointer; color:#8b0000; display: inline-block; margin-bottom:0px;">수정</p>
						    	<p id="addAddress" style="text-align:center; cursor:pointer; color:#8b0000; display: inline-block;  margin-bottom:0px;">삭제</p>
						    	</div>
						    	<hr>
						    	
						    	배송지명:우리집<br>
						    	주소: 경기도 성남시 분당구<br>
						    	상세주소:분당동
						    	<hr>
						    </div>
						       
						       
                    </div>
              </div> 
              <div class="clearfix"></div>

        </div>
        
        <!-- 주소  api 스크립트  -->
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        
        <!-- 배송지 모달창  start-->
    
     <div class="modal modal-center fade" id="testModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel" style="color:#8b0000; text-align:center;">배송지 추가
					<br> 네 가지 항목 모두 기재해 주시길 바랍니다.
					</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">X</span>
					</button>
				</div>
				<div class="modal-body">
					
					<form action="" method="post" id="addAd">
						  		
						   <div class="form-group"> 
                                      
                                    <input type="text" class="form-control" id="deliveryName" name="deliveryName" placeholder="배송지명*" style="width: 50%; display: inline-block;" oninput="addressValidate();">
     
                                    <input type="text" id="sample3_postcode" name="sample3_postcode" class="form-control"  placeholder="우편번호*" style="width: 49%; display: inline-block;" oninput="addressValidate();">
            						<br><br>
									<input type="text" id="sample3_address" name="sample3_address" class="form-control"  placeholder="주소*" style="width: 65%; display: inline-block;" oninput="addressValidate();">
                     
                                    <input type="text" class="form-control" id="sample3_detailAddress" name="sample3_detailAddress" placeholder="상세주소*" style="width: 34%; display: inline-block;" oninput="addressValidate();">
                                    
                                    <input type="hidden" id="sample3_extraAddress" placeholder="참고항목">
                                    
                         </div>  
                             
                             	
								<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
								<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
								</div>
								<!-- 주소api 스크립트 -->
								<!-- <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
   
						<div class="modal-footer">
							<button class="btn" type="submit" data-dismiss="modal" id="saveBtn" style="margin-top: 16px; position: relative; top: 10px;"  disabled onclick="return addressValidate();">저장</button>
							<button class="btn" type="button" data-dismiss="modal" style="margin-top: 16px; position: relative; top: 10px;">취소</button>
						</div>
				
					</form>
					
					
								<div class="col-sm-4 col-xs-6" style="position: relative; left: 390px; bottom: 80px; ">
                            		<button onclick="sample3_execDaumPostcode();" class="btn default-userProductList-CardList-button pull-right" role="button" style="width: 194px;">주소검색</button>
                        		</div>
					
					
				</div>
			</div>
		</div>
	</div>
       
     <!-- 배송지 모달창 end  -->
        
        


	<span>

        <div class="row" style="position: display: inline-block;">
        
        
            <div class="col-md-8" style="width: 745px;">
                <div class="box-bg-white" style="width: 100%;">
                    <h3 class="section-title" style="text-align: center;">고객 정보 </h3>

                    <div class="row">
                        <div class="col-md-9" style="margin-left: 11%;">
                            <form>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="" placeholder="주문자 성함*" required>
                                </div>
                                    <div class="form-group">
                                    <input type="text" class="form-control" id="" placeholder="전화번호*(-없이)" pattern="[0-9]{0,10}" title="숫자만 입력해 주세요" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="" placeholder="이메일" required>
                                </div>
                               
                                <div class="form-group">
                                    <input type="text" class="form-control" id="" placeholder="우편번호*" required>
                                </div>

                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="" placeholder="주소*" required>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="form-group" style="margin-bottom: 0px;">
                                            <input type="text" class="form-control" id="" placeholder="상세주소*">
                                        </div>
                                   			
                                   			<div id="wrap2" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative; right: 347px;">
												<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap2" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode2()" alt="접기 버튼">
											</div>
                                   			
                                   			<!-- <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
					   
                                    </div>
                                </div>
                               
                                

                                <div class="form-group" style="margin-top: 22px;">
                                    <input type="text" class="form-control" id="" placeholder="기타 문의사항">
                                </div>

                               



                                <div class="checkbox">
                                   
                                </div>
                            </form>
                       			<div class="col-sm-4 col-xs-6" style="position: relative; left: 349px; bottom: 85px;">
                            		<button onclick="sample3_execDaumPostcode2();" class="btn default-userProductList-CardList-button pull-right" role="button" style="width: 147px;">주소검색</button>
                        		</div>
                       
                        </div>
                        
                        
                    </div>
                </div>
        
                <a href="checkout2.html" class="btn btn-default pull-right button-black visible-xs">Shipping <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                <div class="clearfix maya-small-padding"></div>

            </div>

            <div class="col-md-4" style="width: 299px;">
                <div class="box-bg-white hidden-xs" style="margin-bottom: 0px;">
                    <div class="row">
                        <div class="col-md-2 col-xs-6 less-padding-right">
                            <img src="resources/images/6_lee/brownies.jpg" width="100%">
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <span>Brownie Chocolate</span><br/>
                            <span class="text-gray-2 text-thin">Sucicakes</span>
                        </div>
                        <div class="col-md-4 col-xs-5">
                            <p class="text-right">IDR 50.000</p>
                        </div>
                        <div class="clearfix maya-small-padding"></div>
                    </div>

                    <div class="row">
                        <div class="col-md-2 col-xs-6 less-padding-right">
                            <img src="resources/images/6_lee/lapisSurabaya.jpg" width="100%">
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <span>Brownie Chocolate</span><br/>
                            <span class="text-gray-2 text-thin">Sucicakes</span>
                        </div>
                        <div class="col-md-4 col-xs-5">
                            <p class="text-right">IDR 50.000</p>
                        </div>
                        <div class="clearfix maya-small-padding"></div>
                    </div>

                    <hr>
						  <div class="row">
                     		 <div class="col-sm-8">상품가격</div>
                       		 <div class="col-sm-4 text-right">￦10.000</div>
                   		 </div>

	                    <div class="row">
	                        <div class="col-sm-8 less">배송비</div>
	                        <div class="col-sm-4 text-right">￦2.500</div>
	                    </div>
						
                    
                    <!-- 쿠폰 모달창 start -->

							<div class="modal modal-center fade" id="testModal2" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel"
												style="color: #8b0000; text-align: center;">쿠 폰</h5>
											<button class="close" type="button" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">X</span>
											</button>
										</div>

										<div class="modal-body" style="text-align: center;">
											<a href="" style="">10% 할인코드(10000원 이상) CASDF-ASDWA-SADFF</a><br><hr>
											<a href="">20% 할인코드(20000원 이상) CASDF-ASDWA-SADFF</a><br><hr>
											<a href="">30% 할인코드(30000원 이상) CASDF-ASDWA-SADFF</a><br><hr>
											<a href="">40% 할인코드(40000원 이상) CASDF-ASDWA-SADFF</a><br><hr>
										</div>

											<div class="modal-footer">
												<button class="btn" type="button" data-dismiss="modal" >나가기</button>
											</div>
									</div>
								</div>
							</div>
							<!-- 쿠폰 모달창 end -->
                    
                    
                    
                    
                    
                    
                    <hr/>

                   <form class="form-inline">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-8"><input type="text" class="form-control" id="" placeholder="할인금액" readonly></div>
                                <div class="col-sm-4"><button type="button" id ="coupon" class="btn btn-default button-black-medium btn-block">쿠폰</button></div>
                            </div>
                        </div>

                    </form>


                    <hr/>
                    <div class="row">
                        <div class="col-sm-4 less">총액</div>
                        <div class="col-sm-8 text-right"><h3 class="less-margin"><small>￦</small> 12.500</h3></div>
                    </div>
                    
                    <br>
                    <div class="row">
                        <div class="col-sm-4 less"><h4><Strong>할인가</Strong></h4></div>
                        <div class="col-sm-8 text-right"><h3 class="less-margin"><small>￦</small> 10.000</h3></div>
                    </div>
                    
                    
                </div>
                <a href="" class="btn btn-default pull-right button-black hidden-xs" style="width: 270px; color: #ffffff; background-color: #000;">결제하기</a>
                <div class="clearfix"></div>



            </div>
        </div>
        </span>
    </div>

</div><!-- /.container -->

<!--include footer-->
<jsp:include page="footer.jsp"/>

<script src="resources/js/6_lee/jquery.min.js"></script>
	<script>
		
	$("#recentlySpBtn").on('click', function(){
		$("#recentlySp").css("display","");
		$("#markSp").css("display","none");
	});
	
	
	$("#markSpBtn").on('click', function(){
		$("#recentlySp").css("display","none");
		$("#markSp").css("display","");
	});
	
	//배송지 저장 클릭 시 모달창 연동 	
	$('#addAddress').click(function(e){
		$('#testModal').modal({backdrop: 'static'});
		e.preventDefault();
		$('#testModal').modal("show");
	});
	
	// 쿠폰 클릭 시 모달창 연동
	$('#coupon').click(function(e){
		$('#testModal2').modal({backdrop: 'static'});
		e.preventDefault();
		$('#testModal2').modal("show");
	});
	
	// 모달창 주소검색 api 시작
	
	 var element_wrap = document.getElementById('wrap');
    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
            	document.getElementById('sample3_postcode').value = data.zonecode;
             	 document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
  
    }
	
	/* 모달창 주소api 끝 */
	
	// 주문페이지 주소검색 api 시작
	
	 var element_wrap2 = document.getElementById('wrap2');
    function foldDaumPostcode2() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap2.style.display = 'none';
    }

    function sample3_execDaumPostcode2() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
            	document.getElementById('sample3_postcode').value = data.zonecode;
             	 document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap2.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap2.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap2);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap2.style.display = 'block';
  
    }
	
	/* 주문페이지 주소api 끝 */
	
	
	
	
	/* 주소에 공백처리 */
	
		function addressValidate(){
		
			
			
			
			var deliveryName = $("#addAd input[id=deliveryName]").val();
			var postcode = $("#addAd input[id=sample3_postcode]").val();
			var address = $("#addAd input[id=sample3_address]").val();
			var detailAddress = $("#addAd input[id=sample3_detailAddress]").val();
			var saveBtn = $("#saveBtn");
			
			
			if(deliveryName == ""){
				saveBtn.attr('disabled',true);
			}else if(postcode == ""){
				saveBtn.attr('disabled',true);
			}else if(address==""){
				saveBtn.attr('disabled',true);
			}else if(detailAddress==""){
				saveBtn.attr('disabled',true);
			}else{
				saveBtn.attr('disabled',false);
			}
				
		
		}
		
        
	
	
	
	</script>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/6_lee/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/6_lee/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/js/6_lee/kimi.js"></script>

</body>
</html>
