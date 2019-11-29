<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DSTAY - 제안하기</title>

	<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>


    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/top-menu.css?ver=1" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/mainBanner.css?ver=4" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/specialCategory.css" rel="stylesheet">

    
    <!-- 한도빈 Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/customer-center-main.css" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/frequency-question.css" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/resources/css/3_han/suggestion-theme.css" rel="stylesheet">
    
    <style>
    	#suggest_confirm_layer{
    		background:white;
    		display:float;
    		z-index:1000;
    		position:absolute;
    		width:400px;
    		padding:10px;
    		top:300px;
    		left:300px;
    		border:1px solid lightgray;
    	}
    	
    	#outBtn{
    		color:orange;
    		border-color:orange;
    	}
    	
    	#okBtn{
    		color:white;
    		background-color:orange;
    		border-color:orange;
    	}
        
    </style>
</head>
<body>
	<jsp:include page="../1_common/menubar.jsp"/>
	
	<div class="container-fluid" id="suggestion-area" style="padding-bottom: 50px; padding-top: 20px;">
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
                        <div class="suggestion-write-outer">
                            <h3>제안사항 작성</h3><br>

                            <form action="suggestionInsert.do" method="post" name="suggestionForm" id="suggestionForm" onsubmit="return validate()" enctype="multipart/form-data">

                                <div class="form-group">
                                	
                                	<label class="col-sm-1" style="text-align:right;">유형</label>
                                	<div class="col-sm-2">
                                		<select class="form-control" name="suggestionCategory" onChange="showSub(this.options[this.selectedIndex].value)">
                                			<option value="no" hidden>대분류 선택</option>
                                			<option value="suggestion">제안</option>
                                			<option value="error">장애/오류</option>
                                		</select>
                                	</div>
                                	
                                	<div class="col-sm-3" id="suggestionDivision1">
                                		<select class="form-control" name="suggestionDivision1" style="display:none;">
                                			<option value="no" hidden>소분류 선택</option>
                                			<option value="sales">상품 판매 제안</option>
                                			<option value="event">이벤트/혜택 제안</option>
                                			<option value="service">서비스 제안</option>
                                			<option value="system">시스템 제안</option>
                                			<option value="compliment">서비스 칭찬</option>
                                			<option value="other">기타 제안</option>
                                		</select>
                                	</div>
                                	
                                	<div class="col-sm-3" id="suggestionDivision2">
                                		<select class="form-control" name="suggestionDivision2" style="display:none;">
                                			<option value="no" hidden>소분류 선택</option>
                                			<option value="error">시스템 장애(PC/Mobile)</option>
                                			<option value="mark">표기 오류</option>
                                		</select>
                                	</div>
                                	
                                	<div class="row"></div>
                                	<br>
                                	
                                    <label for="suggestion-title" class="col-sm-1" style="text-align:right;">제목</label>
                                    
                                    <div class="col-sm-10">
                                        <input type="text" id="suggestion-title" class="form-control" name="suggestionTitle">
                                    </div>

                                    <div class="row"></div>
                                    <br>

                                    <label for="suggestionContents" class="col-sm-1" style="text-align:right;">내용</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="suggestionContents" id="suggestionContents" cols="30" rows="15"></textarea>
                                        
                                        <script>
											var ckeditor_config = {
											  resize_enaleb : false,
											  height:450,
											  enterMode : CKEDITOR.ENTER_BR,
											  shiftEnterMode : CKEDITOR.ENTER_P,
											  filebrowserUploadUrl : "suggestionFilesUpload.do"
											};
											
											CKEDITOR.replace("suggestionContents", ckeditor_config);
										</script>
                                    </div>
                                    
                                    <div id="suggest_confirm_layer" align="center">
                                    	<div>
                                    		<p style="font-size:10px; margin-bottom:0px; color:orange;">배송/환불/교환 접수는</p>
                                    		<p style="font-size:10px; color:orange;">마이페이지에서 가능하며</p>
                                    		<p style="font-size:12px;">상세 문의는 1:1 상담톡을 이용하시기 바랍니다.</p>
                                    	</div>
                                    	<div>
                                    		<button class="btn btn-default" id="outBtn" type="button" onclick="location.replace('customerCenter.do');">나가기</button>
                                    		<button class="btn btn-default" id="okBtn" type="button">확인</button>
                                    	</div>
                                    </div>

                                    <div class="row"></div>
                                    <br>

                                   
                                </div>
                                <br>
                                <p id="btn-group" style="width:300px;margin-left:auto; margin-right:auto;">
                                    <button type="submit" class="btn btn-default">등록하기</button>
                                    <button type="button" class="btn btn-default" onclick="location.replace('customerCenter.do');">나가기</button>
                                </p>

                            </form>

                   

                        </div>

                    </div>
                    
                    

                </div>





            </div>





        </div>
    </div>
	
	
	<script>
	
		$(function(){
			$('#okBtn').on("click", function(){
				$('#suggest_confirm_layer').hide();
			});
		});
		
		/* function popupSuggestion(){
			
			window.open("popupSuggestion.do", "a", "width=220, height=320, left=300, top=200");
		} */
		
		function showSub(obj) {
			f = document.forms.suggestionForm
			sCategory = f.suggestionCategory
			console.log(sCategory.value);
			
			if(obj == 'no'){
				f.suggestionDivision1.style.display="none";
				f.suggestionDivision2.style.display="none";
			}
			
			if(obj == 'suggestion') {
				f.suggestionDivision2.style.display="none";
				f.suggestionDivision1.style.display="block";
			}
			
			if(obj == 'error') {
				f.suggestionDivision1.style.display="none";
				f.suggestionDivision2.style.display="block";
			}
		}
		
		
		/* function validate(){
			
			console.log(document.forms.suggestionForm.suggestionCategory.value);
			console.log(document.forms.suggestionForm.suggestionDivision1.value);
			console.log(document.forms.suggestionForm.suggestionDivision2.value);
			
			if(document.forms.suggestionForm.suggestionCategory.value == 'no'){
				
				alert("대분류를 선택해주세요^^");
				
				return false;
				
			}else if(document.forms.suggestionForm.suggestionDivision1.value == 'no'
				&& document.forms.suggestionForm.suggestionDivision2.value == 'no'){
					
				alert("소분류를 선택하시고 다시 등록해주세요 ^^");
					
				return false;
				
			}else{
				return true;
			}
				
		} */
	</script>
</body>
</html>