<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>D-Store:Admin</title>

<!-- Custom fonts for this template-->
  <link href="resources/assets/5_kim/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="http://api.typolink.co.kr/css?family=THELuxGoB:400" />
  <!-- Custom styles for this template-->
  <link href="resources/css/5_kim/sb-admin-2.min.css" rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.2/dist/Chart.min.js"></script>
  
  <style>
  	#content-wrapper table{
  		text-align:center;
  	}
  </style>
</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
    
    <!------------------------------- 네비게이터 인클루드 ----------------------------------->
	<jsp:include page="navi-bar.jsp"/>

	<script>
	<!-- 네비게이터 현재 페이지인 글씨 bold처리-->
		$(".dashboardLi").addClass('active');
	</script>
	
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
	  <!--  메인 내용 -->
      <div id="content">
        <div class="container-fluid">
          <br>
          <h3 class="h3 mb-1 text-gray-900">&nbsp; 대쉬보드 </h3><br>
          
          <div class="row">
            <div class="col-lg-6">
              <!-----------------------------------------------------  [1 총매출액 통계]---------------------------------------------------------------------------------->
              <div class="card shadow mb-4">
              <div class="card-header py-3">
              	<span class="m-0 font-weight-bold text-primary">총 매출액</span>
              </div>
              <div class="card-body">
  
                      <div class="chart-area">
                        <canvas id="myAreaChart"></canvas>
                        <script>
                          Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
                          Chart.defaults.global.defaultFontColor = '#858796';
  
                        function number_format(number, decimals, dec_point, thousands_sep) {
                          // *     example: number_format(1234.56, 2, ',', ' ');
                          // *     return: '1 234,56'
                          number = (number + '').replace(',', '').replace(' ', '');
                          var n = !isFinite(+number) ? 0 : +number,
                            prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
                            sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
                            dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
                            s = '',
                            toFixedFix = function(n, prec) {
                              var k = Math.pow(10, prec);
                              return '' + Math.round(n * k) / k;
                            };
                          // Fix for IE parseFloat(0.55).toFixed(0) = 0;
                          s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
                          if (s[0].length > 3) {
                            s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
                          }
                          if ((s[1] || '').length < prec) {
                            s[1] = s[1] || '';
                            s[1] += new Array(prec - s[1].length + 1).join('0');
                          }
                          return s.join(dec);
                        }
  
                        // Area Chart Example
                        var ctx = document.getElementById("myAreaChart");
                        var myLineChart = new Chart(ctx, {
                          type: 'line',
                          data: {
                            labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                            datasets: [{
                              label: "총 매출액",
                              lineTension: 0.3,
                              backgroundColor: "rgba(78, 115, 223, 0.05)",
                              borderColor: "rgba(78, 115, 223, 1)",
                              pointRadius: 3,
                              pointBackgroundColor: "rgba(78, 115, 223, 1)",
                              pointBorderColor: "rgba(78, 115, 223, 1)",
                              pointHoverRadius: 3,
                              pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
                              pointHoverBorderColor: "rgba(78, 115, 223, 1)",
                              pointHitRadius: 10,
                              pointBorderWidth: 2,
                              data: [660000, 5520, 647200.66, 15000, 31000, 80000, 990010, 362000, 90000, 70000, 25000, 40000],
                              // data 변경
                            }],
                          },
                          options: {
                            maintainAspectRatio: false,
                            layout: {
                              padding: {
                                left: 10,
                                right: 25,
                                top: 25,
                                bottom: 0
                              }
                            },
                            scales: {
                              xAxes: [{
                                time: {
                                  unit: 'date'
                                },
                                gridLines: {
                                  display: false,
                                  drawBorder: false
                                },
                                ticks: {
                                  maxTicksLimit: 7
                                }
                              }],
                              yAxes: [{
                                ticks: {
                                  maxTicksLimit: 5,
                                  padding: 10,
                                  // Include a dollar sign in the ticks
                                  callback: function(value, index, values) {
                                    return number_format(value) + '￦';
                                  }
                                },
                                gridLines: {
                                  color: "rgb(234, 236, 244)",
                                  zeroLineColor: "rgb(234, 236, 244)",
                                  drawBorder: false,
                                  borderDash: [2],
                                  zeroLineBorderDash: [2]
                                }
                              }],
                            },
                            legend: {
                              display: false
                            },
                            tooltips: {
                              backgroundColor: "rgb(255,255,255)",
                              bodyFontColor: "#858796",
                              titleMarginBottom: 10,
                              titleFontColor: '#6e707e',
                              titleFontSize: 14,
                              borderColor: '#dddfeb',
                              borderWidth: 1,
                              xPadding: 15,
                              yPadding: 15,
                              displayColors: false,
                              intersect: false,
                              mode: 'index',
                              caretPadding: 10,
                              callbacks: {
                                label: function(tooltipItem, chart) {
                                  var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                                  return datasetLabel +" : " + number_format(tooltipItem.yLabel) +'원';
                                }
                              }
                            }
                          }
                        });
                        
                        </script>
                    </div>
  
              </div>
              
              </div>
              <!-----------------------------------------------------  End Of 총매출액 통계 ---------------------------------------------------------------------------------->
            </div>

            <div class="col-lg-6">
              <!-----------------------------------------------------   [2 인기상품 통계] ----------------------------------------------------->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
		            	<span class="m-0 font-weight-bold text-primary">인기상품</span>
		            </div>
                    
                    <div class="card-body">
                       <div class="chart-pie pt-4">
                        <canvas id="myPieChart"></canvas>
                       </div>
                       <div class="pt-4" align="center"> 
                          <span style="color: #4e73df; font-weight:900;">Direct</span> &nbsp;  &nbsp; 
                          <span style="color: #1cc88a; font-weight:900;">Referral</span> &nbsp;  &nbsp; 
                          <span style="color: #2c9faf; font-weight:900;">Social</span>
                        </div>
                        
                        <script>
                          Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
                          Chart.defaults.global.defaultFontColor = '#858796';

                          // Pie Chart Example
                          var ctx = document.getElementById("myPieChart");
                          var myPieChart = new Chart(ctx, {
                            type: 'doughnut',
                            data: {
                              labels: ["Direct", "Referral", "Social"],
                              datasets: [{
                                data: [55, 30, 15],
                                backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
                                hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
                                hoverBorderColor: "rgba(234, 236, 244, 1)",
                              }],
                            },
                            options: {
                              maintainAspectRatio: false,
                              tooltips: {
                                backgroundColor: "rgb(255,255,255)",
                                bodyFontColor: "#858796",
                                borderColor: '#dddfeb',
                                borderWidth: 1,
                                xPadding: 15,
                                yPadding: 15,
                                displayColors: false,
                                caretPadding: 10,
                              },
                              legend: {
                                display: false
                              },
                              cutoutPercentage: 80,
                            },
                          });
                        
                        </script>
                      
                      </div>
                  </div>
                </div>
              <!-----------------------------------------------------   End of 인기상품 통계 ----------------------------------------------------->
            </div>
          
          
          <!-----------------------------------------------------  [3 상품현황 카드] ----------------------------------------------------->
          <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <span class="m-0 font-weight-bold text-primary">물품 상태</span>
                  <a style="float:right;"  href="revenueManage_purchase.html">모든 물품조회 →</a>
                  
                </div>
                <div class="card-body">
                  <table class="table table-bordered" cellspacing="0">
                    <tr>
                      <th>전체 등록된 물품</th>
                      <th>판매중인 물품</th>
                      <th>품절 물품</th>
                      <th>블라인드중인 물품</th>
                    </tr>
                    <tr>
                      <td>25개</td>
                      <td>23개</td>
                      <td><label style="color:red;">1개</label></td>
                      <td>1개</td>
                    </tr>
                  </table>
                </div>
          </div>
          <!-----------------------------------------------------  End of 상품현황 카드 ----------------------------------------------------->
          <!-----------------------------------------------------  [4 구매내역 카드] ----------------------------------------------------->
          <div class="card shadow mb-4">
              <div class="card-header py-3">
                  <span class="m-0 font-weight-bold text-primary">구매내역</span>
                  <a style="float:right;"  href="revenueManage_purchase.html">최근 구매내역 →</a>
              </div>
              
              <div class="card-body">
                  <table class="table table-bordered" cellspacing="0">
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
                      <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>
                    </table>
              </div>

          </div>
          <!-----------------------------------------------------  End of 구매내역 카드 ----------------------------------------------------->
          
        </div>
        </div>
	</div>
      </div>
      <!-- End of 메인 내용 -->
		
	  <!-----------------------------------------------------  [5 footer]  ----------------------------------------------------->
      <jsp:include page="footer.jsp"/>

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <script src="resources/assets/5_kim/vendor/jquery/jquery.min.js"></script>
  <script src="resources/assets/5_kim/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/assets/5_kim/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
