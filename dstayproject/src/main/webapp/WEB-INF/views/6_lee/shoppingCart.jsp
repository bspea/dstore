<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="author" content="Johnson Chandra, Allysa Prabandani, Philipus Herlambang, Maya Editorial">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">


    <meta name="twitter:card" content="summary">
    <meta name="title" content="Back to Kimi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="en-id">


    <!-- open graph metadata facebook, slack, whatsapp line -->
    <meta property="fb:app_id" content="150112802189143"/>
    <meta property="og:locale" content="en_US" />
    <meta property="og:title" content="Back to Kimi" />
    <meta property='og:site_name' content='Kimi | Curated Foods and Beverages' />
    <meta property="og:url" content="http://kimistatic.s3-website-ap-southeast-1.amazonaws.com/" />
    <meta property="og:description" content="Kimi is a curated foods and beverages artisans." />
    <meta property='og:image' content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png" />


    <!-- open graph metadata twitter -->
    <meta name="twitter:title" content="Back to Kimi">
    <meta name="twitter:url" content="http://www.backtokimi.com">
    <meta name="twitter:description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="twitter:image" content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
    <meta name="twitter:site" content="@backtokimi">


    <link rel="icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/favicon.ico">
    <link rel="apple-touch-icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">

    <title>Shopping Cart</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/6_lee/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/6_lee/kimi.css" rel="stylesheet">
    <link href="resources/css/6_lee/font-awesome.min.css" rel="stylesheet">

</head>

<body>

<jsp:include page="../1_common/menubar.jsp"/> 




<div class="container">

    <div class="kimi-container">
        <!--breadcrumb start-->
        <ol class="breadcrumb hidden-xs">
           <li><h4 style="color:#8b0000;">장바구니</h4></li>
        </ol>


        <div class="row">
            <div class="col-md-8">
                <div class="box-bg-white col-md-12">
                    <h3 class="section-title">장바구니</h3>
                    <div class="row">
                        <div class="col-md-2 col-xs-6 less-padding-right">
                            <img src="resources/images/6_lee/brownies.jpg" width="100%">
                        </div>
                        <div class="col-md-5 col-xs-12">
                            <span>상품명</span><br/>
                            <p class="text-gray-3 text-thin">카테고리명</p>
                            <button class="btn btn-default outline-default-button outline-small-default-button">삭제</button>
                        </div>

                        <div class="col-md-3 col-xs-7">
                            <p>수량</p>
                            <form class="form-inline">
                                <div class="form-group pull-left"><button class="btn btn-default">-</button></div>
                                <div class="form-group pull-left">
                                    <input type="number" class="form-control number-input" id="" placeholder="1" style="width: 60px;">
                                </div>
                                <div class="form-group"><button class="btn btn-default">+</button></div>
                            </form>
                        </div>
                        <div class="col-md-2 col-xs-5">
                            <p class="text-right">상품금액</p>
                            <p class="text-right section-title">￦ 10.000</p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-2 col-xs-6 less-padding-right">
                            <img src="resources/images/6_lee/lapisSurabaya.jpg" width="100%">
                        </div>
                        <div class="col-md-5 col-xs-12">
                            <span>Lapis Surabaya</span><br/>
                            <p class="text-gray-3 text-thin">Sucicakes</p>
                            <p class="section-title">IDR 175.000</p>
                            <button class="btn btn-default outline-default-button outline-small-default-button">Remove</button>
                        </div>

                        <div class="col-md-3 col-xs-7">
                            <p>Quantity</p>
                            <form class="form-inline">
                                <div class="form-group pull-left"><button class="btn btn-default">-</button></div>
                                <div class="form-group pull-left">
                                    <input type="number" class="form-control number-input" id="" placeholder="1" style="width: 50px">
                                </div>
                                <div class="form-group"><button class="btn btn-default">+</button></div>
                            </form>
                        </div>
                        <div class="col-md-2 col-xs-5">
                            <p class="text-right">Subtotal</p>
                            <p class="text-right section-title">IDR 50.000</p>
                        </div>
                    </div>


                </div>

                <div class="clearfix maya-small-padding"></div>
            </div>

            <div class="col-md-4">
                <div class="box-bg-white" style="margin-bottom: 0px;">
                    <div class="clearfix maya-small-padding"></div>
                    <h3 class="text-right text-oswald">도움이 필요하신가요 ? </h3>
                    <p class="text-right text-gray-3 text-medium text-thin">문의사항이나 궁금하신 점이 있으시면 아래의 고객센터에 문의 바랍니다.</p>
                    <hr>
                    <div class="row" style="margin-bottom: 13px;">
                        <div class="col-md-6">
                            <p class="text-gray-2 text-thin">Everyday<br>from 9.00 - 18.00</p>
                        </div>
                        <div class="col-md-6">
                            <p class="text-right">02-9999-9999<br><a class="text-black text-underline" href="mailto: info@backtokimi.com">Dstay@naver.com</a></p>
                        </div>
                    </div>
                            	<h3>합계 : ￦10.000</h3>
                </div>
            		<a href="checkout1.do" style="width: 362px; color: #ffffff; background-color: #000;" class="btn btn-default pull-right button-black">주문하기</a>
            </div>
            <div class="clearfix maya-small-padding" ></div>
        </div>
    </div>

</div><!-- /.container -->

<!--include footer-->
<jsp:include page="footer.jsp"/>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/6_lee/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src=".resources/js/6_lee/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/js/6_lee/kimi.js"></script>

</body>
</html>
