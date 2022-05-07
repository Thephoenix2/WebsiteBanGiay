<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
  response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma" , "no-cache");
  response.setHeader("Expires" , "0");
  
  
  if (session.getAttribute("admin-username") == null){
	  response.sendRedirect(request.getContextPath() + "/admin/login");
  }
  %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
        <div class="row">
 
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Danh sách đơn hàng</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                       <th scope="col">Tài khoản User</th>
                        <th scope="col">Họ Tên</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Địa chỉ</th>
                         <th scope="col">Amount</th>
                         <th scope="col">Payment</th>
                         <th scope="col">Status</th>
                         <th scope="col">Notes</th>
                         <th scope="col">Created</th>
                          <th scope="col">Admin_id</th>
                         <th scope="col">Hành động</th>  
                        
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${order}" var="order">
                      <tr>
                        <td scope="row">${order.id}</td>
                         <td>${order.user_id}</td>
                        <td>${order.recipient}</td>
                        <td>${order.phone}</td>
                        <td>${order.address}</td>
                        <td><fmt:parseNumber type="number" value ="${order.amount}"></fmt:parseNumber></td>   
                          <td>  <c:choose>
	                        <c:when test="${order.payment == 0}"> 
	                        	<c:out value="COD"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Thẻ nội địa ATM"/>
						    </c:otherwise>
                       	</c:choose>
                          
                          </td>
                          <td>
                          	  <c:choose>
	                        <c:when test="${order.status == 1}"> 
	                        	<c:out value="Chưa thanh toán"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Đã thanh toán"/>
						    </c:otherwise>
                       	</c:choose>
                          </td>
                          <td>${order.notes}</td>
                           <td>${order.created}</td>
                            <td>${order.admin_id}</td>
        				
        				 <td>
        				 
<%--         				  <a href = "<c:url value = "/view/admin/show-orderdetail.jsp"/>">View</a> --%>
	        			  <a class="btn btn-success" href="${pageContext.request.contextPath}/admin/order/edit?id=${order.id}" role="button">Edit</a>  
<%--                          <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/order/delete?id=${order.id}">Xóa</a></button> --%>
                         
<%--                           <button class="btn btn-success"><a href="${pageContext.request.contextPath}/admin/order/edit?id=${order.id}">Sửa</a></button> --%>
                        </td>
                     </tr>
                    </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
   </div>
</div>
</div>  
 
    <jsp:include page = "./footer/footer.jsp" flush = "true" />