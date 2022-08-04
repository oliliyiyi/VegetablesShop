<%-- 
    Document   : update
    Created on : Mar 9, 2022, 10:37:41 AM
    Author     : user
--%>

<%@page import="sample.user.UserDTO"%>
<%@page import="sample.product.ProductError"%>
<%@page import="sample.product.ProductDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
                return;
            }
        %>
        <%
            ProductDTO product = (ProductDTO) request.getAttribute("PRODUCT");

            ProductError productError = (ProductError) request.getAttribute("PRODUCT_ERROR");
            if (productError == null) {
                productError = new ProductError();
            }

        %>
        <h2>Update Product: </h2>
        <form action="MainController">
            Product ID <input type="text" name="productID" value="<%= product.getProductID()%>" readonly=""/></br>
            Product Name <input type="text" name="productName"  value="<%= product.getProductName()%>"/>
            <%= productError.getProductNameError()%></br>
            Category ID: <select name="categoryID"  value="<%= product.getCategoryID()%>">
                <option value="CG01">CG01-Vegetable</option>
                <option value="CG02">CG02-Fruit</option>
            </select>
            Quantity <input type="number" name="quantity" value="<%= product.getQuantity()%>"/></br>
            Price <input type="number" name="price" value="<%= product.getPrice()%>"/></br>
            Import Date <input type="date" name="importDate" value="<%= product.getImportDate()%>"/></br>
            Using Date <input type="date" name="usingDate" value="<%= product.getUsingDate()%>"/></br
            <%= productError.getUsingDateError()%></br>
            Status <input type="int" name="status" value="<%= product.isStatus()%>"/></br>
            Image <input type="text" name="image" value="<%= product.getImage()%>"/></br>
            <input type="submit" name="action" value="Update"/>

        </form>


    </body>
</html>
