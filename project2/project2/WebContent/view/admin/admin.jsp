<%@page import="java.sql.ResultSet"%>
<%@page import="project.jdbc.connectDB"%>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%> 
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
  		<div class="col-lg-12 mb-3">
  			<a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/admin/add" role="button">add</a>

  		</div>
  		<div class="col-lg-12">
  			<div class="card">
  				<div class="card-body"> 
                <h5 class="card-title">Danh sách Admin</h5> 
                <div class="table-responsive">              
                  <table class="table table-striped"> 
                    <thead> 
                      <tr> 
                        <th scope="col">#</th> 
                        <th scope="col">Tên đăng nhập</th> 
                        <th scope="col">Tên Admin</th>
                        <th scope="col">Hành động</th>                        
                     </tr> 
                    </thead> 
                    <tbody> 
                  <c:forEach items="${adminlist}" var="admin"> 
                      <tr> 
                        <td scope="row">${admin.id}</td> 
                        <td>${admin.username}</td> 
        				<td>${admin.name}</td> 
        				 <td> 
        				 	<a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/admin/delete?admin-id=${admin.id}" role="button">Del</a>
        				 	<a class="btn btn-success" href="${pageContext.request.contextPath}/admin/admin/edit?id=${admin.id}" role="button">Edit</a>
        				 	
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