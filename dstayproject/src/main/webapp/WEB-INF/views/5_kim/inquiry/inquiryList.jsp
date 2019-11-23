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
        
        $(".clickableTr").click(function(){
        	alert($(this).children().eq(0).text() + "상세페이지로 넘어감");
        });
      });
	</script>

	<style>
		.clickableTr:hover{
			cursor:pointer;
			color:navy;
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
      
      <!--  메인 내용 -->
      <div id="content">
        <div class="container-fluid">
          <br>
          <h3 class="h3 mb-1 text-gray-900">&nbsp; 문의내역 </h3><br>

          
            <!--첫번째 카드-->
                <div class="card shadow mb-4">
                
                <!-- 검색 -->
                <div class="card-header py-3">
                    <form action="" method="POST">
                      <div class="row">
                          <br>
                        <select style="margin-left:20%; margin-right:1%; width:80px; height:35px;">
                          <option value="id">아이디</option>
                          <option value="name">이름</option>
                        </select>
                        <input type="search" class="form-control form-control-sm" style="width:40%; height:35px;">
                        <button type="submit" class="btn btn-primary btn-icon-split btn-lg" style="margin-left:1%; margin-right:15%; width:80px; height:35px;">
                          <span>검색</span>
                        </button>
                        <br>
                      </div>
                    </form>
                    
                  </div>
    
    
    
                    <!-- 모든 테이블 영역 -->
                    <div class="card-body">
                      <div class="table-responsive">
                        
                          <a href="adminInquiryDetail.do">바로가기</a>

                        <!-- 테이블-->
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                            <tr>
                              <th>문의번호</th>
                              <th>문의제목</th>
                              <th>작성자</th>
                              <th>문의날짜</th>
                              <th>처리완료</th>
                            </tr>
                          </thead>
                          <tbody>
                            
                            <tr class="clickableTr">
                              <td>33223341</td>
                              <td>유통기한 지난 상품이 나왔습..</td>
                              <td>hyeonj@naver.com</td>
                              <td>2019-09-30</td>
                              <td>Y</td>
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
                    <!-- End of 메인 내용 -->
    
                        
                      </div>
                    </div>
                    <!-- end of 모든 테이블 영역-->
                  </div>
                   <!--end of 첫번째 카드-->
                </div>


        </div>
      </div>

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
