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
          margin-right:40px;
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
                                <td>10010</td>
                                <th>아이디(닉네임)</th>
                                <td>hyeonj(김현지)</td>
                            </tr>
                            <tr>
                                <th>연락처</th>
                                <td>01034459988</td>
                                <th>가입날짜</th>
                                <td>2019-10-10</td>
                            </tr>
                            <tr>
                                <th>신고받은 횟수</th>
                                <td>2</td>
                                <th>블라인드 유무</th>
                                <td>N</td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td colspan="3">06132,서울특별시 강남구 테헤란로 141 (역삼동),3층</td>
                            </tr>
                        </table>
                        <div align="center" id="tableBtns">
                            <a class="btn btn-secondary" href="memberManage_reported.html">이전페이지로</a>
                            <button type="button" class="btn btn-primary">블라인드 처리</button>
                        </div>
                    </div>
                </div>
                
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">신고내용</h6>
                    </div>
                    <div id="reportedDetail" class="card-body">
                       
                      <div style="float:right;">
                            <form action="" method="GET">
                            <select class="form-control-sm" name="sorting">
                              <option value="recentNotice">최근 신고순서</option>
                              <option value="recentCreate">오래된 신고순서</option>
                            </select>
                            <button class="btn btn-primary btn-icon-split btn-lg" type="submit">
                              <img src="resources/images/5_kim/refresh.png" style="width:30px; height:30px;">
                            </button>
                          </form>
                          </div><br><br>

                        <table class="table table-bordered" width="100%" cellspacing="0">
                            <tr>
                                <th>신고번호</th>
                                <th>신고내용</th>
                                <th>신고자</th>
                                <th>신고날짜</th>
                            </tr>
                            <tr>
                                <td>100212</td>
                                <td style="width:50%;">
                                    보내는 이상 창공에 같이 우리의 그들을 가슴에 피어나기 사막이다. 사랑의 얼음과 아니더면, 온갖 방지하는 사랑의 인생의 있으랴? 끝에 피에 뛰노는 사막이다. 실로 창공에 산야에 내려온 같이, 이상 곳으로 것이다. 청춘이 천지는 용감하고 못할 그리하였는가? 투명하되 구하기 밥을 그리하였는가? 가치를 시들어 풀이 이상이 스며들어 싹이 그리하였는가? 착목한는 어디 꽃이 곳이 이것을 위하여 인간이 따뜻한 아니다. 듣기만 우는 가는 칼이다.
                                </td>
                                <td>user01</td>
                                <td>2019-10-11</td>
                            </tr>
                            <tr>
                                    <td>100212</td>
                                    <td style="width:50%;">
                                            장식하는 우리 청춘에서만 이상의 황금시대의 있으랴? 인생을 현저하게 우리는 얼마나 거선의 칼이다. 튼튼하며, 장식하는 할지라도 용기가 청춘 아름다우냐?
                                    </td>
                                    <td>user01</td>
                                    <td>2019-10-11</td>
                                </tr>
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
                        <!-- end of 페이징-->
                    </div>
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
