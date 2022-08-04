<%-- 
    Document   : admin
    Created on : Mar 3, 2022, 10:25:23 PM
    Author     : user
--%>

<%@page import="sample.product.ProductError"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
        <title>Admin Page</title>
        <link rel="stylesheet" href="assets/css/admin.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </head>
    <body>
        <%
           UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
           if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
               response.sendRedirect("login.jsp");
               return;
           }
        %>      
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="box">
                            <h1>Welcome Admin: <%= loginUser.getFullName()%>  </h1>
                            <form action="MainController">
                                <input type="text" name="search" placeholder="Input the text you want to search for"/>
                                <input type="submit" name="action" value="Search" />
                            </form>
                            <form action="MainController">
                                <input type="submit" name="action" title="Show all products" value="Show"/>
                            </form>
                            <a class="insert" href="insert.jsp?LOGIN_USER=<%=loginUser%>">Insert</a>
                            <form action="MainController">
                                <input type="submit" name="action" value="Logout" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
