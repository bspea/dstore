<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D_Stay 고객센터 - 메인</title>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>

    <!-- Boot Strap -->
    <link href="${ pageContext.request.contextPath }/resources/css/1_common/bootstrap.min.css" rel="stylesheet">

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
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
</head>
<body>
	<jsp:include page="../1_common/menubar.jsp"/>
	
	<div class="container-fluid" id="customer-container" style="padding-bottom: 50px; padding-top: 20px;">
        <div class="row">
            <div class="col-md-2">
                <ul class="nav nav-pills nav-stacked left-side-nav-stacked">
                    <li role="presentation" id="center-logo"><p>고객센터</p></li>
                    <li class="notice" role="presentation"><a href="noticeList.do">공지사항</a></li>
                    <li role="presentation"><a href="fqaList-all.do">자주 묻는 질문</a></li>
                    <li role="presentation"><a href="goToSuggestion.do">제안하기</a></li>
                    <li role="presentation"><a href="goToMyPage.do">나의 정보 조회</a></li>
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
                <div class="row">
                    <div id="customer-center-main-banner" class="carousel slide" data-ride="carousel" data-interval="3000">

                        <ol class="carousel-indicators">
                            <li data-target="#customer-center-main-banner" data-slide-to="0" class="active"></li>
                            <li data-target="#customer-center-main-banner" data-slide-to="1"></li>
                            <li data-target="#customer-center-main-banner" data-slide-to="2"></li>
                        </ol>

                        <div class="carousel-inner" role="listbox">
                            <div class="item active img-area">
                                <img class="d-block w-100" id="image1" src="https://cslguplus.co.kr/content/images/main_visual_04.png">
                                <div id="caption1" class="carousel-caption">
                                    <h4>d-stay 철칙 첫 번째!</h4>
                                    <p>진정성으로 대하겠습니다!</p>
                                </div>
                            </div>
                            <div class="item img-area">
                                <img class="d-block w-100" id="image2" src="https://cslguplus.co.kr/content/images/main_visual_02.png">
                                <div id="caption2" class="carousel-caption">
                                    <h4>d-stay 철칙 두 번째!</h4>
                                    <p>세상을 이롭게하는 제품만<br>제공하겠습니다!</p>
                                </div>
                            </div>
                            <div class="item img-area">
                                <img class="d-block w-100" id="image3" src="https://cslguplus.co.kr/content/images/main_visual_03.png?v=2" alt="">
                                <div id="caption3" class="carousel-caption">
                                    <h4>d-stay 철칙 세 번째!</h4>
                                    <p>고객과의 약속은<br>반드시 지키겠습니다!</p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-md-10 service-go">
                        <h4 style="padding-bottom:10px;">서비스 바로가기</h4>
                        <ul class="list-inline">
                            <li class="text-center">
                                <a href="#">
                                    <img class="icon" src="${ pageContext.request.contextPath }/resources/images/3_han/file-list-3-line.png"><br>
                                    <span>구매내역 조회</span>
                                </a>
                            </li>
                            <li class="text-center">
                                <a href="#">
                                    <img class="icon" src="${ pageContext.request.contextPath }/resources/images/3_han/truck-fill.png"><br>
                                    <span>배송현황 조회</span>
                                </a>
                            </li>
                            <li class="text-center">
                                <a href="#">
                                    <img class="icon" src="${ pageContext.request.contextPath }/resources/images/3_han/currency-line.png"><br>
                                    <span>취소/환불내역 조회</span>
                                </a>
                            </li>
                            <li class="text-center">
                                <a href="#">
                                    <img class="icon" src="${ pageContext.request.contextPath }/resources/images/3_han/user-5-line.png"><br>
                                    <span>개인정보 변경</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-md-10 notice-go">
                        <h4 style="padding-bottom:10px;">최신 공지사항</h4>
                        <table class="table text-center">
                            <tr>
                                <td width="15%">번호</td>
                                <td width="15%">분류</td>
                                <td width="70%">제목</td>
                            </tr>
                            <tr>
                                <td class="notice-no">003</td>
                                <td class="notice-class"><p class="p-purple">일반</p></td>
                                <td class="notice-title"><a href="notice-detail.html">[공지] 개인정보처리방침 개정 안내</a></td>
                                
                            </tr>
                            <tr>
                                <td class="notice-no">002</td>
                                <td class="notice-class"><p class="p-purple">당첨자 발표</p></td>
                                <td class="notice-title"><a href="notice-detail.html">[공지|당첨자발표] 2019년 11월 적립금 당첨자 발표</a></td>
                                
                            </tr>
                            <tr>
                                <td class="notice-no">001</td>
                                <td class="notice-class"><p class="p-purple">지식재산권</p></td>
                                <td class="notice-title"><a href="notice-detail.html">[공지] 지식재산권 보호 센터(IPS) 개편 안내</a></td>
                                
                            </tr>
                        </table>
                    </div>
                </div>
                


            </div>





        </div>
    </div>
	
</body>
</html>