<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DStay 공지사항 - 상세보기</title>
	<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>


    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/top-menu.css?ver=1" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/mainBanner.css?ver=4" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/specialCategory.css" rel="stylesheet">

    
    <!-- 한도빈 Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/customer-center-main.css" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/frequency-question.css" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/notice-theme.css" rel="stylesheet">
    
    
    <style>
    	.notice-write-outer{
            width:95%;
            margin-left:auto;
            margin-right:auto;
        }
        #notice-area{
        	background:white;
        }
        
    </style>
</head>
<body>
	<jsp:include page="../1_common/menubar.jsp"/>
	
	<div class="container-fluid" id="notice-area" style="padding-bottom: 50px; padding-top: 20px;">
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

                <div style="border: 1px solid #E7EAEA; margin-top: 30px; padding: 15px;" class="hidden-xs">
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
                        <div class="notice-write-outer">
                            <br>

                          
							<label for="notice-title" class="col-sm-1" style="text-align:right;">제목</label>
                                    
							<div class="col-sm-6">
							    ${ n.noticeTitle }
							</div>
							
							<label for="notice-date" class="col-sm-1" style="text-align:right;">게시일</label>
							<div class="col-sm-2">
							    ${ n.writeDate }
							</div>
							
							<div class="row"></div>
							<br>
							
							
							<div class="col-sm-11">
							    ${ n.noticeContents }
							</div>
							
							<div class="row"></div>
							<br>
							<br>
							<hr>
							<table id="notice-list-table" align="left">
                                <tr>
                                    <td><div style="background:red; padding:3px; color:white; font-size:11px; text-align:center; font-weight:bold; margin:0 12px 12px 0;">이전글</div></td>
                                    <td></td>
                                    	
                                    	<c:choose>
                                    		<c:when test="${ empty prevN }">
                                    			<td><div style="margin-bottom:12px; color:rgb(150, 150, 150); font-size:12px;">이전 글이 없습니다.</div></td>
                                    		</c:when>
                                    		<c:otherwise>
                                    			<td><a href="noticeDetail.do?noticeNo=${ prevN.noticeNo }">${ prevN.noticeTitle }</a></td>
                                    		</c:otherwise>
                                    	</c:choose>
                                    	
                                    	
                                    
                                    <td rowspan="2">
                                        <div id="back">
                                            <a href="#" onclick="history.back(); return false;">목록</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><div style="background:blue; padding:3px; color:white; font-size:11px; text-align:center; font-weight:bold; margin:0 12px 12px 0;">다음글</div></td>
                                    <td></td>
                                    
                                    	<c:choose>
                                    		<c:when test="${ empty nextN }">
                                    			<td><div style="margin-bottom:12px; color:rgb(150, 150, 150); font-size:12px;">다음 글이 없습니다.</div></td>
                                    		</c:when>
                                    		<c:otherwise>
                                    			<td><a href="noticeDetail.do?noticeNo=${ nextN.noticeNo }">${ nextN.noticeTitle }</a></td>
                                    		</c:otherwise>
                                    	</c:choose>
                                    
                                    <td></td>
                                </tr>
                            </table>
                        </div>

                    </div>

                </div>





            </div>





        </div>
    </div>
    
    
    

</body>
</html>