<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        

</head>
<body>
	<%@ include file="../1_common/menubar.jsp" %>

    <div class="container-fluid" style="padding-bottom: 50px; padding-top: 20px;">
        <div class="row">
            <div class="col-md-2">
                <ul class="nav nav-pills nav-stacked left-side-nav-stacked">
                    <li role="presentation" id="center-logo"><p>고객센터</p></li>
                    <li class="notice" role="presentation"><a href="notice.html">공지사항</a></li>
                    <li role="presentation"><a href="goToFrequencyQuestion1All.do">자주 묻는 질문</a></li>
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
                        <li><a href="goToFrequencyQuestion1All.do">전체</a></li>
                        <li><a href="goToFrequencyQuestion2Delivery.do">배송문의</a> </li>
                        <li><a href="frequency-question-3-return.html">반품/교환/환불</a></li>
                        <li><a href="frequency-question-4-order-and-payment.html">주문/결제</a></li>
                        <li><a href="frequency-question-5-member.html">회원서비스</a></li>
                        <li><a href="frequency-question-6-reward.html">보상제도</a></li>
                        <li><a href="frequency-question-7-other.html">기타</a></li>
                    </ul>
                </div>
                <!--frequency-question-menu end 자주 묻는 질문 nav 끝-->

                <section class="edit-channel-form">
                    <h2 class="title less-margin">자주 묻는 질문 - 배송문의</h2>

                    <!--table-->
                    <div class="row">
                        <div class="col-xs-12 less-padding">
                            <div class="box">
                                <div class="box-header">
                                    <p class="text-roboto-light">기다릴 줄 아는 미학을 느껴보라~~~ 이 말이야!</p>

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
                                                data-target="#delivery-fq1">[배송일정] 휴일에 상품을 받을 수 있나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq2">[배송일정] 주문한 상품의 배송조회가 안됩니다.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq3">[분리배송] 여러 상품을 한 번에 주문했는데, 왜 배송이 따로따로 되는건가요?
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq4">[배송] 상품을 이미 받았는데 발송되었다는 문자메시지가 왔습니다. 왜 그런가요?
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq5">[배송일정] 배송 날짜와 시간을 지정할 수 있나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq6">[배송완료미수령] 주문한 상품을 받지 못했는데 배송완료로 확인됩니다.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq7">[배송일정] 주문한 상품의 배송상태가 계속 상품준비중으로 표시됩니다.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq8">[상품파손] 배송 받은 상품이 파손되었을 경우 어떻게 해야 하나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq9">[배송일정] 배송중인 상품의 위치를 알고 싶어요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq10">[배송일정] 주문한 상품은 언제 배송되나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq11">[배송지] 주문 후 결제까지 완료했는데 배송지를 변경하고 싶어요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq12">[배송일정] 운송장 번호로 배송조회를 했는데 배송정보가 없다고 나와요.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq13">[해외 수령] 주문한 상품을 해외로 배송할 수 있나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq14">[배송비] 부재중으로 상품이 반송된 경우, 배송비는 누가 부담하나요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq15">[주소 검색] '관련지번'이 무엇인가요?</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq16">[주소 검색] 신축 건물로 이사를 했는데 주소가 검색되지 않아요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq17">[배송] 주문한 상품과 다른 상품이 배송되었어요.</td>
                                        </tr>
                                        <tr>
                                            <td>Q</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal"
                                                data-target="#delivery-fq18">[상품분실] 택배사에서 상품을 분실했다고 합니다. 어떻게 해야 하나요?
                                            </td>
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
                <div class="modal fade" id="delivery-fq1" tabindex="-1" role="dialog" aria-labelledby="delivery-fq1">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송일정] 휴일에 상품을 받을 수 있나요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">택배사별로 다릅니다.</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    일반 택배사는 휴일(일요일, 공휴일)에는 운영하지 않습니다.<br>
                                                    다만, 각 택배사별로 혹은 명절기간에는 운영방침이 다를 수 있으니 정확한 내용은 택배사 연락처로 문의 해 주시기 바랍니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="col-sm-12">
                                        <table class="table table-hover text-center">
                                            <tr>
                                                <th class="text-center">택배사</th>
                                                <th class="text-center">번호</th>
                                            </tr>
                                            <tr>
                                                <td>CJ대한통운</td>
                                                <td>1588-1255</td>
                                            </tr>
                                            <tr>
                                                <td>한진택배</td>
                                                <td>1588-0011</td>
                                            </tr>
                                            <tr>
                                                <td>로젠택배</td>
                                                <td>1588-9988</td>
                                            </tr>
                                            <tr>
                                                <td>우체국택배</td>
                                                <td>1588-1300</td>
                                            </tr>
                                            <tr>
                                                <td>대신택배</td>
                                                <td>043-222-4582</td>
                                            </tr>
                                            <tr>
                                                <td>경동택배</td>
                                                <td>080-873-2178</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>




                <div class="modal fade" id="delivery-fq2" tabindex="-1" role="dialog" aria-labelledby="delivery-fq2">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송일정] 주문한 상품의 배송조회가 안됩니다.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">정확한 배송일정 및 현황은 판매자에게 문의 바랍니다.</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <b>■ 판매자에게 문의하기</b><br>
                                                    [마이메뉴 > 주문목록/배송조회] 접속
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="modal fade" id="delivery-fq3" tabindex="-1" role="dialog" aria-labelledby="delivery-fq3">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[분리배송] 여러 상품을 한 번에 주문했는데, 왜 배송이 따로따로 되는건가요?
                                </h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    배송은 상품에 따라 다른 물류센터 등 각각 다른 출발지에서 발송하고 있습니다. <br>
                                                    이런 이유로 함께 주문하신 경우라도 따로 배송될 수 있으며 택배사 사정에 따라 도착일자가 다를 수 있습니다.
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq4" tabindex="-1" role="dialog" aria-labelledby="delivery-fq4">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송] 상품을 이미 받았는데 발송되었다는 문자메시지가 왔습니다. 왜 그런가요?
                                </h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    운송장번호 등의 배송정보를 전산에 입력하면 상품발송안내 문자메시지가 발송됩니다.<br>
                                                    상품이 발송 시 운송장번호를 바로 입력하지 않고 1~2일 뒤에 입력한 경우가 일부 있을 수 있으며 이 경우 배송 안내
                                                    문자가 늦게 발송될 수 있습니다.<br>
                                                    <br>
                                                    ※ 상품 수령 후에 발송안내 문자메시지를 받으신다고 해서 주문하신 상품이 이중으로 발송 되지 않습니다.
                                                </th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq5" tabindex="-1" role="dialog" aria-labelledby="delivery-fq5">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송일정] 배송 날짜와 시간을 지정할 수 있나요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    배송날짜 및 방문 시간 지정은 가능하지 않습니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    상품의 배송은 재고 및 배송 준비 기간, 배송 경로와 택배사의 배송물량에 따라 방문 시간대가 다르기 때문입니다.<br>
                                                    상세페이지의 배송일정을 참고해 주십시오.<br>
                                                    <br>
                                                    ■ 배송현황 확인 방법<br>
                                                    [마이메뉴 > 주문목록.배송조회] > 배송조회
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq6" tabindex="-1" role="dialog" aria-labelledby="delivery-fq6">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송완료미수령] 주문한 상품을 받지 못했는데 배송완료로 확인됩니다.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    만약 배송을 요청한 장소에 상품이 없다면 다음을 먼저 확인해 주십시오<br>
                                                    대리 수령 가능 장소(경비실, 이웃, 주변 편의점 등) 확인
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 판매자 배송 상품을 받지 못한 경우<br>
                                                    [마이메뉴 > 주문목록/배송조회]<br>
                                                    &nbsp;&nbsp;- [택배기사에게 전화하기] 선택<br>
                                                    &nbsp;&nbsp;- [판매자에게 문의하기]<br>
                                                    &nbsp;&nbsp;- [배송조회] > 택배사 연락처로 문의<br>
                                                    <br>
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

                <div class="modal fade" id="delivery-fq7" tabindex="-1" role="dialog" aria-labelledby="delivery-fq7">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송일정] 주문한 상품의 배송상태가 계속 상품준비중으로 표시됩니다.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    '상품준비중' 단계는 판매자가 고객님의 주문을 확인하여 상품을 포장, 배송을 준비하는 상태입니다.<br>
                                                    갑작스러운 주문량 증가 등 예상치 못한 상황이 발생할 경우 '상품준비중' 단계가 길어질 수 있습니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    '상품 준비중' 단계가 길어져 취소를 원할 경우 판매자에게 연락 부탁드립니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq8" tabindex="-1" role="dialog" aria-labelledby="delivery-fq8">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[상품파손] 배송 받은 상품이 파손되었을 경우 어떻게 해야 하나요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    상품이 파손되어 배송된 경우 교환 및 반품을 신청하실 수 있습니다.<br>
                                                    <br>
                                                    단, 교환의 경우 구매상품과 동일한 상품만 교환이 가능합니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 교환/반품 가능 기간<br>
                                                    1. 구매자 단순변심의 경우 배송되는 제품의 특성(식품)상 교환/반품이 불가합니다.<br>
                                                    <br>
                                                    2. 표시, 광고 상이, 물품하자의 경우<br>
                                                    &nbsp;&nbsp;: 물품 수령일부터 3일 내, 또는 그 사실을 알 거나 알 수 있었던 날부터 7일 이내<br>
                                                    <br>
                                                    ■ 반품하기<br>
                                                    1. [마이메뉴 > 주문목록.배송조회]에서 [반품신청] 누름 > 반품 수량/반품사유 선택<br>
                                                    2. 반품 상품의 택배 발송 여부 선택<br>
                                                    3. 판매자에게 상품 도착 후 승인 > 반품완료<br>
                                                    <br>
                                                    ※ 반품비용을 제외한 환불예정금액은 반품접수 화면에서 확인 가능합니다.<br>
                                                    <br>
                                                    ■ 교환하기<br>
                                                    1. [마이메뉴 > 주문목록.배송조회]에서 [교환신청] 클릭 > 교환 수량/사유 선택<br>
                                                    2. 회수지/교환상품 수령지 배송정보 확인 및 변경<br>
                                                    3. 판매자로 상품 도착 > 교환상품 발송
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq9" tabindex="-1" role="dialog" aria-labelledby="delivery-fq9">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송일정] 배송중인 상품의 위치를 알고 싶어요.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    마이메뉴에서 쉽게 확인 가능합니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 배송현황 확인하기<br>
                                                    [마이메뉴 > 주문목록.배송조회] > 배송조회
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq10" tabindex="-1" role="dialog" aria-labelledby="delivery-fq10">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송일정] 주문한 상품은 언제 배송되나요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    배송예정일은 배송지에 따라 차이가 있을 수 있습니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    또한 도서산간 지역 배송 혹은 천재지변으로 인해 배송일정이 변동될 수 있습니다.<br>
                                                    <br>
                                                    ■ 배송예정일 확인하기 (주문 후)<br>
                                                    [마이메뉴 > 주문목록.배송조회] 에서 확인
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq11" tabindex="-1" role="dialog" aria-labelledby="delivery-fq11">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송지] 주문 후 결제까지 완료했는데 배송지를 변경하고 싶어요.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    주문 후 이제 막 '결제완료'하셨다면, [마이메뉴]에서 배송지 변경이 가능합니다.<br>
                                                    단, 한 개의 주문번호에 하나의 배송지만 설정할 수 있습니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 배송지 변경하기<br>
                                                    1. 마이메뉴 > 주문목록/배송조회 > 주문상세보기<br>
                                                    2. 배송지변경 선택
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq12" tabindex="-1" role="dialog" aria-labelledby="delivery-fq12">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송일정] 운송장 번호로 배송조회를 했는데 배송정보가 없다고 나와요.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    주문 당일 상품이 발송되는 경우
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    보통 당일 저녁에 배송업체(택배사)로 상품이 인계됩니다.<br>
                                                    상품이 배송업체로 전달된 후 배송업체의 시스템에 운송장번호가 등록되므로 그 다음 날부터 배송조회가 가능합니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq13" tabindex="-1" role="dialog" aria-labelledby="delivery-fq13">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[해외 수령] 주문한 상품을 해외로 배송할 수 있나요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    현재 해외 주소지로의 해외배송 서비스는 지원하지 않습니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    국내 배송지로의 상품 배송만 가능합니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq14" tabindex="-1" role="dialog" aria-labelledby="delivery-fq14">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송비] 부재중으로 상품이 반송된 경우, 배송비는 누가 부담하나요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    고객 부재로 반송되거나 연락처를 잘못 기재하여 반송된 경우
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    상품의 배송비는 고객님께서 부담하셔야 합니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq15" tabindex="-1" role="dialog" aria-labelledby="delivery-fq15">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[주소 검색] '관련지번'이 무엇인가요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    한 개의 건물이 여러 토지에 걸쳐 건축이 되는 경우에는 건축물대장상 기록된 지번을 '대표지번',
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    나머지 지번을 '관련지번'이라고 합니다.
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq16" tabindex="-1" role="dialog" aria-labelledby="delivery-fq16">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[주소 검색] 신축 건물로 이사를 했는데 주소가 검색되지 않아요.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    신축건물이 관할 시ㆍ군ㆍ구청 또는 [도로명주소 안내시스템]에 주소등록이 되어있는지 확인하여주시기 바랍니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    신축건물이 행정자치부에 주소가 등록되지 않은 경우 쿠팡에서도 검색이 되지 않을 수 있습니다.<br>
                                                    <br>
                                                    신축건물에 행정상 도로명주소가 부여되지 않았다면 관할 시ㆍ군ㆍ구청 또는 [도로명주소 안내시스템]내 도움센터에 주소 등록을
                                                    요청하시기 바랍니다.<br>
                                                    ※ 도로명주소 안내시스템 www.juso.go.kr
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq17" tabindex="-1" role="dialog" aria-labelledby="delivery-fq17">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[배송] 주문한 상품과 다른 상품이 배송되었어요.</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    받으신 상품이 주문한 상품과 다른 경우 마이메뉴에서 교환 및 반품신청이 가능합니다.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ■ 교환하기<br>
                                                    1. 마이메뉴 > 주문목록.배송조회에서 [교환신청] 클릭 > 교환 수량/사유 선택<br>
                                                    2. 회수지/교환상품 수령지 배송정보 확인 및 변경<br>
                                                    3. 판매자에게 상품 도착 후 교환상품 발송<br>
                                                    <br>
                                                    ※ 상품문제로 인한 교환이 아닌 경우 교환비용이 발생하며 고객님이 부담하게 됩니다. <br>
                                                    <br>
                                                    ■ 반품하기<br>
                                                    1. [마이메뉴 > 주문목록.배송조회]에서 [반품신청] 클릭 > 반품 수량/반품사유 선택<br>
                                                    2. 반품 상품의 택배 발송 여부 선택<br>
                                                    3. 판매자에게 상품 도착 후 승인 > 반품완료<br>
                                                    <br>
                                                    ※ 반품비용을 제외한 환불예정금액은 반품접수 화면에서 확인 가능합니다. <br>
                                                    <br>
                                                    ■ 교환/반품 가능 기간<br>
                                                    1. 구매자 단순변심의 경우 상품의 특성(식품)상 교환/반품이 불가합니다.<br>
                                                    2. 표시, 광고 상이, 물품하자(초기불량)<br>
                                                    &nbsp;&nbsp;- 물품을 수령한 날부터 3일 이내<br>
                                                    &nbsp;&nbsp;- 또는 그 사실을 알거나 알 수 있었던 날부터 7일 이내
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="delivery-fq18" tabindex="-1" role="dialog" aria-labelledby="delivery-fq18">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">[상품분실] 택배사에서 상품을 분실했다고 합니다. 어떻게 해야 하나요?</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">
                                                    분실된 상품의 판매자에게 문의해 주십시오.
                                                </th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    판매자와 계약한 택배사에게 확인 후 분실한 상품의 재배송 및 환불 처리가 가능합니다.<br>
                                                    <br>
                                                    ■ 판매자에게 문의하기 <br>
                                                    [마이메뉴 > 주문목록/배송조회] 접속<br>
                                                    &nbsp;&nbsp;- [판매자에게 문의하기] 클릭하여 문의<br>
                                                    &nbsp;&nbsp;- 상품 선택 > 배송/교환/반품 안내 > [판매자 정보란]에서 연락처로 문의
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