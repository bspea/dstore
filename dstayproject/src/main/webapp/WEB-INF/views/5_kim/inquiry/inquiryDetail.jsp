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
          $('#reported1by1').addClass('active');
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
              <h3 class="h3 mb-1 text-gray-900">&nbsp; 신고내역 </h3><br>
                
            
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <span class="m-0 font-weight-bold text-primary">신고번호 : 33223341</span>
                </div>
                <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered">
                  <tr>
                    <th colspan="6" style="text-align:center;">문의내용</th>
                  </tr>
                  <tr>
                    <th width="80">제목</th>
                    <td colspan="3">석가는 무엇을 위하여 설산에서 고행을 하였으며 예수는 무엇을 위하여 광야에서 방황하였으며 공자는 무엇을 위하여 천하를 철환하였는가? </td>
                  </tr>
                  <tr>
                    <th>아이디</th>
                    <td>hyeonj@naver.com</td>
                    <th>문의일자</th>
                    <td>2019-11-11 (오후)07:53</td>
                  </tr>
                  <tr>
                      <td colspan="4"><textarea rows="auto" style="width:100%; height:100%; resize:none;" readonly></textarea></td>
                  </tr>
                </table>
                <br>
                <form action="">
                <table class="table table-bordered">
                  <tr>
                    <th colspan="4" style="text-align:center;" class="text-primary">문의답변</th>
                  </tr>
                  <tr>
                    <td colspan="4"><textarea rows="10" style="width:100%; height:100%; resize:none;"></textarea></td>
                  </tr>
                </table>
                <div align="center">
                  <button class="btn btn-primary">답변하기</button>
                </div>
              </form>  
            </div>
            <br><br>
            <a href="#" class="btn btn-secondary">이전페이지로</a>

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
