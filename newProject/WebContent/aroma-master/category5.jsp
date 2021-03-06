<%@page import="model.TeaVO"%>
<%@page import="model.TeaDAO"%>
<%@page import="model.productVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.productDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head> 
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Category</title>
   <link rel="icon" href="img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
   <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
   <link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">

  <link rel="stylesheet" href="css/style.css">
  
  <!---------------------------제품 페이징 버튼 CSS 효과  --------------------------->
 <style type="text/css">
     .custom-pagination span, .custom-pagination a {
  display: inline-block;
  width: 40px;
  height: 40px;
  line-height: 40px;
  text-align: center; }

.custom-pagination .current {
  background: #e6e6e6;
  border-radius: 50%;
  font-weight: bold; }

.custom-pagination a {
  border-radius: 100%;
  background-color: transparent; }
  .custom-pagination a:hover {
    background: #71bc42;
    color: #fff; }
     
     
/* body{
    text-align:center;
} */
#paging{
    font-size: 22pt;
}

.card-product__img > img{
    width: 250px;
    height: 250px;
}



  </style>
  
<!---------------------------제품 페이징 버튼 CSS 효과  ---------------------------> 
</head>
<body>
  <!--================ Start Header Menu Area =================-->
   <header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
              <li class="nav-item active submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Shop</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
                  <li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
                  <li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
                </ul>
                     </li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Blog</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
                </ul>
                     </li>
                     <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Pages</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                  <li class="nav-item"><a class="nav-link" href="register.html">Register</a></li>
                  <li class="nav-item"><a class="nav-link" href="tracking-order.html">Tracking</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
            </ul>

            <ul class="nav-shop">
              <li class="nav-item"><button><i class="ti-search"></i></button></li>
              <li class="nav-item"><button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button> </li>
              <li class="nav-item"><a class="button button-header" href="#">Buy Now</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
   <!--================ End Header Menu Area =================-->

   <!-- ================ start banner area ================= -->   
   <section class="blog-banner-area" id="category">
      <div class="container h-100">
         <div class="blog-banner">
            <div class="text-center">
               <h1>Shop Category</h1>
               <nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shop Category</li>
            </ol>
          </nav>
            </div>
         </div>
    </div>
   </section>
   <!-- ================ end banner area ================= -->


   <!-- ================ category section start ================= -->        
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">Browse Categories</div>
            <ul class="main-categories">
              <li class="common-filter">
                <form action="#">
                  <ul>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="men" name="brand"><label for="men">Men<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="women" name="brand"><label for="women">Women<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="accessories" name="brand"><label for="accessories">Accessories<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="footwear" name="brand"><label for="footwear">Footwear<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="bayItem" name="brand"><label for="bayItem">Bay item<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="electronics" name="brand"><label for="electronics">Electronics<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="food" name="brand"><label for="food">Food<span> (3600)</span></label></li>
                  </ul>
                </form>
              </li>
            </ul>
          </div>
          <div class="sidebar-filter">
            <div class="top-filter-head">Product Filters</div>
            <div class="common-filter">
              <div class="head">Brands</div>
              <form action="#">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
                </ul>
              </form>
            </div>
            <div class="common-filter">
              <div class="head">Color</div>
              <form action="#">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black
                      Leather<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black
                      with red<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li>
                </ul>
              </form>
            </div>
            <div class="common-filter">
              <div class="head">Price</div>
              <div class="price-range-area">
                <div id="price-range"></div>
                <div class="value-wrapper d-flex">
                  <div class="price">Price:</div>
                  <span>$</span>
                  <div id="lower-value"></div>
                  <div class="to">to</div>
                  <span>$</span>
                  <div id="upper-value"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          <div class="filter-bar d-flex flex-wrap align-items-center">
            <div class="sorting">
              <select>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
              </select>
            </div>
            <div class="sorting mr-auto">
              <select>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
              </select>
            </div>
            <div>
              <div class="input-group filter-bar-search">
                <input type="text" placeholder="Search">
                <div class="input-group-append">
                  <button type="button"><i class="ti-search"></i></button>
                </div>
              </div>
            </div>
          </div>
          <!-- End Filter Bar -->
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">
            
            <% 
               //productDAO 객체생성
               TeaDAO dao = new TeaDAO();
                 ArrayList<TeaVO> list = dao.teaSelect();
               
              /*여기서 값을 넘겨주는 것*/
              /*개수가 넘어갈 때면 페이징도 추가해줘야함.*/
            for(int i = 36; i<45; i++){ 
               
            %>
              <div class="col-md-6 col-lg-4">
                <div class="card text-center card-product">
                  <div class="card-product__img">
                    <img class="card-img" src="<%=list.get(i).getTea_img() %>" alt=""> <!--css로 이미지 크기 틀에 맞추는 작업 필요-->
                    <ul class="card-product__imgOverlay">
                      <li><button><i class="ti-search"></i></button></li>
                      <li><button><i class="ti-shopping-cart"></i></button></li>
                      <li><button><i class="ti-heart"></i></button></li>
                    </ul>
                  </div>
                  <div class="card-body">
                    <p>Accessories</p> <!--이건 제품분류인데 일단 두자-->
                    
                    <!--쿼리스트링으로 이미지, 상품명, 가격 넘기는 코드 a태그로 넘기면 무조건 get방식으로 넘어감.-->
                    <h4 class="card-product__title"><a href="single-product.jsp?img=<%=list.get(i).getTea_img()%>&name=<%=list.get(i).getTea_name()%>&price=<%=list.get(i).getTea_price()%>"><%=list.get(i).getTea_name() %></a></h4> <!--제품명-->
                    <p class="card-product__price"><%=list.get(i).getTea_price() %></p> <!--가격-->
                  </div>
                </div>
              </div>
              <%
                 }
              %>
              </div>
              
         <!-------페이징------->    

      <!-------페이징------->


              <!--제품이 9개가 넘으면 다음 페이지로 넘어가야한다-->

              
              <!--이것은 우선 게시글 수 만큼 page번호가 존재해야함. list.size()가 109니까  그걸 9로 나누면 페이지수가 나옴  -->
         <!---------------------제품 페이징 버튼 ----------------->
          <div class="col-12 text-center">
            <div class="custom-pagination">
              <a href="category.jsp">1</a>
              <a href="category2.jsp">2</a>
              <a href="category3.jsp">3</a>
              <a href="category4.jsp">4</a>   
              <span class="current">5</span>
                 
                 
         <!----------------------------------   페이징 부분      -------------------------------------->
<%--               <div id="paging">
         <!-- 1~10까지 있는 페이지의 페이징 -->
            <c:url var="action" value="/ProductList.do"/>
            <c:if test="${param.prev}">
            
                <a href="${action}?page=${param.beginPage-1}">prev</a>
                
            </c:if>
            <c:forEach begin="${param.beginPage}" end="${param.endPage}" step="1" var="index">
                <c:choose>
                    <c:when test="${param.page==index}">
                        ${index}
                    </c:when>
                    <c:otherwise>
                    
                        <a href="${action}?page=${index}">${index}</a>
                        
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${param.next}">
                <a href="${action}?page=${param.endPage+1}">next</a>
         </c:if>
            </div> --%>
            <!----------------------------------   페이징 부분      -------------------------------------->
            
          </div>
        <!---------------------제품 페이징 버튼 ----------------->
              
            </div>
          </section>
          <!-- End Best Seller -->
        </div>
      </div>
    </div>
  </section>
   <!-- ================ category section end ================= -->        

   <!-- ================ top product area start ================= -->   
   <%--  베스트 상품 인데 일단 주석처리
   <section class="related-product-area">
      <div class="container">
         <div class="section-intro pb-60px">
        <p>Popular Item in the market</p>
        <h2>Top <span class="section-intro__style">Product</span></h2>
      </div>
         <div class="row mt-30">
      
      <%
         for(int i = 0; i <4; i++){
      %>   
        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>
      <%
         }
      %>      
      </div>
      </div>
   </section> --%>

   <!-- ================ top product area end ================= -->      

   <!-- ================ Subscribe section start ================= -->        
  <section class="subscribe-position">
    <div class="container">
      <div class="subscribe text-center">
        <h3 class="subscribe__title">Get Update From Anywhere</h3>
        <p>Bearing Void gathering light light his eavening unto dont afraid</p>
        <div id="mc_embed_signup">
          <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">
            <div class="form-group ml-sm-auto">
              <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >
              <div class="info"></div>
            </div>
            <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>
            <div style="position: absolute; left: -5000px;">
              <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
            </div>

          </form>
        </div>
        
      </div>
    </div>
  </section>
   <!-- ================ Subscribe section end ================= -->        


  <!--================ Start footer Area  =================-->   
   <footer>
      <div class="footer-area">
         <div class="container">
            <div class="row section_gap">
               <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-footer-widget tp_widgets">
                     <h4 class="footer_title large_title">Our Mission</h4>
                     <p>
                        So seed seed green that winged cattle in. Gathering thing made fly you're no 
                        divided deep moved us lan Gathering thing us land years living.
                     </p>
                     <p>
                        So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved 
                     </p>
                  </div>
               </div>
               <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
                  <div class="single-footer-widget tp_widgets">
                     <h4 class="footer_title">Quick Links</h4>
                     <ul class="list">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Shop</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Product</a></li>
                        <li><a href="#">Brand</a></li>
                        <li><a href="#">Contact</a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-2 col-md-6 col-sm-6">
                  <div class="single-footer-widget instafeed">
                     <h4 class="footer_title">Gallery</h4>
                     <ul class="list instafeed d-flex flex-wrap">
                        <li><img src="img/gallery/r1.jpg" alt=""></li>
                        <li><img src="img/gallery/r2.jpg" alt=""></li>
                        <li><img src="img/gallery/r3.jpg" alt=""></li>
                        <li><img src="img/gallery/r5.jpg" alt=""></li>
                        <li><img src="img/gallery/r7.jpg" alt=""></li>
                        <li><img src="img/gallery/r8.jpg" alt=""></li>
                     </ul>
                  </div>
               </div>
               <div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
                  <div class="single-footer-widget tp_widgets">
                     <h4 class="footer_title">Contact Us</h4>
                     <div class="ml-40">
                        <p class="sm-head">
                           <span class="fa fa-location-arrow"></span>
                           Head Office
                        </p>
                        <p>123, Main Street, Your City</p>
   
                        <p class="sm-head">
                           <span class="fa fa-phone"></span>
                           Phone Number
                        </p>
                        <p>
                           +123 456 7890 <br>
                           +123 456 7890
                        </p>
   
                        <p class="sm-head">
                           <span class="fa fa-envelope"></span>
                           Email
                        </p>
                        <p>
                           free@infoexample.com <br>
                           www.infoexample.com
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <div class="footer-bottom">
         <div class="container">
            <div class="row d-flex">
               <p class="col-lg-12 footer-text text-center">
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
         </div>
      </div>
   </footer>
   <!--================ End footer Area  =================-->



  <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="vendors/skrollr.min.js"></script>
  <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="vendors/nouislider/nouislider.min.js"></script>
  <script src="vendors/jquery.ajaxchimp.min.js"></script>
  <script src="vendors/mail-script.js"></script>
  <script src="js/main.js"></script>
</body>
</html>