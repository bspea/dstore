<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D_Stay 고객센터 - 공지사항 작성</title>

	


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
        .dragAndDropDiv{
        	width:50% !important;
        	border:1px dashed black;
        	margin-left:15px;
        	padding-top:15px;
        	padding-bottom:15px;
        }
        .progressBar {
                width: 200px;
                height: 22px;
                border: 1px solid #ddd;
                border-radius: 5px; 
                overflow: hidden;
                display:inline-block;
                margin:0px 10px 5px 5px;
                vertical-align:top;
            }
              
            .progressBar div {
                height: 100%;
                color: #fff;
                text-align: right;
                line-height: 22px; /* same as #progressBar height if we want text middle aligned */
                width: 0;
                background-color: #0ba1b5; border-radius: 3px; 
            }
            .statusbar{
                border-top:1px solid #A9CCD1;
                min-height:25px;
                width:99%;
                padding:10px 10px 0px 10px;
                vertical-align:top;
            }
            .statusbar:nth-child(odd){
                background:#EBEFF0;
            }
            .filename{
                display:inline-block;
                vertical-align:top;
                width:250px;
            }
            .filesize{
                display:inline-block;
                vertical-align:top;
                color:#30693D;
                width:100px;
                margin-left:10px;
                margin-right:5px;
            }
            .abort{
                background-color:#A8352F;
                -moz-border-radius:4px;
                -webkit-border-radius:4px;
                border-radius:4px;display:inline-block;
                color:#fff;
                font-family:arial;font-size:13px;font-weight:normal;
                padding:4px 15px;
                cursor:pointer;
                vertical-align:top
        
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
                            <h3>공지사항 작성</h3><br>

                            <form action="noticeInsert.do" method="post" name="uploadForm" id="uploadForm" enctype="multipart/form-data">

                                <div class="form-group">
                                    <label for="notice-title" class="col-sm-1" style="text-align:right;">제목</label>
                                    
                                    <div class="col-sm-10">
                                        <input type="text" id="notice-title" class="form-control" name="noticeTitle">
                                    </div>

                                    <div class="row"></div>
                                    <br>

                                    <label for="" class="col-sm-1" style="text-align:right;">내용</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" name="noticeContents" id="editor" cols="30" rows="15"></textarea>
                                    </div>

                                    <div class="row"></div>
                                    <br>

                                    <label for="suggestion-attachments" class="col-sm-1" style="text-align:right;">첨부</label>
                                    <div id="fileUpload" class="col-sm-10 dragAndDropDiv">
                                       	 파일을 여기에 끌어다 놔주세요
                                    </div>
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
    
    
    <script>
	    $(document).ready(function(){
	        var objDragAndDrop = $(".dragAndDropDiv");
	         
	        $(document).on("dragenter",".dragAndDropDiv",function(e){
	            e.stopPropagation();
	            e.preventDefault();
	            $(this).css('border', '2px solid #0B85A1');
	        });
	        $(document).on("dragover",".dragAndDropDiv",function(e){
	            e.stopPropagation();
	            e.preventDefault();
	        });
	        $(document).on("drop",".dragAndDropDiv",function(e){
	             
	            $(this).css('border', '2px dotted #0B85A1');
	            e.preventDefault();
	            var files = e.originalEvent.dataTransfer.files;
	         
	            handleFileUpload(files,objDragAndDrop);
	        });
	         
	        $(document).on('dragenter', function (e){
	            e.stopPropagation();
	            e.preventDefault();
	        });
	        $(document).on('dragover', function (e){
	          e.stopPropagation();
	          e.preventDefault();
	          objDragAndDrop.css('border', '2px dotted #0B85A1');
	        });
	        $(document).on('drop', function (e){
	            e.stopPropagation();
	            e.preventDefault();
	        });
	         
	        function handleFileUpload(files,obj)
	        {
	           for (var i = 0; i < files.length; i++) 
	           {
	                var fd = new FormData();
	                fd.append('file', files[i]);
	          
	                var status = new createStatusbar(obj); //Using this we can set progress.
	                status.setFileNameSize(files[i].name,files[i].size);
	                sendFileToServer(fd,status);
	          
	           }
	        }
	         
	        var rowCount=0;
	        function createStatusbar(obj){
	                 
	            rowCount++;
	            var row="odd";
	            if(rowCount %2 ==0) row ="even";
	            this.statusbar = $("<div class='statusbar "+row+"'></div>");
	            this.filename = $("<div class='filename'></div>").appendTo(this.statusbar);
	            this.size = $("<div class='filesize'></div>").appendTo(this.statusbar);
	            this.progressBar = $("<div class='progressBar'><div></div></div>").appendTo(this.statusbar);
	            this.abort = $("<div class='abort'>중지</div>").appendTo(this.statusbar);
	             
	            obj.after(this.statusbar);
	          
	            this.setFileNameSize = function(name,size){
	                var sizeStr="";
	                var sizeKB = size/1024;
	                if(parseInt(sizeKB) > 1024){
	                    var sizeMB = sizeKB/1024;
	                    sizeStr = sizeMB.toFixed(2)+" MB";
	                }else{
	                    sizeStr = sizeKB.toFixed(2)+" KB";
	                }
	          
	                this.filename.html(name);
	                this.size.html(sizeStr);
	            }
	             
	            this.setProgress = function(progress){       
	                var progressBarWidth =progress*this.progressBar.width()/ 100;  
	                this.progressBar.find('div').animate({ width: progressBarWidth }, 10).html(progress + "% ");
	                if(parseInt(progress) >= 100)
	                {
	                    this.abort.hide();
	                }
	            }
	             
	            this.setAbort = function(jqxhr){
	                var sb = this.statusbar;
	                this.abort.click(function()
	                {
	                    jqxhr.abort();
	                    sb.hide();
	                });
	            }
	        }
	         
	        function sendFileToServer(formData,status)
	        {
	            var uploadURL = "/fileUpload/post"; //Upload URL
	            var extraData ={}; //Extra Data.
	            var jqXHR=$.ajax({
	                    xhr: function() {
	                    var xhrobj = $.ajaxSettings.xhr();
	                    if (xhrobj.upload) {
	                            xhrobj.upload.addEventListener('progress', function(event) {
	                                var percent = 0;
	                                var position = event.loaded || event.position;
	                                var total = event.total;
	                                if (event.lengthComputable) {
	                                    percent = Math.ceil(position / total * 100);
	                                }
	                                //Set progress
	                                status.setProgress(percent);
	                            }, false);
	                        }
	                    return xhrobj;
	                },
	                url: uploadURL,
	                type: "POST",
	                contentType:false,
	                processData: false,
	                cache: false,
	                data: formData,
	                success: function(data){
	                    status.setProgress(100);
	          
	                    //$("#status1").append("File upload Done<br>");           
	                }
	            }); 
	          
	            status.setAbort(jqXHR);
	        }
	         
	    });
    </script>

</body>
</html>