<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
  
   <div class="row">
        <div class="col-lg-12">
            
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body"> 
               		<div class="card-title">Sửa chuyên mục</div>
                <hr>
          	
	                <form action="${pageContext.request.contextPath}/admin/cate/edit" method="post">
	                  <div class="form-group">
	                    <label class="text-dark" for="input-1">ID</label>
	                    <input type="text" class="form-control text-dark" readonly id="input-1" placeholder="ID" name="id" value="${catelist.id}" required>
	                  </div>
	                  <div class="form-group">
	                    <label class="text-dark" for="input-1">Tên chuyên mục</label>
	                    <input type="text" class="form-control text-dark" id="input-1" placeholder="Tên chuyên mục" name="name" value="${catelist.name }" required>
	                  </div>
		              <br>
	                   <div class="form-footer">
	                      <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/cate/list">Hủy</a></button>
                         
                     		<button type="submit" class="btn btn-success">Cập nhật</button>
	                   </div> 
	               
	                </form>
            </div> 
           </div>
        </div>
    </div>






</div>
</div>
</div>
  
  
  
    
  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />