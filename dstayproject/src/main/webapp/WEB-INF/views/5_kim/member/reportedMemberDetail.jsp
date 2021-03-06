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

  <style>
      #tableBtns .btn{
          margin-left:40px;
      }
  </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script>
      $(function(){
        $('#collapsePages').parent().addClass('active');
        $('#collapsePages').addClass('show');
        $('#collapsePages').children().children().eq(1).addClass('active');
      });
  </script>
  
  
<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#dataTable").DataTable();
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
                <h3 class="h3 mb-1 text-gray-900">&nbsp; 회원관리 </h3><br>
                

                <div class="card shadow mb-4">
                        
                    <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">회원정보</h6>
                    </div>
                    
                    <div id="memberDetailInfo" class="card-body" style="margin-left:auto; margin-right:auto; width:75%;">
                            <table class="table table-bordered" cellspacing="0">
                            <tr>
                                <th>회원번호</th>
                                <td>${ member.no}</td>
                                <th>아이디(닉네임)</th>
                                <td>${member.email } (${member.name })</td>
                            </tr>
                            <tr>
                                <th>연락처</th>
                                <td>${member.phone }</td>
                                <th>가입날짜</th>
                                <td>${member.enrollDate }</td>
                            </tr>
                            <tr>
                                <th colspan="4">주소</th>
                            </tr>
                            <c:forEach var="address" items="${alist }" varStatus="addStatus">
							<tr>
								<th>${address.name }</th>
                                <td colspan="3">(${address.postNo }) &nbsp; ${address.address1 } ${address.address2 }</td>
                            </tr>
                            </c:forEach>
                        </table>
                        <div align="center" id="tableBtns">
                            <a class="btn btn-secondary" href="adminMemberList.do">이전페이지로</a>
                            <button type="button" onclick="popup();" class="btn btn-primary">블라인드 처리</button>
                        </div>
                    </div>
                </div>
                
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">신고내용</h6>
                    </div>
                    <div id="reportedDetail" class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" width="100%" cellspacing="0">
                        	<thead>
	                            <tr>
	                                <th>신고번호</th>
	                                <th>신고내용</th>
	                                <th>신고자</th>
	                                <th>신고날짜</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        	<c:forEach var="report" items="${ rlist}" varStatus="reportStatus">
		                            <tr>
		                                <td>${report.no }</td>
		                                <td style="width:50%;">
		                                 	${report.sendNo }
		                                </td>
		                                <td>${report.content }</td>
		                                <td>${report.reportedDate }</td>
		                            </tr>
	                            </c:forEach>
	                           </tbody>
                        </table>
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
		function popup(){
			
			if(confirm("블라인드 처리할까요?")){
				location.href="adminMemberList.do";
			}
		}
	</script>

</body>

</html>
