<%-- 
    Document   : viewCart
    Created on : Mar 10, 2022, 5:11:13 PM
    Author     : user
--%>

<%@page import="sample.user.UserDTO"%>
<%@page import="sample.product.ProductDTO"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <title>Shopping Page</title>
    </head>
    <body>
        <h2>Your Cart: </h2>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"US".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.jsp");
                return;
            }
        %>
        <%
            Cart cart = (Cart) session.getAttribute("CART");
            if (cart != null) {
                if (cart.getCart().size() > 0) {
        %>


        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Remove</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    double total = 0;
                    for (ProductDTO product : cart.getCart().values()) {
                        total += product.getPrice() * product.getCartQuantity();
                %>
            <form action="MainController">
                <tr>
                    <td><%= count++%></td>
                    <td>
                        <%= product.getProductID()%>
                        <input type="hidden" name="productID" value="<%= product.getProductID()%>"/>
                    </td>
                    <td><%= product.getProductName()%></td>
                    <td><%= product.getPrice()%>$</td>
                    <td>
                        <div>
                            <%
                                if (product.getCartQuantity() != 1) {
                            %>
                            <a href="MainController?action=Decrease&productID=<%=product.getProductID()%>"><span class="fa fa-minus mr-2 btn" style="padding: .8rem .8rem; margin-top: 0;"></span></a>                                <%
                                }
                                if (product.getCartQuantity() == 1) {
                            %>
                            <span class="fa fa-minus mr-2 btn" style="padding: .8rem .8rem; margin-top: 0;"></span>
                            <%
                                }
                            %>

                            <%= product.getCartQuantity()%> 
                            
                            <%  if (product.getCartQuantity() < product.getQuantity()) {
                            %>
                            <a href="MainController?action=Plus&productID=<%=product.getProductID()%>&url=viewCart.jsp"><span class="fa fa-plus ml-2 btn" style="padding: .8rem .8rem; margin-top: 0;"></span></a>
                            <%
                                }
                                if (product.getCartQuantity() >= product.getQuantity()) {
                            %>
                            <span class="fa fa-plus ml-2 btn" style="padding: .8rem .8rem; margin-top: 0;"></span>
                            <%                             
                                }
                            %>

                            <c:if test="${product.cartQuantity >= product.quantity}">

                            </c:if>
                        </div> 
                    </td>
                    <td><%= product.getPrice() * product.getCartQuantity()%>$</td>

                    <td>
                        <input type="submit" name="action" value="Remove"/>
                    </td>
                </tr>
            </form>

        </tbody>
        <%
            }
        %>
    </table>
    <h1>Total: <%= total%></h1>
    <button><a href="checkout.jsp">Check out</a> </button>
    <%
            }
        }

    %>
    <% String error = (String) request.getAttribute("CART_ERROR");
        if (error == null) {
            error = "";
        }
    %>
    <%= error%>
</body>
</html>
