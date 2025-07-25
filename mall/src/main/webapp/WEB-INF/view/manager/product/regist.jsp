<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>상품 등록</title>
	<%@ include file="../inc/head_link.jsp" %>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/static/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
	<%@ include file="../inc/navbar.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
	<%@ include file="../inc/left_bar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">상품 등록</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">상품관리>상품등록</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->


    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      
            <!-- 상품 등록 폼 시작 -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">상품 등록 폼</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form id ="form1">
                <div class="card-body">
                	<!-- 카테고리 영역 시작 -->
	                  <div class="row">
	                    <div class="col-sm-6">
	                      <!-- Select multiple-->
	                      <div class="form-group">
	                        <label>상위 카테고리</label>
	                        <select class="form-control" id="topcategory"></select>
	                      </div>
	                    </div>
	                    <div class="col-sm-6">
	                      <div class="form-group">
	                        <label>하위 카테고리</label>
	                           <select class="form-control" name="subcategory.subcategory_id" id="subcategory"></select>
	                      </div>
	                    </div>
	                  </div>
                	<!-- 카테고리 영역 끝 -->
                  <div class="form-group">
                    <input type="text" class="form-control" name="product_name" placeholder="상품명 입력">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" name="brand" placeholder="브랜드 입력">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" name="price" placeholder="가격 입력">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" name="discount" placeholder="할인가 입력">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" name="introduce" placeholder="간단소개 100자 이하 ">
                  </div>
				   <div class="form-group">
                       <select class="form-control" name="color" id="color"  multiple="multiple">
                       </select>
	              </div>
				  
				  <div class="form-group">
                       <select class="form-control" name="size"  id="size"  multiple="multiple">
                       </select>
	              </div>
	              
                  <div class="form-group">
					<!-- 편집 시작 -->
			      	<textarea id="summernote" name="detail"></textarea>
					<!-- 편집기 끝-->
                  </div>
                  
                  <div class="form-group">
                    <div class="input-group">
                      <div class="custom-file">                      
                        <input type="file" class="custom-file-input" name="photo" id="photo" multiple="multiple">
                        <label class="custom-file-label" for="exampleInputFile">상품 이미지 선택</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text">Upload</span>
                      </div>
                    </div>
                    <div id="preview" style ="width: 100%">
                    	
                    </div>
                  </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-secondary" id="bt_regist">Submit</button>
                  <button type="button" class="btn btn-secondary" id="bt_list">목록</button>
                </div>
              </form>
            </div>
            <!-- 상품 등록 폼 끝-->
        
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	<%@ include file="../inc/footer.jsp" %>

  <!-- Control Sidebar -->
	<%//@ include file="../inc/right_bar.jsp" %>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
	<%@ include file="../inc/footer_link.jsp" %>
	
</body>
</html>