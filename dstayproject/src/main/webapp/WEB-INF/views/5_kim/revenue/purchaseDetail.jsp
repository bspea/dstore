<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

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

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script>
      $(function(){
        $('#collapseUtilities').parent().addClass('active');
        $('#collapseUtilities').addClass('show');
        $('#collapseUtilities').children().children().eq(1).addClass('active');
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

      <!-- Main Content -->
      <div id="content">

          <div class="container-fluid">
              <br>
              <h3 class="h3 mb-1 text-gray-900">&nbsp; 구매내역 </h3><br>
                
                 
	
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <span class="m-0 font-weight-bold text-primary">구매번호 : 33223341</span>
                  <div style="float:right">
                  <button class="btn btn-secondary" type="button" onclick="setRefund();">환불처리</button></div>
                </div>
                <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered">
                  <c:if test="${order ne ''}">
	                  
	                  <tr>
	                    <th colspan="4" style="text-align:center;">구매정보</th>
	                  </tr>
	                  <tr>
	                    <th>주문번호</th>
	                    <td>${order.no}</td>
	                    <th>상태</th>
	                  	<td>${order.status }</td>
	                    
	                  </tr>
	                  <tr>
	                  	<th>주문상품</th>
	                    <td>${order.productNo}</td>
	                  	<th>구매수량</th>
	                  	<td>${order.count }</td>
	                  </tr>
	                  <tr>
	                  	<th>구매일자</th>
	                  	<td>${p.payedDate }</td>
	                  	<th>결제수단</th>
	                  	<td>${p.type }</td>
	                  </tr>
	                  <tr>
	                  	<th>실제 결제금액</th>
	                  	<td>${p.totalPrice }</td>
	                  	<c:if test="${p.number ne '' }">
	                  		<th>결제통장</th>
	                  		<td>${p.number }</td>
	                  	</c:if>
	                  	<c:if test="${p.number eq '' }">
	                  		<th>할인전 결제금액</th>
	                  		<td>${p.price }</td>
	                  	</c:if>
	                  </tr>
	             
	                  <tr>
	                    <th colspan="4" style="text-align:center;">회원정보</th>
	                  </tr>
	                  <tr>
	                  	<th>이메일</th>
	                  	<td>${member.email }</td>
	                  	<th>이름</th>
	                  	<td>${member.name }</td>
	                  </tr>
	                  <tr>
	                  	<th>전화번호</th>
	                  	<td>${member.phone }</td>
	                  	<th>요청사항</th>
                	  	<td>${order.request}</td>
                	  </tr>
	                  <tr>
	                      <th>주소</th>
	                      <td colspan="3">(${order.postNo }) ${order.address } ${order.addressDetail }</td>
                	  </tr>
                  </c:if>
                  
                </table>
                
            </div>
                <br>

                <div align="center">
                  <form action="" method="">
                  	<label>운송장 번호 : </label> &nbsp;
                    <input type="text" style="height:38px;" id="waybillInput"> &nbsp; &nbsp; &nbsp; 
                    <button type="button" onclick="setWaybillNo();" class="btn btn-primary">확인</button>
                  </form>
                  
                </div>
                <br>
                <div style="float:left;">
                  <a href="" class="btn btn-secondary">이전페이지로</a>
                </div>
              </div>
          </div>
        </div>

      </div>
      <!-- End of Main Content -->

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
            <span aria-hidden="true">횞</span>
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

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

	<script>
		function setRefund(){
			if(confirm("환불처리 하시겠습니까?")){
				location.href="adminPurchaseList.do";
			}
		}
		
	
		
		function setWaybillNo(){
			var value = $("#waybillInput");
			
			var regexp = /^[0-9]*$/
				
			if(!regexp.test(value.val()) ) {
					alert("숫자만 입력하세요");
					value.val("").focus();
			}else{
			
				if(confirm("운송장번호 " + value.val() + "로 발급할까요?")){
					location.href='adminPurchaseList.do';
				}
			}
			
		}
		
		
	</script>

</body>

</html>
