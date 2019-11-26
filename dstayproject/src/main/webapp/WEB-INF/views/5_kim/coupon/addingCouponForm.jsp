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
        $('#collapsePages').parent().addClass('active');
        $('#collapsePages').addClass('show');
        $('#collapsePages').children().children().eq(2).addClass('active');
      });
  </script>

  <style>
    .btnArea .btn{
      margin-left:40px;
      margin-right:40px;
    }

    #addCouponTb{
      margin-right:auto;
      margin-left:auto;
      width:70%;
    }
  </style>

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
          <span class="h3 text-gray-900">&nbsp; 쿠폰발급 </span>
          <br><br>
          <div class="card shadow mb-4">
            <div class="card-body" align="center">
              <br>
              <div class="table-responsive">
              <form action="" method="post">

              <table id="addCouponTb" class="table">
                <tr>
                  <th width="186">쿠폰이름</th>
                  <td width="195"><input type="text" placeholde="쿠폰명"></td>
                  <th width="186">할인율</th>
                  <td width="195"><input type="text" placeholde="할인율"></td>
                </tr>
                <tr>
                    <th>회원ID</th>
                    <td><input type="text" placeholde="발급시킬 회원 아이디"></td>
                    <th>사용가능한 범위</th>
                  <td><select><option>전부</option>
                  <option>도시락만</option>
                <option>음료만</option></select></td>
                </tr>
                <tr>
                  
                </tr>
                <tr>
                  <th width="381" colspan="2">사용가능 날짜</th> &nbsp; 
                  <td>
                    <input name="availableDate" id="infiniteDate"  type="radio">
                    &nbsp; &nbsp; 
                    <label for="infiniteDate">무제한</label>
                  </td>
                  <td>
                    <input name="availableDate" id="limitedDate" type="radio" checked>
                    &nbsp; &nbsp; 
                    <label for="limitedDate">날짜지정</label>
                  </td>
                </tr>
                <tr id="sinceThenDate">
                  <td><input type="date"></td>
                  <th>일 부터</th>
                  <td><input type="date"></td>
                  <th>일 까지</th>
                </tr>
                
              </table>
              <br>
              <button type="submit" class="btn btn-primary">쿠폰발급</button><br><br>
              
            </form>
            </div>
            
            <br>	
            <div style="float:left;">
                 &nbsp; &nbsp; &nbsp; <button type="button" class="btn btn-secondary">이전페이지</button>
            </div>
			<br><br>	
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


  <script>
    $(function(){
      $("#infiniteDate").click(function(){
        $("#sinceThenDate").hide();
      });

      $("#limitedDate").click(function(){
        $("#sinceThenDate").show();
      })

    
    });
  
  </script>


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
