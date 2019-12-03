<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="ko">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>D-Store:Admin</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=THELuxGoB:400" />
  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <style>
      .btnDiv a{
        margin-left:20px;
        margin-right:20px;
      }
      

    </style>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script>
      $(function(){
        $('#collapseTwo').parent().addClass('active');
        $('#collapseTwo').addClass('show');
        $('#collapseTwo').children().children().eq(1).addClass('active');
      });
</script>
</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
    
  
<!------------------------------- 네비게이터 인클루드 ----------------------------------->
	<jsp:include page="../common/navi-bar.jsp"/>
  
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!--  메인 내용 -->
      <div id="content">
        <div class="container-fluid">
          <br>
          <span class="h3 mb-1 text-gray-900">&nbsp; 물품상세 </span>
		  <div style="float:right;">
          	 <a href="adminQuantityReceiving.do?pNo=${p.no }" class="btn btn-secondary">재고관리</a>&nbsp; &nbsp; &nbsp;
          	 <a href="adminProductUpdate.do?pNo=${p.no }" class="btn btn-primary">물품수정</a>
          </div>
 	      <br><br>

                <!--첫번째 카드-->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">상세정보</h6>
                    </div>
                    <div class="card-body" id="detailProductInfo">
                      <div class="table-responsive">
                      <form id="fileForm" method="post" enctype="multipart/form-data">
                        <table class="table table-bordered" cellspacing="0" style="width:80%; height:100%; margin-left:auto; margin-right:auto;">
                          <tr>
                          <td colspan="4">
                          	<div style="width:100; margin:0 auto; display:inline-block;">
                            	<c:forEach var="imgs" items="${imgs }" varStatus="imgStatus">
                            		<c:choose>
                            			<c:when test="${0 eq imgs.orderBy }">
                            				<img style="height:200px; float:left;" src="${pageContext.request.contextPath}${imgs.path }">
                            			</c:when>
                            			<c:when test="${1 eq imgs.orderBy }">
                            				<img style="height:200px; float:right;" src="${pageContext.request.contextPath}${imgs.path }"><br><br>
                            			</c:when>
                            			<c:when test="${2 eq imgs.orderBy }">
                            				<img style="height:200px; float:left;" src="${pageContext.request.contextPath}${imgs.path }">
                            			</c:when>
                            			<c:when test="${3 eq imgs.orderBy }">
                            				<img style="height:200px; float:right;" src="${pageContext.request.contextPath}${imgs.path }">
                            			</c:when>
                            		</c:choose>
                            		
                            	</c:forEach>
                            	</div>
                              </td>
                            </tr>
                            <tr>
                            	<th>썸네일 재선택</th>
                                <td colspan="3" class="thumbnailImgs">
                                	<input multiple="true" type="file" name="thumbs" id="imgfilein">
                                </td>
                            </tr>
                          <tr >
                            <th>물품번호 </th>
                            <td colspan="3">${p.no }</td>
                            <input type="hidden" name="no" value="${p.no }">
                            
                          </tr>
                          <tr>
                            <th>물품명</th>
                            <td colspan="3"><input type="text" name="name" value="${p.name }"></td>
                          </tr>
                          <tr>
                            <th>가격</th>
                            <td colspan="3"><input type="text" name="price" value="${p.price }">원</td>
                          </tr>
                          <tr>
                          	<th colspan="2">카테고리</th>
                          		
                                <td colspan="2" style="padding:0;">
                                	<select id="categorySelect" name="categoryNo" style="width:100%;">
                                		<c:forEach var="productCategory" items="${allpclist }" varStatus="pcStatus">
                                			<option value="${productCategory.no }">  ${productCategory.no }_${productCategory.name }
                                		</c:forEach>
                               		</select> 	
                                </td>
                          </tr>
                           <tr>
                                <th colspan="2">칼로리</th>
                                <td colspan="2" style="padding:0;"><input type="text" name="calorie" value="${ p.calorie}" style="width:80%; height:50px;"> &nbsp; kcal</td>
                            </tr>
                          <tr>
                            <th colspan="4">상품 성분</th>
                          </tr>
                          <tr>
                            <td colspan="4">
                            	<c:forEach var="ing" items="${alliclist }" varStatus="ingStatus">
                                		<input type="checkbox" name="ingredients" value="${ing.no }"> ${ing.name } &nbsp; &nbsp;
                                	</c:forEach>
                            </td>
                          </tr>
                            <tr>
                            	<th colspan="2">
                            		본문이미지 재선택
                            	</th>
                            	<td colspan="2">
                            		<input type="file" name="contentImg">
                            	</td>
                            </tr>
                            <tr>
                                <td colspan="4" style="padding:0px;">
                                    <textarea name="content" style="resize: none; height:100%; width:100%;"">${p.content}</textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="padding:0px;">
                                    <textarea name="recipe" style="resize: none; height:100%; width:100%;">${p.recipe}</textarea>
                                </td>
                            </tr>
                        </table>
                        </form>
                      </div>
                    </div>     
                </div>
                    </div>     
                    <div class="btnArea" align="center">
                            <br>
                            <button type="button" class="btn btn-primary" id="formSave">저장</button>
                        </div>
                </div>
              </div> <!--end of 첫번째 카드-->
        </div>

      <!-- End of 메인 내용 -->

      <!-----------------------------------------------------  [5 footer]  ----------------------------------------------------->
      <jsp:include page="../common/footer.jsp"/>
      
      
    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->


  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

 
	<script>
		$(function(){
			$("#formSave").click(function(event){
				var formData = new FormData($('#fileForm')[0]); 
				$.ajax({ 
					type: "POST", 
					enctype: 'multipart/form-data', // 필수 
					url: 'adminuUpdateProductInfo.do', 
					data: formData, // 필수 
					processData: false, // 필수 
					contentType: false, // 필수 
					success: function (result) { 
						location.href="adminProductList.do";
					}, 
					error: function (e) { 
						console.log("ajax 데이터 전송 실패...");
						
					} 
				});
			});
			
			
			
			
			// 카테고리 번호에 따라 selected값 주면서 시작
			$("#categorySelect").val("${p.categoryNo}").attr("selected", "selected");
			
			
			// 체크된 ingres마다 checkbox에 체크한채로 시작
			var ingres= "${ingArr}";
			var ingArr = ingres.split(",");
			
			// ingArr의 마지막번째 숫자
			var lastelement = Number(ingArr[ingArr.length - 1]);
			console.log(lastelement);
			
			for(i=0; i<lastelement+1; i++){
				for(j=0; j<ingArr.length; j++){
					if(ingArr[j] == i){
						
						var str = "input[value=\""+ ingArr[j] +"\"]";
						$(str).attr('checked','checked');
					}

				}
				
			}

			
		});
	
	
	</script>


</body>

</html>
