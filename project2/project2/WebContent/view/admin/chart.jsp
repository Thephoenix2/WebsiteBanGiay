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
            <div class="card">
                <div class="card-body"> 
               		 <h5 class="card-title">Doanh Thu theo Loai</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">Loại</th>
                        <th scope="col">Doanh Thu</th>
                        <th scope="col">Số Lượng</th>
                        <th scope="col">Giá Thấp nhất</th>
                        <th scope="col">Giá Cao nhất</th>                      
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${chartList}" var="chart">
                      <tr>
                        <th scope="row">${chart.loai}</th>
                        <td><fmt:parseNumber type="number" value ="${chart.doanhthu}"></fmt:parseNumber></td>
                        <td>${chart.soluong}</td>
                        <td><fmt:parseNumber type="number" value ="${chart.giathapnhat}"></fmt:parseNumber></td>
                        <td><fmt:parseNumber type="number" value ="${chart.giacaonhat }"></fmt:parseNumber></td>
                      </tr>
                      </c:forEach>
                     
                    </tbody>
                  </table>
                </div>
            </div> 
           </div>
           
           <div class="card">
                <div class="card-body"> 
               		 <h5 class="card-title">Doanh Thu theo thang</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">Tháng</th>
                        <th scope="col">Số Lượng</th>     
                        <th scope="col">Doanh Thu</th>                 
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${chartMonth}" var="chart">
                      <tr>
                        <th scope="row">${chart.thang}</th>
                        <td>${chart.soluong}</td>
                        <td><fmt:parseNumber type="number" value ="${chart.doanhthu}"></fmt:parseNumber></td>
                      </tr>
                      </c:forEach>
                     
                    </tbody>
                  </table>
                </div>
            </div> 
           </div>
        </div>
    </div>
    
    <jsp:include page = "_chart-google.jsp" />
  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />