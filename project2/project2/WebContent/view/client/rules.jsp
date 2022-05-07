<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  
  
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
      	<div>
      	Các điều khoản khi Bạn Chọn Cod :
      	<br>
      	1.Chắc chắn rằng mình thích
      	<br>
      	2.Đừng Bùng hàng 
      	<br>
      	3.Enjoy cái moment này
      	<br>
      	4.Khi bạn thanh toán bằng ATM thì không cẩn phải xác nhận điều khoản
      	</div>
      </div>
     </div>
    </section>
    
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
      