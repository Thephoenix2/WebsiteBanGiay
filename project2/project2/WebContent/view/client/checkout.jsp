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
			    <li class="breadcrumb-item active" aria-current="page">Checkout</li>
			  </ol>
			</nav>
        </div>
    </div> 
  </div>


 <!-- Cart view section -->
 <section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
       <h2>Thanh toán</h2>
        <div class="checkout-area">
          <form action="${pageContext.request.contextPath}/view/client/transaction" method="post">
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group" >
                   <c:if test="${sessionScope.user == null}">
                   		<p> Bạn cần đăng nhập để thanh toán! Đăng nhập <a href="${pageContext.request.contextPath}/view/client/login" style="color: #754110">tại đây!</a></p>
                   </c:if>
				 <c:if test="${sessionScope.user != null}">
                    <!-- Shipping Address -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title" style="color:#754110">
                            Địa chỉ giao hàng
                        </h4>
                      </div>
<%--                       User: ${sessionScope.user} --%>
                      <div id="collapseFour">
                        <div class="panel-body">
                         <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Họ Tên*" value="${sessionScope.user.name}" required="required" name="transaction_recipient">
                              </div>                             
                            </div>
                          
                          </div> 
                         
                          <div class="row">                            
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="tel" placeholder="Số điện thoại*" value="${sessionScope.user.phone}" required="required" name="transaction_phone">
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <textarea cols="8" rows="3" required="required" placeholder="Địa chỉ*" name="transaction_address">${sessionScope.user.address}</textarea>
                              </div>                             
                            </div>                            
                          </div>
                           <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <textarea cols="8" rows="3" placeholder="Ghi chú" name="transaction_notes"></textarea>
                              </div>                             
                            </div>                            
                          </div>     
                          
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                  <input type="date" placeholder="Created" name="transaction_created" id="the-date" style="display: none">             
                              </div>                             
                            </div>                            
                          </div>             
                          
                          <div class="row" style="display: none">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
<%--                              <input type="text" placeholder="transaction_userid" name="transaction_userid" value="${users.id }">  --%>
                                  
                                 <input type="text" placeholder="amount" name="transaction_amount" value="${sumprice}">         
                              </div>                             
                            </div>                            
                          </div>              
                        </div>
                      </div>
                    </div>
				</c:if>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="checkout-right">
                  <h4>Thông tin đơn hàng</h4>
                  <div class="aa-order-summary-area">
                    <table class="table table-responsive">
                      <thead>
                        <tr>
                          <th>Sản phẩm</th>
                          <th>Số tiền</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${order.items}" var="item">
                        <tr>
                          <td>${item.product.name } <strong> x  ${item.qty}</strong></td>
                          <td><fmt:parseNumber type="number" value ="${item.price}"></fmt:parseNumber>00 VNĐ</td>
                        </tr>
                       </c:forEach>
                      </tbody>
                      <tfoot>
                         <tr>
                          <th>Tổng cộng</th>
                          <td><strong><fmt:parseNumber type="number" value ="${sumprice}"></fmt:parseNumber> VNĐ</strong></td>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <h4>Hình thức thanh toán</h4>
                  <div class="aa-payment-method">                    
                    <label for="cashdelivery"><input type="radio" id="cashdelivery" name="transaction_payment" checked value="1"> Thanh toán khi nhận hàng (COD) </label>
                    <label for="paypal"><input type="radio" id="paypal" name="transaction_payment" value="0" > Thanh toán bằng thể ngân hàng (ATM) </label>
                       <lable ><input  type="checkbox" id="trans" name="transaction_status" value="1" checked></input> Xác nhận điều khoản <br> <a href="${pageContext.request.contextPath}/view/client/rules.jsp">tại đây</a></lable>
                    <input type="submit" onclick="myFunction()" value="Đặt hàng" class="btn btn-lg btn-dark">
                  </div>
                   <c:if test="${sessionScope.username != null && sessionScope.order == null}">
                   <br>
<!--                    		<p style="color: red">Bạn đã đặt hàng thành công!</p> -->
					<div class="alert alert-success" role="alert">
  						<h4 class="alert-heading">Bạn đã đặt hàng thành công!</h4>
 						 </div>
                   </c:if>
                </div>
              </div>
            </div>
          </form>
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
		function myFunction() {
			  alert("Đã đặt hàng thành công");
			}
</script>
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->


  
