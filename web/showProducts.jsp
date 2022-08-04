<%-- 
    Document   : showProducts
    Created on : Mar 3, 2022, 11:00:17 PM
    Author     : user
--%>

<%@page import="sample.user.UserDTO"%>
<%@page import="sample.product.ProductError"%>
<%@page import="sample.product.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <title>Products Page</title>

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

    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
                return;
            }
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
                                            <a class="mobile-hide search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                            <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                            <div class="mobile-menu"></div>
                            <!-- menu end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header -->

        <!-- search area -->
        <div class="search-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <span class="close-btn"><i class="fas fa-window-close"></i></span>
                        <div class="search-bar">
                            <div class="search-bar-tablecell">
                                <h3>Search For:</h3>
                                <form action="MainController">
                                    <input type="text" name="search" placeholder="Keywords"/>
                                    <input type="submit" name="action" value="Search" /><i class="fas fa-search"></i>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end search arewa -->
        <% String error = (String) request.getAttribute("ERROR");
            if (error == null) {
                error = "";
            }
        %>

        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>Fresh and Organic</p>
                            <h1>Product Page</h1>
                            <h1><%= error%></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%
            List<ProductDTO> listProduct = (List<ProductDTO>) request.getAttribute("LIST_PRODUCT");
            if (listProduct != null) {
                if (listProduct.size() > 0) {

        %>
        <!-- products -->
        <div class="product-section mt-150 mb-150">
            <div class="container">
                <div class="row product-lists">
                    <%                for (ProductDTO product : listProduct) {
                    %>

                    <div class="col-lg-4 col-md-6 text-center strawberry">
                        <div class="single-product-item">
                            <div class="product-image">
                                <a href="#"><img  src="<%= product.getImage()%>" alt=""></a>
                            </div>
                            <h3><%= product.getProductID()%> : <%= product.getProductName()%></h3>
                            <p class="product-price"><span>Category ID: <%= product.getCategoryID()%></span></p>
                            <p>Quantity: <%= product.getQuantity()%></p>
                            <p class="product-price">Price: <%= product.getPrice()%> $</p>
                            <p>Import Date: <%= product.getImportDate()%> </p>
                            <p>Using Date <%= product.getUsingDate()%> </p>
                            <form action="MainController">
                                <input class="cart-btn" type="submit" name="action" value="Load_Update"/>
                                <input type="hidden" name="productID" value="<%= product.getProductID()%>"/></br>
                            </form>
                            <span><a href = "MainController?action=Delete&productID=<%= product.getProductID()%>">Delete</a></span>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <%
                            }
                        }
                    %>
                    <a href="admin.jsp">Return Admin Page</a>
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
                                <form action="#">
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
