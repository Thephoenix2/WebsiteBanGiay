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
               		<div class="card-title">Thêm sản phẩm</div>
                <hr>
                <form method="post" action="${pageContext.request.contextPath}/admin/product/add">
                
               
                  <div class="form-group">
                    <label class="text-dark" for="input-1">Tên sản phẩm</label>
                    <input type="text" class="form-control text-dark" id="input-1" placeholder="Tên sản phẩm"  name="product-name" required>
                  </div>
                  
        
                  <div class="form-group">
	                  <label class="text-dark" for="input-2">Chuyên mục</label>
	                  <div>
	                    <select class="form-control text-dark valid" id="input-6" name="product-cate" aria-invalid="false">
	                    <c:forEach items="${catelist}" var="cate">
	                        <option value="${cate.id }">${cate.name }</option>
	                    </c:forEach>
	                    </select>
	                  </div>
	                </div>
	                 <div class="form-group">
                    <label class="text-dark" for="input-1">Ngày</label> 
                    <input type="date" class="form-control text-dark" id="the-date" placeholder="Ngày đăng" name="product-day">
                  </div>
	                <div class="form-group">
                    <label class="text-dark" for="input-1">Giá</label>
                    <input onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;" type="text" class="form-control text-dark" id="input-1" placeholder="Giá" name="product-price" required>
                  </div>
                    <div class="form-group">
	                  <label class="text-dark" for="input-2">Trạng thái</label>
	                  <div>
	                    <select class="form-control valid text-dark" id="product-status" name="product-status" required aria-invalid="false">
	                        <option value="1">Còn hàng</option>
	                        <option value="0">Hết hàng</option>
	                    </select>
	                  </div>
	                </div>
	                 <div class="form-group">
		                <label class="text-dark" for="input-2">Giảm giá</label>
		                <div class="input-group">
		                <input onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;" type="text" class="form-control text-dark" placeholder="Giảm ... %" name="product-discount">
		                <div class="input-group-append">
		                <button class="btn btn-light" type="button">%</button>
		                </div>
		                </div>
	              </div>
                 <div class="form-group">
                  <label for="input-2" class="text-dark">Mô tả</label>
                  <div>
                    <textarea class="form-control text-dark" rows="2" id="input-17" name="product-desc"></textarea>
                  </div>
                </div>                
                
                
                 <div class="form-group">
                    <label class="text-dark" for="input-1">Ảnh</label>
                    
                    <input type="file" class="form-control text-dark" id="input-1" placeholder="Tên hình" name="product-image">
                  </div>
                  <br>
               <div class="form-footer">
                    <button class="btn btn-danger"><i class="fa fa-times"></i><a href="${pageContext.request.contextPath}/admin/product/list">Hủy</a></button>
                    <button type="submit" class="btn btn-success"><i class="fa fa-check-square-o"></i> Thêm</button>
                </div>
                </form>
            </div> 
           </div>
        </div>
    </div>






</div>
</div>
</div>
   
<script>
		var date = new Date();
		
		var day = date.getDate();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();
		
		if (month < 10) month = "0" + month;
		if (day < 10) day = "0" + day;
		
		var today = year + "-" + month + "-" + day;
		
		
		document.getElementById('the-date').value = today;
</script>

 <script>
   function validateNumber(e) {
       const pattern = /^[0-9]$/;

       return pattern.test(e.key )
   }
   
   </script>
    <jsp:include page = "./footer/footer.jsp" flush = "true" />