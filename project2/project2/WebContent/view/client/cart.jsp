<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
			    <li class="breadcrumb-item active" aria-current="page">Cart</li>
			  </ol>
			</nav>
        </div>
    </div> 
  </div>

<!--   <section id="aa-catg-head-banner"> -->
<%--    <img src="${pageContext.request.contextPath}/view/client/assets/images/banner-cart.png" alt="banner giỏ hàng"> --%>
<!--    <div class="aa-catg-head-banner-area"> -->
<!--      <div class="container"> -->
<!--       <div class="aa-catg-head-banner-content"> -->
<!--         <h2>Giỏ hàng</h2> -->
<!--         <ol class="breadcrumb"> -->
<%--           <li><a href="${pageContext.request.contextPath}">Trang chủ </a></li> --%>
<!--           <li style="color:#fff">Thông tin giỏ hàng</li> -->
<!--         </ol> -->
<!--       </div> -->
<!--      </div> -->
<!--    </div> -->
<!--   </section> -->
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
       		<h2>Giỏ hàng</h2>
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="${pageContext.request.contextPath}/view/client/cart-update" method="post">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        
                        <th>Image</th>
                        <th>Sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Giảm giá</th>
                        <th>Thành Tiền</th>
                        <th>Bỏ chọn</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${order.items}" var="item">
                      <tr>
                        
                        <td><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${item.product.image}" alt="img${item.product.name }"></a></td>
                        <td><a class="aa-cart-title" href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}">${item.product.name }</a></td>
                        <td><fmt:parseNumber type="number" value ="${item.product.price}"></fmt:parseNumber> VNĐ</td>
                        <td><input class="aa-cart-quantity" type="number" name="${item.product.id}" value="${item.qty}" min=1></td>
                        <td><fmt:parseNumber type="number" value ="${item.product.discount}"></fmt:parseNumber> %</td>
                        <td><fmt:parseNumber type="number" value ="${item.price}"></fmt:parseNumber> VNĐ</td>
                        <td><a class="remove" href="${pageContext.request.contextPath}/view/client/cart-delete?id=${item.product.id}"><fa class="fa fa-close"></fa></a></td>
                      </tr>
          			 </c:forEach>
          			 <tr>
                        <td colspan="6" class=""><strong>TỔNG TIỀN</strong></td>
                        <td><strong><fmt:parseNumber type="number" value ="${sumprice}"></fmt:parseNumber> VNĐ</strong></td>
                      </tr>
                      <tr>
                        <td colspan="7" class="aa-cart-view-bottom">
                          <input class="btn aa-cart-view-btn" type="submit" value="Cập nhật giỏ hàng">
                        </td>
                      </tr>
                     
                      </tbody>
                  </table>
                  </div>
             </form>
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <h4>Thông tin giỏ hàng</h4>
               <table class="aa-totals-table">
                 <tbody>                  
                   <tr>
                     <th>Tổng cộng</th>
                     <td><strong><fmt:parseNumber type="number" value ="${sumprice}"></fmt:parseNumber> VNĐ</strong></td>
                   </tr>
                 </tbody>
               </table>
               <a href="${pageContext.request.contextPath}/view/client/checkout" class="btn aa-cart-view-btn">Thanh toán</a>
             </div>
           </div>
         </div>
       </div>
     </div>
    </div>
 </section>
 <!-- / Cart view section -->

<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
