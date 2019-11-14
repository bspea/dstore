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
        .imgPreviewArea{
            background:lightgray;
            width:100px;
            height:100px;
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
            <span class="h3 mb-1 text-gray-900">&nbsp; 물품관리 </span>
            <div style="float:right;">
                <a href="#" class="btn btn-primary">항목 삭제</a>
            </div>
            <br><br>

            <div class="card shadow mb-4">
                <br>
                <div class="card-body">
                    <div class="table-responsive">
                    <form action="" method="post">
                        <table  class="table table-bordered" style="width:80%; margin-left:auto; margin-right:auto;" >
                            <tr>
                                <td colspan="2"><span class="h5 text-gray-900">물품이름</span></td>
                                <td colspan="2"><input type="text" placeholder="물품명"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><span class="h5 text-gray-900">가격</span></td>
                                <td colspan="2"><input type="text" placeholder="가격"></td>
                            </tr>
                            <tr>
                                <td><div class="imgPreviewArea"></div></td>
                                <td><div class="imgPreviewArea"></div></td>
                                <td><div class="imgPreviewArea"></div></td>
                                <td><div class="imgPreviewArea"></div></td>
                            </tr>
                            <tr>
                                <td colspan="4">상품성분</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="4" style="padding:0px;">
                                    <textarea style="resize: none; height:100%; width:100%;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="padding:0px;">
                                    <textarea style="resize: none; height:100%; width:100%;"></textarea>
                                </td>
                            </tr>
                        </table>
                        <div class="btnArea" align="center">
                            <button type="button" class="btn btn-secondary">본문이미지 추가</button>
                            <br><br>
                            <button type="submit" class="btn btn-primary">저장</button>
                        </div>


                    </form>
                    </div>
                </div>
            </div>

      </div>
      <!-- End of Main Content -->

      
 
  

    </div>
    <!-- End of Content Wrapper -->
 	<!-----------------------------------------------------  [5 footer]  ----------------------------------------------------->
      <jsp:include page="../common/footer.jsp"/>
      
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
