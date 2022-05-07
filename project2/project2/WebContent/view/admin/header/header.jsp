<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/admin/assets" var="url"/>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Admin!</title>
    
    
    
    
    
  </head>
  <body>

	<div class="container-fluid">
  		<div class="row">
            <div class="col">
              
            </div>
            <div class="col-md-auto">
              
            </div>
            <div class="col col-lg-2">
              Admin:  <%=session.getAttribute("admin-username") %>
              <li> <a href="${pageContext.request.contextPath}/admin/logout"> Đăng xuất</a> </li>
            </div>
          </div>
          
          <div class="row">
         	 <div class="col-2">
         	 	<jsp:include page = "./left-sidebar.jsp" flush = "true" />
         	 </div>
         	 <div class="col-10">


