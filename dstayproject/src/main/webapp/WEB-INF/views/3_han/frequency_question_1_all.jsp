<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D_Stay 고객센터 - 자주 묻는 질문</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    
    <!-- Template css-->
    <link href="${ pageContext.request.contextPath }/resources/css/1_common/kimi.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/top-menu.css?ver=1" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/mainBanner.css?ver=4" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/specialCategory.css" rel="stylesheet">

    <!-- Custom JavaScript-->
    <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/4_jong/mobile-menu.js?ver=1"></script>
    <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/4_jong/mainBanner.js?ver=1"></script>
    
    
    
    <!-- 한도빈 Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/customer-center-main.css" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/frequency-question.css" rel="stylesheet">
    
    
    <!-- 한도빈 Custom js -->
    <script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/3_han/frequncy-question.js"></script>
        
    <style>
		.modal-backdrop.in{
			opacity:0;
		}
		
		
		.modal-dialog {
			
		    width: 600px;
		    margin: 150px auto 0 auto !important;
		}
    </style>
</head>
<body>
	<%@ include file="../1_common/menubar.jsp" %>
	
    <div class="container-fluid" id="frequency-container" style="padding-bottom: 50px; padding-top: 20px;">
        <div class="row">
            <div class="col-md-2">
                <ul class="nav nav-pills nav-stacked left-side-nav-stacked">
                    <li role="presentation" id="center-logo"><p>고객센터</p></li>
                    <li class="notice" role="presentation"><a href="notice.html">공지사항</a></li>
                    <li role="presentation"><a href="frequency-question-1-all.html">자주 묻는 질문</a></li>
                    <li role="presentation"><a href="suggestion.html">제안하기</a></li>
                    <li role="presentation"><a href="#">나의 정보 조회</a></li>
                    <!--<li role="presentation"><a href="#">Frequently Asked Questions</a></li>-->
                </ul>

                <div style="border: 1px solid #E7EAEA; margin-top: 30px; padding: 15px;"
                    class="hidden-xs">
                    <h2>제안해</h2>
                    <h4>경품 줄게</h4>
                    <br>
                    <h2>입점해</h2>
                    <p><a href="#" class="text-secondary">여기</a>를 클릭하세요</p>
                </div>
            </div>

            <div class="col-md-10">
                <!--frequency-question-menu 자주 묻는 질문 nav 시작-->
                <div class="container-fluid frequency-question-menu hidden-xs">
                    <ul class="nav navbar-nav">
                        <li><a href="frequency-question-1-all.html">전체</a></li>
                        <li><a href="frequency-question-2-delivery.html">배송문의</a> </li>
                        <li><a href="frequency-question-3-return.html">반품/교환/환불</a></li>
                        <li><a href="frequency-question-4-order-and-payment.html">주문/결제</a></li>
                        <li><a href="frequency-question-5-member.html">회원서비스</a></li>
                        <li><a href="frequency-question-6-reward.html">보상제도</a></li>
                        <li><a href="frequency-question-7-other.html">기타</a></li>
                    </ul>
                </div>
                <!--frequency-question-menu end 자주 묻는 nav 질문 끝-->

                <section class="edit-channel-form">
                    <h2 class="title less-margin">자주 묻는 질문 - 전체</h2>

                    <!--table-->
                    <div class="row">
                        <div class="col-xs-12 less-padding">
                            <div class="box">
                                <div class="box-header">
                                    <p class="text-roboto-light">여기서 미리 보고 쓸 데 없는 질문은 하지 마라~~~ 이 말이야!</p>

                                    <!--<div class="box-tools">-->
                                    <!--<div class="input-group input-group-sm" style="width: 150px;">-->
                                    <!--<input type="text" name="table_search" class="form-control pull-right" placeholder="Search">-->
                                    <!--<div class="input-group-btn">-->
                                    <!--<button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>-->
                                    <!--</div>-->
                                    <!--</div>-->
                                    <!--</div>-->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body table-responsive no-padding">
                                    <table id="frequency-question-table" class="table table-hover table-header-gray">
                                        <tr>
                                            <th>구분</th>
                                            <th colspan="5">질문 내용</th>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#fq1">[배송일정] 휴일에 상품을 받을 수 있나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#fq2">[배송일정] 주문한 상품의 배송조회가 안됩니다.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[분리배송] 여러 상품을 한 번에 주문했는데, 왜 배송이 따로따로 되는건가요?
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송] 상품을 이미 받았는데 발송되었다는 문자메시지가 왔습니다. 왜 그런가요?
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송일정] 배송 날짜와 시간을 지정할 수 있나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송완료미수령] 주문한 상품을 받지 못했는데 배송완료로 확인됩니다.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송일정] 주문한 상품의 배송상태가 계속 상품준비중으로 표시됩니다.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[상품파손] 배송 받은 상품이 파손되었을 경우 어떻게 해야 하나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송일정] 배송중인 상품의 위치를 알고 싶어요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송일정] 주문한 상품은 언제 배송되나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송지] 주문 후 결제까지 완료했는데 배송지를 변경하고 싶어요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송일정] 운송장 번호로 배송조회를 했는데 배송정보가 없다고 나와요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[해외 수령] 주문한 상품을 해외로 배송할 수 있나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송비] 부재중으로 상품이 반송된 경우, 배송비는 누가 부담하나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[주소 검색] '관련지번'이 무엇인가요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[주소 검색] 신축 건물로 이사를 했는데 주소가 검색되지 않아요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[배송] 주문한 상품과 다른 상품이 배송되었어요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#orderDetail">[상품분실] 택배사에서 상품을 분실했다고 합니다. 어떻게 해야 하나요?</td>
                                        </tr>
                                    </table>
                                    <div class="btn btn-wrap col-xs-12" id="show-more-btn">더보기</div>

                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>
                    <!--table ends-->
                </section>
                <div class="maya-small-padding"></div>






                <!--modal order detail-->
                <div class="modal fade" id="fq1" tabindex="-1" role="dialog" aria-labelledby="fq1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">상품을 못 받았는데 배송 완료래</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">자~ 이렇게 해보라 이 말이야</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    만약 배송을 요청한 장소에 상품이 없다면 다음을 먼저 확인해 주십시오<br>
                                                    1) 로켓 배송의 경우, 문자 혹은 [마이쿠팡 > 주문목록/배송조회] > [배송조회]에서 사진 확인<br>
                                                    2) 대리 수령 가능 장소(경비실, 이웃, 주변 편의점 등) 확인
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 로켓배송 상품을 받지 못한 경우<br>
                                                    - [마이쿠팡 > 고객센터] > 상담하기
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 판매자 배송 상품을 받지 못한 경우<br>
                                                    [마이쿠팡 > 주문목록/배송조회]<br>
                                                    - [택배기사에게 전화하기] 선택<br>
                                                    - [판매자에게 문의하기<br>
                                                    - [배송조회] > 택배사 연락처로 문의<br>
                                                    ※ 택배기사 연락처는 배송완료 직후까지만 확인 가능합니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="modal fade" id="fq2" tabindex="-1" role="dialog" aria-labelledby="fq2">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">상품을 못 받았는데 배송 완료래</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">상품이 파손되어 배송된 경우 교환 및 반품을 신청하실 수 있습니다.</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    단, 교환의 경우 구매상품과 동일한 상품만 교환이 가능합니다.<br>
                                                    색상 및 사이즈 변경의 경우에는 반품접수 후 재구매 부탁드립니다.<br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 로켓배송 상품을 받지 못한 경우<br>
                                                    - [마이쿠팡 > 고객센터] > 상담하기
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 판매자 배송 상품을 받지 못한 경우<br>
                                                    [마이쿠팡 > 주문목록/배송조회]<br>
                                                    - [택배기사에게 전화하기] 선택<br>
                                                    - [판매자에게 문의하기<br>
                                                    - [배송조회] > 택배사 연락처로 문의<br>
                                                    ※ 택배기사 연락처는 배송완료 직후까지만 확인 가능합니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>





        </div>
    </div>	
	
	
</body>
</html>