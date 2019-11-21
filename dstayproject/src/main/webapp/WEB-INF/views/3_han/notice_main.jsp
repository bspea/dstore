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
                                <c:forEach items="${ list }" var="nList">
                                <tr class="notice-line">
                                    <td class="notice-no">${ nList.noticeNo }</td>
                                    <td class="notice-class"><p class="p-purple">${ nList.noticeCategory }</p></td>
                                    <td class="notice-title"><a href="notice-detail.html">${ nList.noticeTitle }</a></td>
                                    <td class="notice-date">${ nList.writeDate }</td>
                                </tr>
                                </c:forEach>
                            </table>
                        </div>
                        <br>
                        <br>
                        <div id="pagination-div">
                        	<div id="pagination-nav">
                            	<nav>
                                	<ul class="pagination">
                                		<c:if test="${ pi.currentPage eq 1 }">
                                			<li>
                                				<span aria-hidden="true">&laquo;</span>
                                			</li>
                                		</c:if>
                                		<c:if test="${ pi.currentPage ne 1 }">
                                			<c:url value="noticeList.do" var="before">
                                				<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
		                                    	<li>
			                                    	<a href="" aria-label="Previous">
			                                        	<span aria-hidden="true">&laquo;</span>
			                                    	</a>
		                                    	</li>
		                                	</c:url>
	                                	</c:if>
	                                
	                                
		                                <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
		                                	<c:if test="${ p eq pi.currentPage }">
		                                		<li><span aria-hidden="true">${ p }</span></li>
		                                	</c:if>
		                                	
		                                	<c:if test="${ p ne pi.currentPage }">
		                                		<c:url value="noticeList.do" var="page">
		                                			<c:param name="currentPage" value="${ p }"/>
		                                		</c:url>
		                                		<li><a href="${ page }"><span>${ p }</span></a></li>
		                                	</c:if>
		                                </c:forEach>
                                    
                                    
	                                    <c:if test="${ pi.currentPage eq pi.maxPage }">
	                                    	<li>
	                                			<span aria-hidden="true">&raquo;</span>
	                                		</li>
	                                    </c:if>
	                                    <c:if test="${ pi.currentPage ne pi.maxPage }">
	                                    	<c:url value="noticeList.do" var="after">
	                                    		<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
	                                    	</c:url>
		                                    	<li>
				                                    <a href="${ after }" aria-label="Next">
				                                        <span aria-hidden="true">&raquo;</span>
				                                    </a>
		                                    	</li>
	                                    </c:if>
									</ul>
                            	</nav>
                            </div>
                        </div>
                        <button class="btn btn-default" onclick="location.href='noticeInsertForm.do';">공지사항 작성</button>
                

                    </div>
                </div>
            </div>





        </div>
    </div>
</body>
</html>