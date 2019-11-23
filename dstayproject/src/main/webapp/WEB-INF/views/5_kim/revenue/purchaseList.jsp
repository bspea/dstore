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
      .clickableTr:hover{
        color:navy;
        cursor:pointer;
      }
    </style>

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

      <!--  메인 내용 -->
      <div id="content">
        <div class="container-fluid">
          <br>
          <h3 class="h3 mb-1 text-gray-900">&nbsp; 구매내역 </h3><br>
                <!--첫번째 카드-->
               
                <div class="card shadow mb-4">
                    <!-- 검색 -->
                    <div class="card-header py-3">
                      <form action="" method="POST">
                        <div class="row">
                            <br>
                          <select style="margin-left:20%; margin-right:1%; width:10%; height:35px;">
                            <option value="id">아이디</option>
                            <option value="name">이름</option>
                          </select>
                          <input type="search" class="form-control form-control-sm" style="width:40%; height:35px;">
                          <button type="submit" class="btn btn-primary btn-icon-split btn-lg" style="margin-left:1%; margin-right:15%; width:10%; height:35px;">
                            <span>검색</span>
                          </button>
                          <br>
                        </div>
                      </form>
                      
                    </div>
                    <!-- end of 검색-->
                    <!-- 모든 테이블 영역 -->
                    <div class="card-body">
                      <div class="table-responsive">
                        <!-- 정렬 -->
                        <div style="float:right;">
                          <form action="" method="GET">
                          <select class="form-control-sm" name="sorting">
                            <option value="recentNotice">최근 신고받은순</option>
                            <option value="mostNotice">많이 신고받은순</option>
                            <option value="recentCreate">최근 가입날짜순</option>
                          </select>
                          <button class="btn btn-primary btn-icon-split btn-lg" type="submit">
                            <img src="resources/images/5_kim/refresh.png" style="width:30px; height:30px;">
                          </button>
                        </form>
                        </div>
                        <a href="adminPurchaseDetailForm.do">바로가기</a>
                        <br><br>
                        <!-- 테이블-->
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                            <tr>
                                <th>구매번호</th>
                                <th>구매상품명</th>
                                <th>결제수단</th>
                                <th>결제확인날짜</th>
                                <th>결제금액</th>
                                <th>송장번호</th>
                                <th>환불요청여부</th>
                                <th>환불처리완료날짜</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr class="clickableTr">
                              <td>10001</td>
                              <td>a도시락</td>
                              <td>카드</td>
                              <td>2019-10-20</td>
                              <td>29,000원</td>
                              <td></td>
                              <td>N</td>
                              <td></td>
                            </tr>
                          </tbody>
                        </table>
                        <!-- end of 테이블-->
                        <!-- 페이징 -->
                        <div class="row" style="margin-right:auto; margin-left: auto; width:300px;">
                          <button class="page-link">&lt;</button>
                          <a href="" class="page-link">1 </a>
                          <a href="" class="page-link">2 </a>
                          <a href="" class="page-link">3 </a>
                          <a href="" class="page-link">4 </a>
                          <a href="" class="page-link">5 </a>
                          <button class="page-link">&gt;</button>
                          </div>
                        </div>
                        </div>
                        <!-- end of 페이징-->
                      </div>
                    </div>
                    <!-- end of 모든 테이블 영역-->
                  </div>
                   <!--end of 첫번째 카드-->
        </div>

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

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
