<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
<!-- Google Font: Source Sans Pro -->
<%@ include file="./inc/link.jsp" %>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/static/manager/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" height="60" width="60">
  </div>

  <!-- Navbar -->
	<%@ include file="./inc/navbar.jsp" %>
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/static/manager/index3.html" class="brand-link">
      <img src="/static/manager/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <%@ include file="./inc/sidebar.jsp" %>
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <%@ include file="./inc/content_wrapper.jsp" %>

	<!-- footer -->
	<%@ include file="./inc/footer.jsp" %>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<%@ include file="./inc/jquery.jsp" %>
</body>
</html>