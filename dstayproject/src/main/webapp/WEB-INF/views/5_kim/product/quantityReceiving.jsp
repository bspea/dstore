<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  
    <style>
        .btnArea button{
            margin-left:20px;
            margin-right:20px;
        }

        .productSelect{
            background: #e3e6f0;
            text-align: center;
            color:rgb(50, 50, 50);

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

      <!-- Main Content -->
      <div id="content">
            <div class="container-fluid">
                <br>
                <h3 class="h3 mb-1 text-gray-900">&nbsp; 물품상세 </h3>
                <br>
                <div class="card shadow mb-4">
		            <div class="card-header py-3">
		              <span class="m-0 font-weight-bold text-primary">재고관리</span>
		            </div>
                    <div class="card-body"> 
                        <br>
                        
                        <div class="table-responsive" style="width:90%; margin-left:auto; margin-right:auto;">
                        
                        <table class="table table-bordered">
                        	<tr align="center">
	                        	<td rowspan="5" width="300">
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
	                        	<th>상품번호</th>
	                        	<td colspan="3">${p.no }</td>
                        	</tr>
                        	<tr align="center">
                        		<th>상품명</th>
                        		 <td colspan="3">${p.name }</td>
                        	</tr>
                        	<tr align="center">
                        		<th>가격</th>
                            	<td colspan="3">${p.price }원</td>
                        	</tr>
                        	
                        </table>
                        <br>
						<form action="adminChangeQuantity.do" method="post">
							<input type="hidden" name="pNo" value="${p.no }">
							<div align="center">
								<select name="type" style="height:38px;">
									<option>정상입고</option>
									<option>출고</option>
									<option>직접작성</option>
								</select>
								&nbsp; 
								<input type="text" name="amount" style="height:38px;">
								&nbsp; 
								<button type="submit" class="btn btn-primary"> 품목 입고처리 </button>
							</div>
	                        <br><br>
	                        
	                        <div align="left" class="btnArea">
	                            <button type="button" class="btn btn-secondary">이전페이지</button>
	                        </div>
                    	
                    	</form>
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

</body>

</html>
