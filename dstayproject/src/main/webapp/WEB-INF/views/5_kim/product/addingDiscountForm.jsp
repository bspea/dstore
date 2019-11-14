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
                    <h3 class="h3 mb-1 text-gray-900">&nbsp; 세일관리 </h3><br>
                    <div class="card shadow mb-4"  align="center">
                       <div class="card-body">
                            <table class="table table-bordered">
                                <tr>
                                    <td rowspan="3" width="200" height="200"></td>
                                    <th colspan="2">상품번호<br>상품이름</th>
                                    <td>12001<br>A도시락</td>
                                </tr>
                            </table>
                            <br>

                            <div style="height:30px;">
                                <form action="" method="">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td><input type="date"></td>
                                            <th>일 부터</th>
                                            <td><input type="date"></td>
                                            <th>일 까지</th>
                                        </tr>
                                        <tr>
                                            <th colspan="2">할인율</th>
                                            <td><input type="text"></td>
                                            <th>%</th>
                                        </tr>
                                        <tr>
                                            <th colspan="2">한정수량</th>
                                            <td><input type="text"></td>
                                            <th>개</th>
                                        </tr>


                                    </table>
                                    <button class="btn btn-primary" style="height:100%;">확인</button>
        
                                </form>
                            </div>
                            <br>
                        </div>
                        <br><br><br><br><br><br><br><br>
                        <div style="float:left;">
                            <button class="btn btn-secondary">이전페이지로</button>
                        </div>
                        <br>
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
