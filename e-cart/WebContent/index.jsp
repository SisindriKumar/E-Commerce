<%@page import="com.sisindri.connection.DbCon"%>
<%@page import="com.sisindri.dao.ProductDao"%>
<%@page import="com.sisindri.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
    request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>E-Commerce Cart</title>
<style>
    .product-card {
        position: relative;
        height: 100%;
    }
    .card-header.my-3 {
        background-color: #3498db; /* Background color */
        color: #ffffff; /* Text color */
        padding: 10px; /* Adjust padding as needed */
        border-radius: 5px; /* Optional: Add rounded corners */
    }
    .btn-container {
        text-align: center;
    }
    .btn-add-to-cart,
    .btn-buy-now {
        display: inline-block;
        margin: 5px;
        background-color: skyblue;
        border-color: skyblue;
        color: black;
        font-weight: bold;
        border-radius: 20px;
        padding: 8px 20px;
    }
    .btn-buy-now {
        background-color: green;
        border-color: green;
        color: white;
    }
    .btn-add-to-cart:hover,
    .btn-buy-now:hover {
        background-color: #87ceeb; /* Lighter shade of sky blue */
        border-color: #87ceeb;
        color: black;
    }
    .btn-buy-now:hover {
        background-color: #008000; /* Darker shade of green */
        border-color: #008000;
        color: white;
    }
    .card-img-top:hover {
        transform: scale(1.1); /* Zoom effect */
        transition: transform 0.3s ease; /* Smooth transition */
    }
</style>
</head>
<body>
    <%@include file="/includes/navbar.jsp"%>

    <div class="container">
        <div class="card-header my-3">All Products</div>
        <div class="row">
            <%
            if (!products.isEmpty()) {
                for (Product p : products) {
            %>
            <div class="col-md-4 my-4">
                <div class="card product-card">
                    <img class="card-img-top" src="product-image/<%=p.getImage() %>"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%=p.getName() %></h5>
                        <h6 class="price">Price: $<%=p.getPrice() %></h6>
                        <h6 class="category">Category: <%=p.getCategory() %></h6>
                        <div class="btn-container">
                            <a class="btn btn-add-to-cart" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a>
                            <a class="btn btn-buy-now" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
            }
            } else {
            out.println("There are no products");
            }
            %>

        </div>
    </div>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>
