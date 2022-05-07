<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value ="/view/admin/assets" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/> 
  <title>Admin web</title>
  <!-- loader-->
  <link href="${url}/css/pace.min.css" rel="stylesheet"/>
  <script src="${url}/js/pace.min.js"></script>
  <!--favicon-->
  
  <!-- Bootstrap core CSS-->
  <link href="${url}/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="${url}/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="${url}/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="${url}/css/app-style.css" rel="stylesheet"/>
  <script src="${url}/js/jquery.min.js"></script>
  <script src="${url}/js/popper.min.js"></script>
  <script src="${url}/js/bootstrap.min.js"></script>
  <script src="${url}/plugins/simplebar/js/simplebar.js"></script>
  <script src="${url}/js/sidebar-menu.js"></script>
  <script src="${url}/js/app-script.js"></script>
  <link rel="stylesheet" type="text/css" href="${url}/css/login.css">
	<link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  
</head>

<body>


<!-- Start wrapper-->
  <form action="${pageContext.request.contextPath}/admin/login"  method="post">
  
  
 <div class="login">
		<h2>Admin Login</h2>
		<br>
		
		 <input type="text" class="form-control text-dark" placeholder="Username" name="admin-username" required>
		<br>
		
		<input type="password" class="form-control text-dark" placeholder="Password" name="admin-password" required>
		<br>
		<div class="check">
			<input class="checkbox" type="checkbox" placeholder="Enter password"> Remember me
		</div>
		<br>
		<div><b> <span style="color:#00d9e8"> ${errorMessage}</span></b></div>
		<button type="submit" class="btn btn-info">Đăng nhập</button>
		<br>
		<a href="${pageContext.request.contextPath}/">TRANG CHỦ</a>
		
	</div>
	
	
	
	
</form>
 

</body>
</html>
