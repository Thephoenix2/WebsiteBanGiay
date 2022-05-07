<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
  
   <div class="row">
        <div class="col-lg-12">
            
        </div>
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body"> 
               		<div class="card-title">Thêm chuyên mục</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/cate/add" method="post">
                
                  <div class="form-group">
                    <label class="text-dark" for="input-1">Tên chuyên mục</label>
                    <input type="text" class="form-control text-dark" id="input-1" placeholder="Tên chuyên mục" name="cate-name" required>
                  </div>
	               <br>
                 <div class="form-footer">
                    <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/cate/add">Hủy</a></button>
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
  
   
  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />