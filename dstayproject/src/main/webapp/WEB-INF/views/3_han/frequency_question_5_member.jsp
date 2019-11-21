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
        

</head>
<body>
	<%@ include file="../1_common/menubar.jsp" %>
	
    <div class="container-fluid" style="padding-bottom: 50px; padding-top: 20px;">
        <div class="row">
            <div class="col-md-2">
                <ul class="nav nav-pills nav-stacked left-side-nav-stacked">
                    <li role="presentation" id="center-logo"><p>고객센터</p></li>
                    <li class="notice" role="presentation"><a href="noticeList.do">공지사항</a></li>
                    <li role="presentation"><a href="fqaList-all.do">자주 묻는 질문</a></li>
                    <li role="presentation"><a href="suggestion.do">제안하기</a></li>
                    <li role="presentation"><a href="inquireMyInfo.do">나의 정보 조회</a></li>
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
                        <li><a href="fqaList-all.do">전체</a></li>
                        <li><a href="fqaList-delivery.do">배송문의</a> </li>
                        <li><a href="fqaList-refund.do">반품/교환/환불</a></li>
                        <li><a href="fqaList-order.do">주문/결제</a></li>
                        <li><a href="fqaList-member.do">회원서비스</a></li>
                        <li><a href="fqaList-reward.do">보상제도</a></li>
                        <li><a href="fqaList-other.do">기타</a></li>
                    </ul>
                </div>
                <!--frequency-question-menu end 자주 묻는 nav 질문 끝-->

                <section class="edit-channel-form">
                    <h2 class="title less-margin">자주 묻는 질문 - 회원서비스</h2>

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
                                            <th width="5%" class="text-center">구분</th>
                                            <th width="15%" class="text-center">대분류</th>
                                            <th width="15%" class="text-center">중소분류</th>
                                            <th colspan="5">질문 내용</th>
                                        </tr>
                                        <c:forEach items="${ list }" var="fqaList">
                                        <tr>
                                            <td class="text-center">Q</td>
                                            <td class="text-center">${ fqaList.category }</td>
                                            <td class="text-center">${ fqaList.division }</td>
                                            <td class="frequency-question" colspan="5" data-toggle="modal" data-target="#fq${ fqaList.fqaNo }">${ fqaList.QTitle }</td>
                                        </tr>
                                        </c:forEach>
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
                <c:forEach items="${ list }" var="fqaList">
                <div class="modal fade" id="fq${ fqaList.fqaNo }" tabindex="-1" role="dialog" aria-labelledby="fq${ fqaList.fqaNo }">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">${ fqaList.QTitle }</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover">
                                            <tr>
                                                <th colspan="2">${ fqaList.ATitle }</th>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    ${ fqaList.AContents }
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>


                


            </div>





        </div>
    </div>	
	
	
</body>
</html>