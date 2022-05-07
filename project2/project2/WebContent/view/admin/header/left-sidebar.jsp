<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/admin/assets" var="url"/>

<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
    Admin
  </a>
  <a href="${pageContext.request.contextPath}/admin/homepage" class="list-group-item list-group-item-action">Home</a>
  <a href="${pageContext.request.contextPath}/admin/admin/list" class="list-group-item list-group-item-action">Quản lí Admin</a>
  <a href="${pageContext.request.contextPath}/admin/user/list" class="list-group-item list-group-item-action">Quản lí Tài Khoản</a>
  <a href="${pageContext.request.contextPath}/admin/cate/list" class="list-group-item list-group-item-action">Quản lí loại sản phẩm</a>
  <a href="${pageContext.request.contextPath}/admin/product/list" class="list-group-item list-group-item-action">Quản lí Sản Phẩm</a>  
  <a href="${pageContext.request.contextPath}/admin/order/list" class="list-group-item list-group-item-action">Quản lí Đơn Hàng</a>
  <a href="${pageContext.request.contextPath}/admin/order/list-detail" class="list-group-item list-group-item-action">Quản lí Chi Tiết</a>
  <a href="${pageContext.request.contextPath}/ChartController" class="list-group-item list-group-item-action">Thống Kê</a>
</div>



