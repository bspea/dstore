<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/> 
    <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#dataTable").DataTable();
        });
    </script>

<title>D-Store:Admin</title>

<style>
	*{font-size:15px;}
	
	.clickableTr:hover{
		cursor:pointer;
		color:red;
	}
	.table-responsive>div{
		display:inline-block;
	}
	
	#dataTable_wrapper{
		width:100%;
	}
	.page-link:hover{
		cursor:pointer;
	}
	
	

</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		$('#collapseTwo').parent().addClass('active');
		$('#collapseTwo').addClass('show');
		$('#collapseTwo').children().children().eq(1).addClass('active');
	});
</script>


<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!------------------------------- 네비게이터 인클루드 ----------------------------------->
		<jsp:include page="../common/navi-bar.jsp" />


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!--  메인 내용 -->
			<div id="content">
				<div class="container-fluid">
					<br> <span class="h3 mb-1 text-gray-900">&nbsp; 물품관리 </span>
					<div class="btnDiv" style="float: right;">
						<a class="btn btn-secondary" href="adminAddingProductForm.do">물품종류
							추가</a>
					</div>
					<br> <br>
					<!--첫번째 카드-->
					<div class="card shadow mb-4">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
							         	<tr>
											<th>상품번호</th>
											<th>상품사진</th>
											<th width="400">상품명</th>
											<th>총수량</th>
											<th>1개가격</th>
											<th>세일여부</th>
											<th>최근입고일</th>
											<th>블라인드 여부</th>
											<th width="200">관리</th>
										</tr>   
							        </thead>
							        <tbody>
								    	<c:forEach var='product' items='${pList}' varStatus='status'>   
											 <tr class='clickableTr'>  
												 <td>${product.no }</td>  
												 <td><c:forEach var='pic' items="${piList }" varStatus='picStatus'>   
													 	 <c:if test="${product.no eq pic.productNo }">   
															 <c:if test="${0 eq pic.orderBy }">   
																 <img src="${pageContext.request.contextPath}${pic.path }" style='width: 75px; height: 75px; border: 1px solid gray;'>  
															 </c:if>  
														 </c:if>  
													 </c:forEach>  
												 </td>  
												 <td>${product.name }</td>  
												 <td>*</td>  
												 <td>${product.price }원</td>  
												 <td>*</td> <td>*</td>  
												 <td><c:if test="${'Y' eq product.status }">판매중</c:if>  
													 <c:if test="${ 'N' eq product.status }">미판매</c:if></td>  
												 <td><a href='adminQuantityReceiving.do' class='btn btn-sm btn-warning'>재고관리</a>   
													  <a href='adminAddingDiscountForm.do' class='btn btn-sm btn-info'>세일관리</a>   
												 </td>   
										 	</tr>   
									 </c:forEach> 
				
								    </tbody>
								</table>
							</div>
						</div>
					</div>
					<!--end of 첫번째 카드-->
				</div>
			 <!-- End of 메인 내용 -->

	</div>
	<!-- End of Content Wrapper -->
	
	
	
	<!-----------------------------------------------------  [5 footer]  ----------------------------------------------------->
	<jsp:include page="../common/footer.jsp" />
	
	

	</div>
	<!-- End of Page Wrapper -->


	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>


	<script>
		$(function() {
			$('#dataTable tbody').on('click', 'tr', function(){
				var pNo = $(this).children().eq(0).text();
				location.href="adminProductDetail.do?pNo="+pNo;
				console.log(pNo);
				
			});
			
			
		});
		
		
	</script>


</body>
</html>
