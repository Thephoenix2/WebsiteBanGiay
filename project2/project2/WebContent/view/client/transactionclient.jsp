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
			    <li class="breadcrumb-item active" aria-current="page">Transactionclient</li>
			  </ol>
			</nav>
        </div>
    </div> 
  </div>


 <!-- Cart view section -->
 <div class="row">
 <c:if test="${sessionScope.user == null}">
   <p> Bạn cần đăng nhập để thanh toán! Đăng nhập <a href="${pageContext.request.contextPath}/view/client/login" style="color: #754110">tại đây!</a></p>
  </c:if>
   <c:if test="${sessionScope.user != null}">
<%--    	User: ${sessionScope.user} --%>
<%--    	asdasd:${sessionScope.user.id} --%>
   	
   	<div class="card-body">
   		
   	
   	
                <h5 class="card-title">Danh sách đơn hàng</h5>
                
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>                       
                        <th scope="col">Họ Tên</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Địa chỉ</th>
                         <th scope="col">Price</th>
                         <th scope="col">Payment</th>
                         <th scope="col">Status</th>
                         <th scope="col">Notes</th>                        
                         
                        
                      </tr>
                    </thead>
                    <tbody>
                    
                    
                    
                    
                  <c:forEach items="${trans}" var="trans">
                   
                     	<tr>
                     	
                        <td class="table-row-link"
              data-link="${pageContext.request.contextPath}/view/client/transaction?id=${trans.id}">${trans.id}</td>
                         
                        <td>${trans.recipient}</td>
                        <td>${trans.phone}</td>
                        <td>${trans.address}</td>
                        <td><fmt:parseNumber type="number" value ="${trans.amount}"></fmt:parseNumber></td>   
                          <td>  <c:choose>
	                        <c:when test="${trans.payment == 1}"> 
	                        	<c:out value="COD"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Thẻ nội địa ATM"/>
						    </c:otherwise>
                       	</c:choose>
                          
                          </td>
                          <td>
                          	  <c:choose>
	                        <c:when test="${trans.status == 1}"> 
	                        	<c:out value="Chưa thanh toán"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Đã thanh toán"/>
						    </c:otherwise>
                       	</c:choose>
                          </td>
                          <td>${trans.notes}</td>
        				 
                     </tr>    
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
 	</c:if>
          
</div>
 <!-- / Cart view section -->

<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
  
  
