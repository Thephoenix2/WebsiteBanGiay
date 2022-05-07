<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
       <section id="aa-slider">
    <div class="aa-slider-area">
      <div id="sequence" class="seq">
        <div class="seq-screen">
          <ul class="seq-canvas">
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/banner_project_1.jpg" alt="Men slide img" />
              </div>
              <div class="seq-title">
               <span data-seq>Sale 50%</span>                
                <h2 data-seq>Air Jordan</h2>                
                <p data-seq>Take flight. As soon as the Air Jordan line debuted in 1985, it started shaping sneaker culture as we know it today.</p>
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">View</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/ban1.png" alt="Wristwatch slide img" width=100% />
              </div>
              <div class="seq-title">
                <span data-seq>Sale 20%</span>                
                <h2 data-seq>UltraBoost</h2>                
                <p data-seq>Boost is a trademarked polymer used by Adidas, in the form of pellets which are compressed and molded for various shoe models the company sells, especially the Ultraboost, Energy Boost and NMD lines of sneakers.</p>
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">View</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/ban3.jpg" alt="Women Jeans slide img" style="width:100%" />
              </div>
              <div class="seq-title">
                <span data-seq>Sale 33%</span>                
                <h2 data-seq>Yeezy</h2>                
                <p data-seq>Adidas Yeezy is a fashion collaboration between German sportswear company Adidas and American designer, rapper, entrepreneur and personality Kanye West.</p>
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">View</a>
              </div>
            </li>
            <!-- single slide item -->           
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/ban2.jpg" alt="Shoes slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Sale 25%</span>                
                <h2 data-seq>Bitis Hunter X</h2>                
                <p data-seq></p>
                <a data-seq href="${pageContext.request.contextPath}/view/client/product" class="aa-shop-now-btn aa-secondary-btn">View</a>
              </div>
            </li>                   
          </ul>
         </div>
        <!-- slider navigation btn -->
        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
          <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
        </fieldset>
      </div>
    </div>
  </section>
