<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>

   
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->
  <script>
	function myFunction() {
	  alert("Cảm ơn bạn đã đóng góp ý kiến cho chúng tôi");
	  document.getElementsByClassName("form-group").reset();
	}
  </script>

<!--  content -->
   <!-- catg header banner section -->
  <div class="container">
  	<div class="row">
        <div class="col-lg-12 mt-2">
            <nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Home</a></li>
			    <li class="breadcrumb-item active" aria-current="page">Contact</li>
			  </ol>
			</nav>
        </div>
    </div> 
  </div>
  <!-- / catg header banner section -->
<!-- start contact section -->
 <div class="container my-4" >
    <h1>Liên hệ</h1>
    <div class="row">
    <form onsubmit="myFunction()">
        <div class="col-md-7">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7838.684254869503!2d106.70676642475235!3d10.785086936675276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1547181657956" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label><strong>Họ và tên<span class="text-danger">(*)</span></strong></label>
                <input type="text" placeholder="Ví dụ: Phan Nhật Long" name="fullname" class="form-control" required>
            </div>
            <div class="form-group">
                <label><strong>Điện Thoại<span class="text-danger">(*)</span></strong></label>
                <input type="text" placeholder="Ví dụ: 0909..." name="phone" class="form-control" required>
            </div>
            <div class="form-group">
                <label><strong>Email<span class="text-danger">(*)</span></strong></label>
                <input type="email" placeholder="Ví dụ: Long@gmail.com" name="mail" class="form-control" required>
            </div>
            <div class="form-group">
                <label><strong>Tiêu Đề</strong></label>
                <input type="text" placeholder="Ví dụ: Hỏi Giá Trị" name="title" class="form-control" required>
            </div>
            <div class="form-group">
                <label><strong>Nội Dung<span class="text-danger">(*)</span></strong></label>
                <textarea placeholder="Nội dung cần liên hệ" name="conten" class="form-control" ></textarea>
            </div>
            <p style="color:red; display: block;"><%=(request.getAttribute("errMessage") == null) ? ""
        			: request.getAttribute("errMessage")%></p>
			        <p style="color:red; display: block;"><%=(request.getAttribute("Message") == null) ? ""
			        : request.getAttribute("Message")%></p>      
            <div class="form-group">
               
               <button type="submit" class="btn btn-success" >Gửi Liên Hệ</button>
               
            </div>
            <div class="form-group">
               <span class="text-danger">(*) Thông tin bắt buộc phải nhập</span>
            </div>
        </div>
        </form>
    </div>

</div>
<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->


  
