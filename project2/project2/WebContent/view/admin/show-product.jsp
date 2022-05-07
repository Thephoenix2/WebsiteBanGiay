<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
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
             <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/product/add" role="button">add pro</a>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body"> 
               		 <h5 class="card-title">Danh sách sản phẩm</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">ID danh mục</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Status</th>
                        <th scope="col">Giảm giá</th>                        
                        <th scope="col">Hành động</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${productlist}" var="product">
                      <tr>
                        <th scope="row">${product.id }</th>
                        <td>${product.name }</td>
                        <td><img style="    width: 110px;height: 67px; object-fit: cover;border: 1px solid #fff;" src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image}" alt="${product.name}"></td>
                        <td>${product.catalog_id }</td>
                        <td><fmt:parseNumber type="number" value ="${product.price }" ></fmt:parseNumber></td>
                        <td>
                        
                        <c:choose>
	                        <c:when test="${product.status == 1}"> 
	                        	<c:out value="Còn hàng"/>
	                       	</c:when>
	                       	<c:otherwise>
						        <c:out value="Hết hàng"/>
						    </c:otherwise>
                       	</c:choose>
                        </td>
                        <td>${product.discount }%</td>                        
                        <td>
                        	 <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/product/delete?id=${product.id}" role="button">Del</a>
	        				 <a class="btn btn-success" href="${pageContext.request.contextPath}/admin/product/edit?id=${product.id}" role="button">Edit</a>
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