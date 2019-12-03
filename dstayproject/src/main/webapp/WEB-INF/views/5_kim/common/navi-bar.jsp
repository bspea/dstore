<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
	*{
	font-size:15px;
	}
	
	a{font-size:15px;}
	</style>
  <!-- Custom fonts for this template-->
  <link href="resources/assets/5_kim/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=THELuxGoB:400" />
  <!-- Custom styles for this template-->
  <link href="resources/css/5_kim/sb-admin-2.min.css" rel="stylesheet">

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.2/dist/Chart.min.js"></script>


</head>
<body>

    <!-- 사이드바 -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="adminMain.do">
        <img src="resources/images/5_kim/dosirak.png" style="width:50px; height:50px;">
        <div class="sidebar-brand-text mx-3">Admin</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item dashboardLi">
        <a class="nav-link" href="adminMain.do">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>대쉬보드</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Management
      </div>


      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
            <i class="fas fa-fw fa-folder"></i>
            <span>회원관리</span>
          </a>
          <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Member:</h6>
              <a class="collapse-item" href="adminMemberList.do">회원신고관리</a>
              <a class="collapse-item" href="adminCouponList.do">쿠폰관리</a>
            </div>
          </div>
        </li>



      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>물품관리</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Product:</h6>
            <a class="collapse-item" href="adminProductList.do">물품관리</a>
            <a class="collapse-item" href="adminStorageList.do">재고관리</a>
            <a class="collapse-item" href="adminDiscountList.do">세일관리</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item" >
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>매출관리</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Revenue:</h6>
            <a class="collapse-item" href="adminPurchaseList.do">구매내역</a>
            <a class="collapse-item" href="adminRefundList.do">환불요청</a>
          </div>
        </div>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>
  

      <!-- Nav Item - Tables -->
      <li id="reported1by1" class="nav-item">
      <a class="nav-link" href="adminInquiryList.do"">
        <i class="fas fa-fw fa-table"></i>
        <span>문의내역</span>
      </a>
    </li>      

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of 사이드바 -->




  <!-- Bootstrap core JavaScript-->
  <script src="resources/assets/5_kim/vendor/jquery/jquery.min.js"></script>
  <script src="resources/assets/5_kim/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/assets/5_kim/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/js/5_kim/sb-admin-2.min.js"></script>



</body>
</html>