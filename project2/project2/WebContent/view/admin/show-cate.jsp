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
             <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/cate/add" role="button">add cate</a>
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body"> 
               	<h5 class="card-title">Danh sách chuyên mục</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên chuyên mục</th>                        
                        <th scope="col">Hành động</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${catelist}" var="cate">
                      <tr>
                        <td scope="row">${cate.id}</td>
                        <td>${cate.name}</td>        				
        				 <td>
        				  <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/cate/delete?id=${cate.id}" role="button">Del</a>
	        				 <a class="btn btn-success" href="${pageContext.request.contextPath}/admin/cate/edit?id=${cate.id}" role="button">Edit</a>
<%--                          <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/cate/delete?id=${cate.id}">Xóa</a></button> --%>
                         
<%--                           <button class="btn btn-success"><a href="${pageContext.request.contextPath}/admin/cate/edit?id=${cate.id}">Sửa</a></button> --%>
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