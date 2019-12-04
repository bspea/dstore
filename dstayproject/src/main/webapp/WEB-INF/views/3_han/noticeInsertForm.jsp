<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D_Stay 고객센터 - 공지사항 작성</title>

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
                    <li role="presentation" id="center-logo"><p onclick="location.href='customerCenter.do';">고객센터</p></li>                    
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
                            <h3>공지사항 작성</h3><br>

                            <form action="noticeInsert.do" method="post" name="uploadForm" id="uploadForm" enctype="multipart/form-data">

                                <div class="form-group">
                                	
                                	<label class="col-sm-1" style="text-align:right;">유형</label>
                                	<div class="col-sm-2">
                                		<select class="form-control" name="noticeCategory" id="noticeCategory">
                                			<option value="no" hidden>분류 선택</option>
                                			<option value="general">일반</option>
                                			<option value="service">서비스</option>
                                			<option value="winning">당첨자 발표</option>
                                		</select>
                                	</div>
                                	
                                	<div class="row"></div>
                                    <br>
                                
                                    <label for="notice-title" class="col-sm-1" style="text-align:right;">제목</label>
                                    
                                    <div class="col-sm-10">
                                        <input type="text" id="notice-title" class="form-control" name="noticeTitle">
                                    </div>

                                    <div class="row"></div>
                                    <br>

                                    <label for="noticeContents" class="col-sm-1" style="text-align:right;">내용</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="noticeContents" id="noticeContents" cols="30" rows="15"></textarea>
                                        
                                        <script>
											var ckeditor_config = {
											  resize_enaleb : false,
											  enterMode : CKEDITOR.ENTER_BR,
											  shiftEnterMode : CKEDITOR.ENTER_P,
											  filebrowserUploadUrl : "noticeFilesUpload.do"
											};
											
											CKEDITOR.replace("noticeContents", ckeditor_config);
										</script>
                                    </div>

                                    <div class="row"></div>
                                    <br>

                                    <!-- <label for="suggestion-attachments" class="col-sm-1" style="text-align:right;">첨부</label>
                                    <div id="fileUpload" class="col-sm-10 dragAndDropDiv">
                                       	 파일을 여기에 끌어다 놔주세요
                                    </div> -->
                                </div>
                                <br>
                                <p id="btn-group" style="width:300px;margin-left:auto; margin-right:auto;">
                                    <button type="submit" class="btn btn-default">등록하기</button>
                                    <button type="button" class="btn btn-default" onclick="location.href='noticeList.do';">목록으로</button>
                                </p>

                            </form>

                   

                        </div>

                    </div>

                </div>





            </div>





        </div>
    </div>
    
 

</body>
</html>