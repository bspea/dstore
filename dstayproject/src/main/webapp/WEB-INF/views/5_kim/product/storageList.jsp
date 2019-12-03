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

  <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
  <script>
     jQuery(function($){
          $("#dataTable").DataTable();
     });
  </script>

  <style>
  	.clickableTr:hover{
		cursor:pointer;
		color:red;
	}
	
	.table-repsonsive, #dataTable_wrapper{
		width:100%;
	}
	
	#dataTable_wrapper div{
		margin-bottom:7px;
	}
  	
	.table-responsive>div{
		display:inline-block;
	}
	.page-link:hover{
		cursor:pointer;
	}
	
	.pagination > li > a, .pagination > li > span{
		margin:0px; 
		padding:10px; 
		background-color:white; 
		color:rgb(119,119,119);
		border:1px solid rgb(221, 221, 221);
	}
	.pagination > li.active > a, .pagination > li.active > span{
		background-color:rgb(51, 122, 183); 
		color:white;
	}
	
	#dataTable thead th{
			cursor:pointer;
	}
	
	#dataTable thead th:hover{
		text-decoration:underline;
	}
	
  </style>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script>
      $(function(){
        $('#collapseTwo').parent().addClass('active');
        $('#collapseTwo').addClass('show');
        $('#collapseTwo').children().children().eq(2).addClass('active');
        
        $('.clickableTr').click(function(){
        	location.href="adminProductDetail.do?pNo="+$(this).children().eq(2).text();
        });
        
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
          <span class="h3 mb-1 text-gray-900">&nbsp; 재고관리 </span>
          <div class="btnDiv" style="float: right;">
            	<a class="btn btn-success" style="color:white;">엑셀로 출력</a>
		  </div>	<!-- end of btnDiv -->
        
          <br> <br>
                <!--첫번째 카드-->
                <div class="card shadow mb-4">
                     
                    <!-- 모든 테이블 영역 -->
                    <div class="card-body">
                      <div class="table-responsive" align="center">
                       
                        <!-- 테이블-->
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                            <tr>
                              <th>입출고번호</th>
                              <th>작성된 날짜</th>
                              <th>물품번호</th>
                              <th>물품이름</th>
                              <th>상태</th>
                            </tr>
                          </thead>
                          <tbody>
                          	<c:forEach var='storage' items='${pslist }' varStatus='status'>
                            <tr class="clickableTr">
                              <td>${storage.no }</td>
                              <td>${storage.createDate }</td>
                              <td>${storage.productNo }</td>
                              <td>${storage.productName }</td>
                              <td>${storage.type } ${storage.count }</td>
                            </tr>
                            </c:forEach>
                          </tbody>
                        </table>
                        <!-- end of 테이블-->
                
                      </div> <!-- end of table-responsive -->
                      
                    </div> <!-- end of card-body -->
                    
                  </div> <!--end of card shadow mb-4 -->
                  
     		</div> <!--  end of container-fluid -->

      </div><!-- End of 메인 내용 -->
     
	  <!-----------------------------------------------------  [5 footer]  ----------------------------------------------------->
      <jsp:include page="../common/footer.jsp"/>
	

    </div><!-- End of Content Wrapper -->

  </div> <!-- End of Page Wrapper -->

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

</body>

</html>
