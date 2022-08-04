<%-- 
    Document   : shopping
    Created on : Mar 9, 2022, 8:53:32 PM
    Author     : user
--%>


<%@page import="sample.user.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.product.ProductDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- fontawesome -->
        <link rel="stylesheet" href="assets/css/all.min.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <!-- magnific popup -->
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <!-- animate css -->
        <link rel="stylesheet" href="assets/css/animate.css">
        <!-- mean menu css -->
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <!-- main style -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- responsive -->
        <link rel="stylesheet" href="assets/css/responsive.css">
        <link rel="stylesheet" href="assets/css/showProduct.css">
        <title>Shopping Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"US".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
                return;
            }
        %>
        <%
            List<ProductDTO> listProduct = (List<ProductDTO>) request.getAttribute("LIST_PRODUCT");
            if (listProduct != null) {
                if (listProduct.size() > 0) {
        %>

        <!--PreLoader-->
        <div class="loader">
            <div class="loader-inner">
                <div class="circle"></div>
            </div>
        </div>
        <!--PreLoader Ends-->

        <!-- header -->
        <div class="top-header-area" id="sticker">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 text-center">
                        <div class="main-menu-wrap">
                            <!-- menu start -->
                            <nav class="main-menu">
                                <ul>
                                    <li>
                                        <div class="header-icons">
                                            <a class="shopping-cart" href="MainController?action=View"><i class="fas fa-shopping-cart"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </nav>

                            <div class="mobile-menu"></div>
                            <!-- menu end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header -->

        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>Fresh and Organic</p>
                            <h1>Product Page</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            String message = (String) request.getAttribute("MESSAGE");
            if (message == null) {
                message = "";
            }
        %>
        <!-- products -->

        <div class="product-section mt-150 mb-150">
            <div class="container">
                <h3> <%= message%></h3>
                <div class="row product-lists">
                    <%
                        for (ProductDTO product : listProduct) {
                    %>
                    <div class="col-lg-4 col-md-6 text-center strawberry">
                        <div class="single-product-item">
                            <div class="product-image">
                                <a href="#"><img  src="<%= product.getImage()%>" alt=""></a>
                            </div>
                            <h3><%= product.getProductID()%> : <%= product.getProductName()%></h3>
                            <p>Available quantity: <%= product.getQuantity()%></p>
                            <p class="product-price">Price: <%= product.getPrice()%> $</p>
                            <p>Using Date <%= product.getUsingDate()%> </p>
                            <form action="MainController">
                                <input type="submit" name="action" value="Add" />
                                <input type="hidden" name="productID" value="<%= product.getProductID()%>"/></br>
                            </form>

                        </div>
                    </div>
                    <%
                        }
                    %>
                    <%
                            }
                        }
                    %>


                </div>
            </div>
            <!-- end products -->

            <!-- logo carousel -->
            <div class="logo-carousel-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="logo-carousel-inner">
                                <div class="single-logo-item">
                                    <img src="assets/img/company-logos/1.png" alt="">
                                </div>
                                <div class="single-logo-item">
                                    <img src="assets/img/company-logos/2.png" alt="">
                                </div>
                                <div class="single-logo-item">
                                    <img src="assets/img/company-logos/3.png" alt="">
                                </div>
                                <div class="single-logo-item">
                                    <img src="assets/img/company-logos/4.png" alt="">
                                </div>
                                <div class="single-logo-item">
                                    <img src="assets/img/company-logos/5.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end logo carousel -->

            <!-- footer -->
            <div class="footer-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="footer-box about-widget">
                                <h2 class="widget-title">About us</h2>
                                <p>The Website sells fresh and clean vegetables.</p> 
                                <p>Quality - Price - Attitude is our criterion.</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="footer-box get-in-touch">
                                <h2 class="widget-title">Get in Touch</h2>
                                <ul>
                                    <li> Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh.</li>
                                    <li>Phailvse151292@gmail.com</li>
                                    <li>090 0009 9000</li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6">
                            <div class="footer-box subscribe">
                                <h2 class="widget-title">Subscribe</h2>
                                <p>Subscribe to our mailing list to get the latest updates.</p>
                                <form action="index.html">
                                    <input type="email" placeholder="Email">
                                    <button type="submit"><i class="fas fa-paper-plane"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end footer -->

            <!-- copyright -->
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <p>Chou Chou Vegetable Shop</p>
                        </div>
                        <div class="col-lg-6 text-right col-md-12">
                            <div class="social-icons">
                                <ul>
                                    <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                                    <li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end copyright -->

            <!-- jquery -->
            <script src="assets/js/jquery-1.11.3.min.js"></script>
            <!-- bootstrap -->
            <script src="assets/bootstrap/js/bootstrap.min.js"></script>
            <!-- count down -->
            <script src="assets/js/jquery.countdown.js"></script>
            <!-- isotope -->
            <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
            <!-- waypoints -->
            <script src="assets/js/waypoints.js"></script>
            <!-- owl carousel -->
            <script src="assets/js/owl.carousel.min.js"></script>
            <!-- magnific popup -->
            <script src="assets/js/jquery.magnific-popup.min.js"></script>
            <!-- mean menu -->
            <script src="assets/js/jquery.meanmenu.min.js"></script>
            <!-- sticker js -->
            <script src="assets/js/sticker.js"></script>
            <!-- main js -->
            <script src="assets/js/main.js"></script>

    </body>
</html>
