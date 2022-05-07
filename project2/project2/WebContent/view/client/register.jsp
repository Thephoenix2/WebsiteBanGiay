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
			    <li class="breadcrumb-item active" aria-current="page">Regiter</li>
			  </ol>
			</nav>
        </div>
    </div> 
  </div>
<!--   <section id="aa-catg-head-banner"> -->
<%--   <img src="${pageContext.request.contextPath}/view/client/assets/images/banner-login.jpg" alt="banner blog"> --%>
<!--     <div class="aa-catg-head-banner-area"> -->
<!--      <div class="container"> -->
<!--       <div class="aa-catg-head-banner-content"> -->
<!--         <h2>Đăng ký</h2> -->
<!--         <ol class="breadcrumb"> -->
<%--           <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>                    --%>
<!--           <li style="color:#fff">Đăng ký tài khoản</li> -->
<!--         </ol> -->
<!--       </div> -->
<!--      </div> -->
<!--    </div> -->
<!--   </section> -->
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
       
              <div class="col-md-8 col-md-push-2">
                <div class="aa-myaccount-register">                 
                 <h4>Đăng ký</h4>
                 <form name="formRegister" class="aa-login-form" method="post" action="${pageContext.request.contextPath}/view/client/register" >
                    <label for="">Họ tên<span>*</span></label>
                    <input type="text" placeholder="Name" name="name" required>   
                     <label for="">Email <span>*</span></label>
                    <input type="email" placeholder="useremail@gmail.com" name="email" required>
                    <label for="">Số điện thoại<span>*</span></label>
                    <input onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;" type="text" placeholder="Số điện thoại" name="phone" required>   
                     <label for="">Username<span>*</span></label>
                    <input type="text" placeholder="Username" name="username" required>
                    <label for="">Mật khẩu<span>*</span></label>  
                    <input type="password" placeholder="Password" name="password" required>     
                     <label for="">Nhập lại mật khẩu<span>*</span></label>  
                    <input type="password" placeholder="Password" name="password" required>     
                    <input type="date" style="display: none" placeholder="Password" name="created" id="the-date">   
                    <label for="">Địa chỉ<span>*</span></label>  
                    <input type="text" placeholder="Address" name="address" required>            
                      
                    <p style="color:red; display: block;"><%=(request.getAttribute("errMessage") == null) ? ""
        			: request.getAttribute("errMessage")%></p>
			        <p style="color:red; display: block;"><%=(request.getAttribute("Message") == null) ? ""
			        : request.getAttribute("Message")%></p>      
			         <button type="reset" class="btn btn-warning" value="Reset">Đặt lại</button>  
                      <button type="submit" class="btn btn-success">Đăng ký</button>                         
                  </form>
                </div>
              </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

<!--  end content-->
   <script>
		var date = new Date();
		
		var day = date.getDate();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();
		
		if (month < 10) month = "0" + month;
		if (day < 10) day = "0" + day;
		
		var today = year + "-" + month + "-" + day;
		
		
		document.getElementById('the-date').value = today;
</script>

<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
  
  
