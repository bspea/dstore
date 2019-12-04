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

<title>D-Store:Admin</title>



<!-- Custom fonts for this template-->
  <link href="resources/assets/5_kim/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=THELuxGoB:400" />
  <!-- Custom styles for this template-->
  <link href="resources/css/5_kim/sb-admin-2.min.css" rel="stylesheet">

<style>
	.clickableTr:hover{
		cursor:pointer;
		color:red;
	}
	
	.table-repsonsive{
		width:100%;
	}
	
	#dataTable_wrapper {
	width:90%;}
	
	#dataTable_wrapper div{
		margin-bottom:7px;
	}
  	
	.table-responsive>div{
		display:inline-block;
	}
	.page-link:hover{
		cursor:pointer;
	}
	
	.pagination > li > a, .pagination > li > span{
		margin:0px; 
		padding:10px; 
		background-color:white; 
		color:rgb(119,119,119);
		border:1px solid rgb(221, 221, 221);
	}
	.pagination > li.active > a, .pagination > li.active > span{
		background-color:rgb(51, 122, 183); 
		color:white;
	}
	
	#dataTable thead th{
			cursor:pointer;
	}
	
	#dataTable thead th:hover{
		text-decoration:underline;
	}
	
	
</style>

<!-- <link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/>
-->

<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#dataTable").DataTable();
        });
    </script>

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
					
					<div class="card shadow mb-4">
						<div class="card-body" >
							<div class="table-responsive" align="center">
							<!-- ----------------------------------------------------------------v -->
	
    					 	
							<!-- ----------------------------------------------------------------v -->
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								
									<thead>
							         	<tr>
											<th width="100">상품번호</th>
											<th width="100">상품사진</th>
											<th width="400">상품명</th>
											<th>총수량</th>
											<th>1개가격</th>
											<th>세일여부</th>
											<th>최근입고일</th>
											<th>블라인드 여부</th>
											<th width="100">관리</th>
										</tr>   
							        </thead>
							        <tbody>
								    	<c:forEach var='product' items='${pList}' varStatus='status'>   
											 <tr class='clickableTr'>  
												 <td class="clickable">${product.no }</td>  
												 <td class="clickable">
												 	<c:forEach var='pic' items="${piList }" varStatus='picStatus'>   
													 	 <c:if test="${product.no eq pic.productNo }">   
															 <c:if test="${1 eq pic.orderBy }">
																 <img src="${pic.path }" style='width: 75px; height: 75px; border: 1px solid gray;'>  
															 </c:if>  
														 </c:if>  
													 </c:forEach>  
													
												 </td>  
												 <td class="clickable">${product.name }</td>  
												 <td class="clickable">*</td>  
												 <td class="clickable">${product.price }원</td>  
												 <td class="clickable">*</td> 
												 <td class="clickable">*</td>  
												 <td class="clickable"><c:if test="${'Y' eq product.status }">판매중</c:if>  
													 <c:if test="${ 'N' eq product.status }">미판매</c:if></td>  
												 <td class="buttonTd" style="padding:0; padding-top:5px; padding-bottom:5px;">
												 	<button type="button" onclick="storageThis('${product.no}');" class="manageAmount btn btn-sm btn-warning" style="width:100%;">재고관리</button>  
													 <button type="button" onclick="saleThis('${product.no}');" class="manageSale btn btn-sm btn-info" style="width:100%;">세일관리</button>   
												 </td>  
										 	</tr>   
									 </c:forEach> 
				
								    </tbody>
								</table>
							</div>	<!-- end of 'table-responsive' -->
						</div>	<!-- end of 'card-body' -->
					</div>	<!-- end of 'card shadow mb-4' -->
					
				</div> <!-- end of container-fluid -->
			</div>	<!-- end of 메인내용 -->
			
			<!-----------------------------------------------------  [5 footer]  ----------------------------------------------------->
	<jsp:include page="../common/footer.jsp" />
		</div> <!-- End of Content Wrapper -->
	</div>	<!-- End of Wrapper -->

	
	

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


	<script>
		 function storageThis(pNo){
			 location.href='adminQuantityReceiving.do?pNo='+pNo;
		 }
		 
		 function saleThis(pNo){
			 location.href='adminAddingDiscountForm.do?pNo='+pNo;
		
		 }
		 
		 
		$(function() {
			 $('#dataTable tbody').on('click', 'tr .clickable', function () {
			        var pNo =$(this).parent().children().eq(0).text();
			        location.href="adminProductDetail.do?pNo="+pNo;
			 });
		});
		
		
	</script>


</body>
</html>
