<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:url value="/view/client/assets" var="url" />
<!-- Start header section -->
<jsp:include page="./header/mainHeader.jsp" flush="true" />
<!-- / header section -->

<!-- Start slider -->
<jsp:include page="./banner-slider/slider.jsp" flush="true" />
<!-- / slider -->

<!---->
<!--sneaker tăng động-->
<div class="container">
	<div class="row py-5">
		<div class="col-md-4 py-5">
			<img src="${url}/images/banner_product_nangdong.jpg">
		</div>
		<div class="col-md-8 py-5">
			<h3>SNEAKER NĂNG ĐỘNG</h3>
			<p>Sneaker đã trở thành một biểu tượng của xã hội, là một sản
				phẩm của thời đại với những thiết kế cổ điển và những điều đó đều
				nằm trong những đôi giày Sneaker Delta Shoes. Không lỗi thời với
				thời gian, mang dấu ấn cá tính khác biệt và tạo mọi sự lôi cuốn từ
				chính đôi giày Sneaker. Tự tạo cuộc chơi, tự tạo phong cách, đó là
				Delta Shoes</p>
			<div class="more-product">
				<a class="btn btn-lg btn-dark"
					href="${pageContext.request.contextPath}/view/client/product">Xem
					Tất Cả Sản Phẩm <span class=""></span>
				</a>
			</div>

		</div>
		<div class="product-category">
			<div class=container>
				<div class="row my-4">
					<div class="aa-product-catg-content">

						<div class="aa-product-catg-body"
							style="margin-right: -15px; margin-left: -15px;">

							<ul class="aa-product-catg">
								<!-- start single product item -->
								<c:if test="${empty productlist}">
									<p style="margin-left: 30px">Chưa có sản phẩm!</p>
								</c:if>
								<c:forEach items="${productlist}" var="product" end="3">
									<li>
										<figure>
											<a class="aa-product-img"
												href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
												src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image}"
												alt="${product.name}"></a>
											<a class="aa-add-card-btn"
												href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
												class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
											<figcaption>
												<h4 class="aa-product-title">
													<a
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name}</a>
												</h4>

												<c:choose>
													<c:when test="${product.discount == 0.0}">
														<span class="aa-product-price"><fmt:parseNumber
																type="number" value="${product.price}"></fmt:parseNumber>
															VNĐ</span>
													</c:when>
													<c:otherwise>
														<c:forEach items="${productlist1}" var="product1">
															<c:if test="${product1.id == product.id}">
																<span class="aa-product-price"><fmt:parseNumber
																		type="number" value="${product1.price}"></fmt:parseNumber>
																	VNĐ</span>
															</c:if>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</figcaption>
										</figure> <%-- 	                  <c:if test="${product.discount != 0.0}"> --%>
										<!-- 	                  	product badge --> <%-- 	                  <span class="aa-badge aa-sale">- ${product.discount}%</span> --%>
										<%-- 	                  </c:if> --%>

									</li>
								</c:forEach>
							</ul>

							<!-- / quick view modal -->
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!---->
<!--Sản phẩm Thanh lịch-->
<div class="container">
	<div class="row py-5">
		<div class="col-md-7 py-5">
			<h3>SLIP-ON THANH LỊCH</h3>
			<p>Ra đời từ thế kỉ XX, từ sự tiện dụng cho đến biểu tượng của
				phong cách casual. Giày lười Delta Shoes là một trong những đại diện
				của sự chững chạc trong thời trang, là xu hướng của thế giới thời
				trang tối giản. Đồng hành cùng Delta Shoes là đồng hành với chuẩn
				mực của chính bạn. Shoes. Không lỗi thời với thời gian, mang dấu ấn
				cá tính khác biệt và tạo mọi sự lôi cuốn từ chính đôi giày Sneaker.
				Tự tạo cuộc chơi, tự tạo phong cách, đó là Delta Shoes</p>
			<div class="more-product">
				<a class="btn btn-lg btn-dark"
					href="${pageContext.request.contextPath}/view/client/product">Xem
					Tất Cả Sản Phẩm <span class=""></span>
				</a>
			</div>

		</div>
		<div class="col-md-5 py-5">
			<img src="${url}/images/banner_product_thanhlich.jpg">
		</div>
		<div class="product-category">
				<div class=container>
				<div class="row my-4">
					<div class="aa-product-catg-content">

						<div class="aa-product-catg-body"
							style="margin-right: -15px; margin-left: -15px;">

							<ul class="aa-product-catg">
								<!-- start single product item -->
								<c:if test="${empty productlist}">
									<p style="margin-left: 30px">Chưa có sản phẩm!</p>
								</c:if>
								<c:forEach items="${productlist}" var="product" begin="4" end="7">
									<li>
										<figure>
											<a class="aa-product-img"
												href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
												src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image}"
												alt="${product.name}"></a>
											<a class="aa-add-card-btn"
												href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span
												class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
											<figcaption>
												<h4 class="aa-product-title">
													<a
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name}</a>
												</h4>

												<c:choose>
													<c:when test="${product.discount == 0.0}">
														<span class="aa-product-price"><fmt:parseNumber
																type="number" value="${product.price}"></fmt:parseNumber>
															VNĐ</span>
													</c:when>
													<c:otherwise>
														<c:forEach items="${productlist1}" var="product1">
															<c:if test="${product1.id == product.id}">
																<span class="aa-product-price"><fmt:parseNumber
																		type="number" value="${product1.price}"></fmt:parseNumber>
																	VNĐ</span>
															</c:if>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</figcaption>
										</figure> <%-- 	                  <c:if test="${product.discount != 0.0}"> --%>
										<!-- 	                  	product badge --> <%-- 	                  <span class="aa-badge aa-sale">- ${product.discount}%</span> --%>
										<%-- 	                  </c:if> --%>

									</li>
								</c:forEach>
							</ul>

							<!-- / quick view modal -->
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!---->
<div class="container">
	<div class="row ">
		<div class="col-12">
			<img src="${url}/images/banner_product_noibat.jpg" class="img-fluid" />
		</div>
	</div>
</div>


<!-- Start Promo section -->

<!-- / Promo section -->
<!-- Products section -->
<section id="aa-product">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4 py-4">
					<!--Danh Mục-->
					<h1>Danh Mục</h1>

					<div class="card" style="width: 100%">

						<ul class="list-group list-group-flush">

							<li class="list-group-item"><a
								href="${pageContext.request.contextPath}/view/client/product">SẢN
									PHẨM</span>
							</a></li>
							<li class="list-group-item"><a
								href="${pageContext.request.contextPath}/view/client/introduce">GIỚI
									THIỆU</a></li>
							<li class="list-group-item"><a
								href="${pageContext.request.contextPath}/view/client/contact">LIÊN
									HỆ</a></li>

						</ul>
					</div>
				</div>
				<div class="row">
					<div class="aa-product-area">
						<div class="aa-product-inner">
							<!-- start prduct navigation -->
							<ul class="nav nav-tabs aa-products-tab">

								<li class="active"><a href="#men" data-toggle="tab">NIKE</a></li>
								<li><a href="#woman" data-toggle="tab">MLB </a></li>
								<li><a href="#matong" data-toggle="tab">ADIDAS</a></li>
								<li><a href="#bitis" data-toggle="tab">Bitis</a></li>
							</ul>
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- Start men product category -->

								<!-- / men product category -->
								<!-- start women product category -->
								<div class="tab-pane fade in active" id="men">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_nike}" var="product" end="5">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}">
														<span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng
													</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0.0}">
																<span class="aa-product-price"><fmt:parseNumber
																		type="number" value="${product.price}"></fmt:parseNumber>
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price"><fmt:parseNumber
																				type="number" value="${product1.price}"></fmt:parseNumber>
																			VNĐ</span>
																		<span class="aa-product-price"><del>
																				<fmt:parseNumber type="number"
																					value="${product.price}"></fmt:parseNumber>
																				VNĐ
																			</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0.0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / women product category -->
								<!-- start sports product category -->
								<div class="tab-pane fade" id="woman">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_mbl}" var="product" end="5">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}">
														<span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng
													</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0.0}">
																<span class="aa-product-price"><fmt:parseNumber
																		type="number" value="${product.price}"></fmt:parseNumber>
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price"><fmt:parseNumber
																				type="number" value="${product1.price}"></fmt:parseNumber>
																			VNĐ</span>
																		<span class="aa-product-price"><del>${product.price}
																				VNĐ</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0.0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / sports product category -->
								<!-- start electronic product category -->
								<div class="tab-pane fade" id="matong">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_adidas}" var="product" end="5">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}">
														<span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng
													</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0.0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price"><fmt:parseNumber
																				type="number" value="${product1.price}"></fmt:parseNumber>
																			VNĐ</span>
																		<span class="aa-product-price"><del>
																				<fmt:parseNumber type="number"
																					value="${product.price}"></fmt:parseNumber>
																				VNĐ
																			</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0.0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<div class="tab-pane fade" id="bitis">
									<ul class="aa-product-catg">
										<!-- start single product item -->
										<c:forEach items="${product_bitits}" var="product" end="5">
											<li>
												<figure>
													<a class="aa-product-img"
														href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img
														src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image}"
														alt="polo shirt img"></a>
													<a class="aa-add-card-btn"
														href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}">
														<span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng
													</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a
																href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a>
														</h4>
														<c:choose>
															<c:when test="${product.discount == 0.0}">
																<span class="aa-product-price">${product.price}
																	VNĐ</span>
																<span class="aa-product-price"></span>
															</c:when>
															<c:otherwise>
																<c:forEach items="${productlist1}" var="product1">
																	<c:if test="${product1.id == product.id}">
																		<span class="aa-product-price"><fmt:parseNumber
																				type="number" value="${product1.price}"></fmt:parseNumber>
																			VNĐ</span>
																		<span class="aa-product-price"><del>
																				<fmt:parseNumber type="number"
																					value="${product.price}"></fmt:parseNumber>
																				VNĐ
																			</del></span>
																	</c:if>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													</figcaption>
												</figure> <c:if test="${product.discount != 0.0}">
													<!-- product badge -->
													<span class="aa-badge aa-sale">-
														${product.discount}%</span>
												</c:if>
											</li>
										</c:forEach>
										<!-- start single product item -->

									</ul>

								</div>
								<!-- / electronic product category -->
							</div>
							<div class="more-product">
								<a class="btn btn-lg btn-dark"
									href="${pageContext.request.contextPath}/view/client/product">Xem
									Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span>
								</a>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Products section -->
<!-- banner section -->
<section style="margin-top: 10px; margin-bottom: 30px;" id="aa-banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-banner-area">
						<a href="#"><img src="${url}/images/banner_product_noibat.jpg"
							alt="banner trang chủ"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- / popular section -->
<!-- Support section -->
<div class="container" style="margin-top: 30px; margin-bottom: 30px;">
	<div class="row margin-bottom-40">
		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="wraptem">
				<span style="float: left; padding-right: 20px;" class="img"><img
					class="lazyload loaded"
					src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_1.png?1638696092768"
					data-src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_1.png?1638696092768"
					alt="icon" data-was-processed="true"></span>
				<div class="content_right">
					<p
						style="font-size: 16px; font-weight: 700; margin-bottom: 0; color: black;">Miễn
						phí vận chuyển</p>
					<span>Miễn phí vận chuyển nội thành</span>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="wraptem">
				<span style="float: left; padding-right: 20px;" class="img"><img
					class="lazyload loaded"
					src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_2.png?1638696092768"
					data-src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_2.png?1638696092768"
					alt="icon" data-was-processed="true"></span>
				<div class="content_right">
					<p
						style="font-size: 16px; font-weight: 700; margin-bottom: 0; color: black;">Đổi
						trả hàng</p>
					<span>Đổi trả lên tới 30 ngày</span>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="wraptem">
				<span style="float: left; padding-right: 20px;" class="img"><img
					class="lazyload loaded"
					src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_3.png?1638696092768"
					data-src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_3.png?1638696092768"
					alt="icon" data-was-processed="true"></span>
				<div class="content_right">
					<p
						style="font-size: 16px; font-weight: 700; margin-bottom: 0; color: black;">Tiết
						kiệm thời gian</p>
					<span>Mua sắm dễ hơn khi online</span>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="wraptem">
				<span style="float: left; padding-right: 20px;" class="img"><img
					class="lazyload loaded"
					src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_4.png?1638696092768"
					data-src="//bizweb.dktcdn.net/100/342/645/themes/701397/assets/srv_4.png?1638696092768"
					alt="icon" data-was-processed="true"></span>
				<div class="content_right">
					<p
						style="font-size: 16px; font-weight: 700; margin-bottom: 0; color: black;">Tư
						vấn trực tiếp</p>
					<span>Đội ngũ tư vấn nhiệt tình</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- / Support section -->




<!-- Client Brand -->

<!-- / Client Brand -->
<!--  footer-->
<jsp:include page="./footer/footer.jsp" flush="true" />
<!-- end footer-->

