<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
      
	
	.table-repsonsive{
		width:100%;
	}
	
	#dataTable_wrapper,#dataTableSale_wrapper {
	width:90%;}
	
	#dataTableSale_wrapper div, #dataTable_wrapper div{
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
	
	#dataTable thead th,#dataTableSale thead th{
			cursor:pointer;
	}
	
	#dataTable thead th:hover, #dataTableSale thead th:hover{
		text-decoration:underline;
	}
	
	.col-lg-6{
		display:inline-block;
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

<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#dataTable").DataTable();
            $("#dataTableSale").DataTable();
            
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
                        <table class="table table-bordered" cellspacing="0" style="width:80%; height:100%; margin-left:auto; margin-right:auto;">
                          <tr >
                            <td colspan="2" rowspan="8" style="width:50%;">
                            	<div style="width:100; margin:0 auto; display:inline-block;">
                            	<c:forEach var="imgs" items="${imgs }" varStatus="imgStatus">
                            		<c:choose>
                            			<c:when test="${1 eq imgs.orderBy }">
                            				<img style="height:50%; width:50%; float:left;" src="${imgs.path }">
                            			</c:when>
                            			<c:when test="${2 eq imgs.orderBy }">
                            				<img style="height:50%; width:50%; float:right;" src="${imgs.path }"><br><br>
                            			</c:when>
                            			<c:when test="${3 eq imgs.orderBy }">
                            				<img style="height:50%; width:50%; float:left;" src="${imgs.path }">
                            			</c:when>
                            			<c:when test="${4 eq imgs.orderBy }">
                            				<img style="height:50%; width:50%; float:right;" src="${imgs.path }">
                            			</c:when>
                            		</c:choose>
                            		
                            	</c:forEach>
                            	</div>
                            </td>
                            <th>상품번호 </th>
                            <td colspan="3">${p.no }</td>
                            
                          </tr>
                          <tr>
                            <th>상품명</th>
                            <td colspan="3">${p.name }</td>
                          </tr>
                          <tr>
                            <th>가격</th>
                            <td colspan="3">${p.price }원</td>
                          </tr>
                          <tr>
                            <th colspan="4">상품 성분</th>
                          </tr>
                          <tr>
                            <td colspan="4">
                            	<label>
	                            	<c:forEach var="ingres" items="${iclist}" varStatus="ingStatus"> 
	                            		${ingres.name } &nbsp;
	                            	</c:forEach>
                            	</label>
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>     
                </div>
<div class="row">
                <!--두번째 카드-->
                <div class="col-lg-6">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <span class="h6 m-0 font-weight-bold text-primary">입출고내역</span>
                    </div>
                    <div class="card-body">
                    	<div class="table-responsive"  align="center">
	                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                          <thead>
	                            <tr>
	                              <th>입출고번호</th>
	                              <th>입출고날짜</th>
	                              <th>수량</th>
	                            </tr>
	                          </thead>
	                          <tbody>
	                          <c:forEach var="storage" items="${slist }" varStatus="strgStatus">
	                            <tr>
	                              <td>${storage.no }</td>
	                              <td>${storage.createDate }</td>
	                              <td>
	                              	 <c:choose>
		                              	 <c:when test="${'입고' eq storage.type }">
		                              	 	+
		                              	 </c:when>
		                              	 <c:otherwise>
		                              	 	-
		                              	 </c:otherwise>
	                              	 </c:choose>
	                             ${storage.count }</td>
	                            </tr>
							  </c:forEach>
	                          </tbody>
	                        </table>
	                      </div>

                    </div>     
                </div>
                </div>
                
                
                 <!--두번째 카드-->
                 <div class="col-lg-6">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <span class="h6 m-0 font-weight-bold text-primary">세일내역</span>
                    </div>
                    <div class="card-body">
                    	<div class="table-responsive" align="center">
	                        <table class="table table-bordered" id="dataTableSale" width="100%" cellspacing="0">
	                          <thead>
	                            <tr>
	                              <th>세일번호</th>
	                              <th>할인율</th>
	                              <th>한정수량</th>
	                              <th>세일날짜</th>
	                              <th>조기종료일</th>
	                            </tr>
	                          </thead>
	                          <tbody>
	                          <c:forEach var="sale" items="${salelist }" varStatus="strgStatus">
	                            <tr>
	                              <td>${sale.no }</td>
	                              <td><fmt:formatNumber value="${sale.salePercent }" type="percent" /></td>
	                              <td>${sale.limitedAmount }</td>
	                              <td>${sale.startDate } ~ ${sale.endDate }</td>
	                              <td>${sale.earlyEndDate }</td>
	                              
	                            </tr>
							  </c:forEach>
	                          </tbody>
	                        </table>
	                      </div>

                    </div>     
                </div>
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
        $(".clickableTr").click(function(){
          var clickedNo = $(this).children().eq(0).text();
          console.log(clickedNo);
        });
      });    
  </script>



  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
