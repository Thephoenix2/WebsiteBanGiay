<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body"> 
               		<h5 class="card-title text-dark">Danh sách User</h5>
                <div class="table-responsive">
                  <table class="table table-striped text-dark">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Email</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Username</th>
                        <th scope="col">Ngày tạo</th>
                         <th scope="col">Hành động</th>
             
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${userList}" var="user">
                      <tr>
                        <td scope="row">${user.id}</td>
                        <td>${user.name }</td>
        				<td>${user.email }</td>
        				<td>${user.phone }</td>
        				<td>${user.username }</td>
        				<td>${user.created }</td>
        				 <td>
        				 
	        				 <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/user/delete?user-id=${user.id}" role="button">Del</a>
	        				 <a class="btn btn-success" href="${pageContext.request.contextPath}/admin/user/edit?user-id=${user.id}" role="button">Edit</a>
<%--                           <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/user/delete?user-id=${user.id}">Xóa</a></button> --%>
                         
<%--                           <button class="btn btn-success"><a href="${pageContext.request.contextPath}/admin/user/edit?user-id=${user.id}">Sửa</a></button> --%>
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