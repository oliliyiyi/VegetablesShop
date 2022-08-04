<%-- 
    Document   : login
    Created on : Mar 3, 2022, 10:05:43 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
        <title>Login Page</title>
        <link rel="stylesheet" href="assets/css/login.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <form action="MainController" method="POST" class="box">
                            <h1>Login</h1>
                            <p class="text-muted"> Please enter your login and password!</p> 
                            <input type="text" name="userID" placeholder="UserID" required=""> 
                            <input type="password" name="password" placeholder="Password" required=""> 
                            <input type="submit" name="action" value="Login"/>
                            <input class="reset" type="reset" value="Reset"/>
                            <% String error = (String) request.getAttribute("ERROR");
                                if (error == null) {
                                    error = "";
                                }
                            %>
                            <%= error%>
                            <div class="col-md-12">
                                <ul class="social-network social-circle">
                                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#" class="icoGoogle" title="Google +"><i class="fab fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
