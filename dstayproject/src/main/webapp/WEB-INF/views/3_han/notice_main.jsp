<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D_Stay 고객센터 - 공지사항</title>

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
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/notice-theme.css" rel="stylesheet">
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<jsp:include page="../1_common/menubar.jsp"/>

	<div class="container-fluid" id="notice-container" style="padding-bottom: 50px; padding-top: 20px;">
        <div class="row">
            <div class="col-md-2">
                <ul class="nav nav-pills nav-stacked left-side-nav-stacked">
                    <li role="presentation" id="center-logo"><p>고객센터</p></li>                    
                    <li class="notice" role="presentation"><a href="noticeList.do">공지사항</a></li>
                    <li role="presentation"><a href="fqaList.do">자주 묻는 질문</a></li>
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
                <div class="row">
                    <div class="col-md-12">
                        <div class="notice-table-outer">
                            <h3>공지사항</h3><br>
                            <table class="notice-table" class="table table-hover">
                                <tr>
                                    <th width="10%" style="font-weight:normal">번호</th>
                                    <th width="10%" style="font-weight:normal">분류</th>
                                    <th width="65%" style="font-weight:normal">제목</th>
                                    <th width="15%" style="font-weight:normal">등록일</th>
                                </tr>
                                <tr class="notice-line">
                                    <td class="notice-no">003</td>
                                    <td class="notice-class"><p class="p-purple">일반</p></td>
                                    <td class="notice-title"><a href="notice-detail.html">[공지] 개인정보처리방침 개정 안내</a></td>
                                    <td class="notice-date">2019.11.11</td>
                                </tr>
                                <tr class="notice-line">
                                    <td class="notice-no">002</td>
                                    <td class="notice-class"><p class="p-purple">당첨자 발표</p></td>
                                    <td class="notice-title"><a href="notice-detail.html">[공지|당첨자발표] 2019년 11월 적립금 당첨자 발표</a></td>
                                    <td class="notice-date">2019.11.09</td>
                                </tr>
                                <tr class="notice-line">
                                    <td class="notice-no">001</td>
                                    <td class="notice-class"><p class="p-purple">지식재산권</p></td>
                                    <td class="notice-title"><a href="notice-detail.html">[공지] 지식재산권 보호 센터(IPS) 개편 안내</a></td>
                                    <td class="notice-date">2019.11.07</td>
                                </tr>

                            </table>
                        </div>
                        <br>
                        <br>
                        <div id="pagination-div">
                            <nav>
                                <ul class="pagination">
                                    <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                    </li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                

                    </div>
                </div>
            </div>





        </div>
    </div>
</body>
</html>