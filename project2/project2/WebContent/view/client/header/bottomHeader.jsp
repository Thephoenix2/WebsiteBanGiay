<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
         <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
               <!-- cart box -->

               <div class="col col-lg-6">              
              </div>
              <div class="col col-lg-3">  
              
              
                <c:if test="${sessionScope.user != null}">
                   
                  <a><strong>Chào</strong> ${sessionScope.user.username }</a>
                  <a href="${pageContext.request.contextPath}/view/client/logout"class="btn btn-danger" role="button" >Đăng xuất</a>
<%--                   <a href="${pageContext.request.contextPath}/view/client/userinfo">Userinfo </a> --%>
                  <a href="${pageContext.request.contextPath}/view/client/transactionclient?id=${sessionScope.user.id}">Trans user </a>
                  
                 </c:if>
 
                 <c:if test="${sessionScope.user == null}">
                   <a href="${pageContext.request.contextPath}/view/client/register" class="btn btn-warning" role="button" >Đăng ký</a>
                   <a href="${pageContext.request.contextPath}/view/client/login" class="btn btn-success" role="button" >Đăng nhập</a>
<%--                    <a href="${pageContext.request.contextPath}/AdminLoginController">Admin </a> --%>
                 </c:if>
              </div>
              
              <div class="col col-lg-2">              
                <div class="aa-cartbox">
                  <a class="aa-cart-link" href="${pageContext.request.contextPath}/view/client/cart">
                   <span class="fas fa-cart-arrow-down"></span>
<!--                     <span class="aa-cart-title">GIo HÀNG</span>                    -->
<%--                     <c:if test="${length_order != NULL}"> --%>
<%--                       <span class="aa-cart-notify">${length_order}</span> --%>
<%--                     </c:if> --%>
                  </a>
                  <div class="aa-cartbox-summary">
                    <ul class="scroll-product">
                    <c:forEach items="${order.items}" var="item" >
                      <li>
                        <a class="aa-cartbox-img" href="${pageContext.request.contextPath}/view/client/cart"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${item.product.image}" alt="img"></a>
                        <div class="aa-cartbox-info">
                          <h4><a href="${pageContext.request.contextPath}/view/client/cart">${item.product.name}</a></h4>
                           <p>${item.qty} x ${item.product.price * (1-((item.product.discount)/100))} VNĐ</p>
                        </div>
                      </li>
                       </c:forEach>               
                    </ul>
                    <div class="total-detailproduct">
                        <span class="aa-cartbox-total-title">
                          <b>Tổng:</b>
                        </span>
                        <span class="aa-cartbox-total-price">
                       ${sumprice} VNĐ
                        </span>
                    </div>
                    <a class="btn aa-cartbox-checkout aa-primary-btn" href="${pageContext.request.contextPath}/view/client/cart">Chi tiết</a>
<%--                     <a class="aa-cartbox-checkout aa-primary-btn" href="${pageContext.request.contextPath}/view/client/checkout">Thanh toán</a> --%>
                  </div>
                </div>

              </div>




              
              <!-- / cart box -->
                         
            </div>
          </div>
        </div>
      </div>
    </div>

