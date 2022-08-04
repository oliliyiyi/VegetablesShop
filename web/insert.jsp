<%-- 
    Document   : insert
    Created on : Mar 11, 2022, 8:56:51 PM
    Author     : user
--%>

<%@page import="sample.product.ProductError"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <title>Insert Page</title>

        <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">

        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" href="assets/css/insert.css">

    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
                return;
            }
            ProductError productError = (ProductError) request.getAttribute("PRODUCT_ERROR");
            if (productError == null) {
                productError = new ProductError();
            }
        %>

        <%
            String message = (String) request.getAttribute("MESSAGE");
            if (message == null) {
                message = "";
            }
        %>
        
        <!--PreLoader-->
        <div class="loader">
            <div class="loader-inner">
                <div class="circle"></div>
            </div>
        </div>
        <!--PreLoader Ends-->

        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>Welcome to Insert Page</p>
                            <h1>Insert Product</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- contact form -->
        <div class="contact-from-section mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 mb-5 mb-lg-0">
                        <div class="form-title">
                            <h2>Insert new product: </h2>
                        </div>
                        <div id="form_status"></div>
                        <div class="contact-form">
                            <form action="MainController" id="fruitkha-contact" ">

                                <p>
                                    <input id="product" type="text" name="productID" required="" placeholder="Product ID"/>&nbsp;<%= productError.getProductIDError()%>
                                </p>
                                <p>
                                    <input id="product" type="text" name="productName" required="" placeholder="Product Name"/>&nbsp;<%= productError.getProductNameError()%>
                                </p>
                                <p>
                                    <input id="product" type="number" name="quantity" placeholder="Product Quantity" min="0"/>
                                </p>
                                <p>
                                    <input id="product" type="number" name="price" placeholder="Product Price" min="0"/>
                                </p>
                                <p>
                                    Category ID: <select id="product" name="categoryID">
                                        <option value="CG01">CG01-Vegetable</option>
                                        <option value="CG02">CG02-Fruit</option>
                                    </select>
                                </p>
                                <p>
                                    Import Date: <input id="product" type="date" name="importDate" /></br>
                                </p>
                                <p>
                                    Using Date: <input id="product" type="date" name="usingDate" />&nbsp;<%= productError.getUsingDateError()%></br>
                                </p>
                                <p><input id="product" type="text" name="image" placeholder="Image link"/></p>
                                <%= message%>
                                <p><input type="submit" name="action" value="Insert">
                                   <input type="reset" name="action"></p>
                                <a href="admin.jsp">Return Admin Page</a>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end contact form -->

    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <p>Chou Chou Vegetable Shop</p>
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
    <!-- form validation js -->
    <script src="assets/js/form-validate.js"></script>
    <!-- main js -->
    <script src="assets/js/main.js"></script>

</body>
</html>
