<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>

  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->
<!--  content -->
 <!-- catg header banner section -->
  <div class="container">
  	<div class="row">
        <div class="col-lg-12 mt-2">
            <nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Userinfo</li>
			  </ol>
			</nav>
        </div>
    </div> 
  </div>
 <!-- end brad -->
 <div class="content">
<%--  	User: ${sessionScope.user} --%>
 	
 <div class="container">
  <div class="row">
        <div class="col-lg-12">
            
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body"> 
               		<div class="card-title">Sửa User</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/user/edit" method="post">
                  <div class="form-group">
                    <label class="text-dark" for="input-1">ID</label>
                    <input type="text" class="form-control text-dark" id="input-1" readonly="readonly" placeholder="ID" value="${user.id}" name="user-id">
                  </div>
                  <div class="form-group">
                    <label class="text-dark" for="input-1">Họ tên</label>
                    <input type="text" class="form-control text-dark" id="input-2" placeholder="Họ tên" value="${user.name}" name="user-name" required>
                  </div>
                  <div class="form-group">
                    <label class="text-dark" for="input-2">Email</label>
                    <input type="email" class="form-control text-dark" id="input-3" placeholder="Địa chỉ Email" value="${user.email}" name="user-email" required>
                  </div>
                  <div class="form-group">
                    <label class="text-dark" for="input-3">Số điện thoại</label>
                    <input type="text" class="form-control text-dark" id="input-4" placeholder="Số điện thoại" value="${user.phone}" name="user-phone" required>
                  </div>
                  <div class="form-group">
                    <label class="text-dark" for="input-3">UserName</label>
                    <input type="text" class="form-control text-dark" id="input-5" placeholder="Username" value="${user.username}" name="user-userName" required>
                  </div>
                  <div class="form-group">
                    <label class="text-dark" for="input-4">Mật khẩu</label>
                    <input type="password" class="form-control text-dark" id="myinput" placeholder="Mật khẩu" value="${user.password}" name="user-password" required>
					<input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
					<script>function myFunction1() {
                    	  var x = document.getElementById("myinput");
                    	  if (x.type === "password") {
                    	    x.type = "text";
                    	  } else {
                    	    x.type = "password";
                    	  }
                    	}
					</script>                   
                  </div>
                  <div class="form-group">
                    <label class="text-dark" for="input-5">Date</label>
                    <input type="date" class="form-control text-dark" id="input-6" placeholder="Ngày tạo" value="${user.created}" name="user-created">
                  </div>
                  
                  <div class="form-group">
                    <label class="text-dark" for="input-3">Address</label>
                    <input type="text" class="form-control text-dark" id="input-5" placeholder="Address" value="${user.address}" name="user-address">
                  </div>
                  <br>
                 <div class="form-group">
                    <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/view/client/userinfo">Hủy</a></button>
                         
                     <button type="submit" class="btn btn-success">Cập nhật</button>
                  </div>
                </form>
            </div> 
           </div>
        </div>
    </div>
      
 



<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
  
  
