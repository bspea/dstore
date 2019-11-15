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

 
    <style>
    
    	.imgPreviewArea{
    		background:lightgray;
    		width:150px;
        	height:150px;
    	}
        .imgPreviewArea:hover{
        	cursor:pointer;
        	background:white;
        }
        
        .thumbnailImgs{
        	width:150px;
        	height:150px;
        }
        .inputStyle{
        width:50%;
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
                    <form id="fileForm" method="post" enctype="multipart/form-data">
                        <table class="table table-bordered" style="width:80%; margin-left:auto; margin-right:auto;" >
                            <%--<tr>
                            	<th colspan="4">
                            		본문이미지 추가 : &nbsp; &nbsp; &nbsp; 
                            		<input type="file" name="contentImg" id="imgfilein0">
                            	</th>
                            </tr>--%>
                            <tr>
                                <td class="thumbnailImgs">
                                	<input multiple="true" type="file" name="thumbs" id="imgfilein">
                                </td>
                                
                            </tr>
                            
                            <tr>
                                <th colspan="2">물품이름</th>
                                <td colspan="2" style="padding:0;"><input type="text" name="name" placeholder="물품명" style="width:100%; height:50px;"></textarea></td>
                            </tr>
                            <tr>
                                <th colspan="2">가격</th>
                                <td colspan="2" style="padding:0;"><input type="text" name="price" placeholder="가격" style="width:100%; height:50px;"></td>
                            </tr>
                            <tr>
                                <th colspan="2">카테고리</th>
                                <td colspan="2" style="padding:0;">
                                	<select name="category" style="width:100%;">
                                		<option value="1/lunchbox">1_도시락</option>
                                		<option value="2/sidemenu">2_사이드</option>
                                		<option value="3/drink">3_음료수</option>
                                	</select>
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2">칼로리</th>
                                <td colspan="2" style="padding:0;"><input type="text" name="calories" placeholder="칼로리" style="width:80%; height:50px;"> &nbsp; kcal</td>
                            </tr>
                            <tr>
                                <th colspan="2">성분</th>
                                <td colspan="2">
                                	<input type="checkbox" name="ingredients" id="ingreChicken" value="chicken"> <label for="ingreChicken">닭고기</label> &nbsp; &nbsp;  
                                	<input type="checkbox" name="ingredients" id="ingreCow" value="meat"> <label for="ingreCow">소고기</label> &nbsp; &nbsp; 
                                	<input type="checkbox" name="ingredients" id="ingreEgg" value="egg"> <label for="ingreEgg">계란</label> &nbsp; &nbsp; 
                                	<input type="checkbox" name="ingredients" id="ingreMilk" value="milk"> <label for="ingreMilk">유제품</label><br>
                                	<input type="checkbox" name="ingredients" id="ingreChicken1" value="chicken_fried"> <label for="ingreChicken1">닭고기</label> &nbsp; &nbsp;  
                                	<input type="checkbox" name="ingredients" id="ingreCow1" value="meat_row"> <label for="ingreCow1">소고기</label> &nbsp; &nbsp; 
                                	<input type="checkbox" name="ingredients" id="ingreEgg1" value="egg_scramble"> <label for="ingreEgg1">계란</label> &nbsp; &nbsp; 
                                	<input type="checkbox" name="ingredients" id="ingreMilk1" value="milk_yogurt"> <label for="ingreMilk1">유제품</label>
   
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" style="padding:0px;">
                                    <textarea name="content" style="resize: none; height:100%; width:100%;" placeholder="상품간단설명"></textarea>
                                </td>
                            </tr>
                            
                        </table>
                        
                       
                        <div class="btnArea" align="center">
                            <br>
                            <button type="submit" class="btn btn-primary" id="formSave">저장</button>
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


</body>
<script>

$(function(){
	// -------------------------- 사진추가 -----------------------------
	$("#imgfile1").click(function(){ $("#imgfilein").click(); });
	
	$("#imgfile2").click(function(){ $("#imgfilein2").click(); });
	
	$("#imgfile3").click(function(){ $("#imgfilein3").click(); });
	
	$("#imgfile4").click(function(){ $("#imgfilein4").click(); });
	
		
	function readURL(input,num){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e) {
				var imgfileN = "#imgfile"+num
				var imgfileN_img = imgfileN+" img"
				$(imgfileN_img).attr('src', e.target.result);
				$(imgfileN).css('background','white');
			} 
			
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	$("#imgfilein1").change(function(){
		readURL(this,1);
	});
	
	$("#imgfilein2").change(function(){
		readURL(this,2);
	});
	
	$("#imgfilein3").change(function(){
		readURL(this,3);
	});
	
	$("#imgfilein4").change(function(){
		readURL(this,4);
	});
	
	// -------------------------- 성분리스트 추가 -----------------------------
	$(".ingreOptions").change(function(){
		var ingre = $(".ingreOptions option:selected").val();
		
		console.log(ingre);
	});
	
	
	// -------------------------- 다중파일 처리 ajax  -----------------------------
	$("#formSave").click(function(event){
		var formData = new FormData($('#fileForm')[0]); 
		$.ajax({ 
			type: "POST", 
			enctype: 'multipart/form-data', // 필수 
			url: 'adminAddingProduct.do', 
			data: formData, // 필수 
			processData: false, // 필수 
			contentType: false, // 필수 
			success: function (result) { 
				alert("성공!!!");	
			}, 
			error: function (e) { 
				alert("실패..");
			} 
		});
	});

});
	







</script>
</html>
