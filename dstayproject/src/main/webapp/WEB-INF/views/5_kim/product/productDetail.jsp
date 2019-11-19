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
<%--	  <div class="btnDiv" style="float:right;">
              <a class="btn btn-primary" href="adminQuantityReceiving.do">수량 입고</a>
          </div>
 --%>     <br><br>

                <!--첫번째 카드-->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">상세정보</h6>
                    </div>
                    <div class="card-body" id="detailProductInfo">
                      <div class="table-responsive">
                        <table class="table table-bordered" cellspacing="0" style="width:80%; height:100%; margin-left:auto; margin-right:auto;">
                          <tr >
                            <td colspan="2" rowspan="8">
                                  <img src="resources/images/5_kim/testCupon.png" style="width:200px; height:200px;">
                                  <img src="resources/images/5_kim/testCupon.png" style="width:200px; height:200px;"><br>
                                  <img src="resources/images/5_kim/testCupon.png" style="width:200px; height:200px;">
                                  <img src="resources/images/5_kim/testCupon.png" style="width:200px; height:200px;">
                            </td>
                            <th>상품번호 </th>
                            <td colspan="3"><input type="number" value="1233223"></td>
                            
                          </tr>
                          <tr>
                            <th>상품명</th>
                            <td colspan="3"><input type="text" value="a도시락"></td>
                          </tr>
                          <tr>
                            <th>가격</th>
                            <td colspan="3"><input type="text" value="12,000"></td>
                          </tr>
                          <tr>
                            <th colspan="4">상품 성분</th>
                          </tr>
                          <tr>
                            <td colspan="4">닭고기, 계란, 양배추, 쌀 </td>
                          </tr>

                        </table>
                      </div>
                    </div>     
                </div>

                <!--두번째 카드-->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">입고내역</h6>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered" cellspacing="0">
                          <thead>
                            <tr>
                              <th>입고번호</th>
                              <th>입고일</th>
                              <th>수량</th>
                              <th>유통기한</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>66332</td>
                              <td>2019-11-07</td>
                              <td>30개</td>
                              <td>2019-11-01~2019-11-15</td>
                            </tr>

                          </tbody>
                        </table>

                        
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
