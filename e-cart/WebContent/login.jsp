 
<%@page import="com.sisindri.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    // Check if the user is already authenticated
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        response.sendRedirect("index.jsp");
        return;
    }
    
    // Retrieve cart list if it exists
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
    body {
        background-color: #f8f9fa;
        font-family: Arial, sans-serif;
    }
    .container {
        padding-top: 50px;
    }
    .card {
        background: linear-gradient(45deg, #FFC312, #EE5A24, #00a8ff, #9C27B0, #FFC312); /* Multi-color gradient */
        border-radius: 20px; /* Adding rounded corners */
        overflow: hidden; /* Ensuring overflow is hidden for water drop effect */
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    .card-header {
        background-color: transparent;
        color: #ffffff;
        font-weight: bold;
        text-align: center;
        border-top-left-radius: 20px; /* Adjusting border radius for the header */
        border-top-right-radius: 20px; /* Adjusting border radius for the header */
    }
    .card-body {
        color: #ffffff;
        padding: 20px; /* Adding padding for content */
    }
    .form-group label {
        font-weight: bold;
    }
    .btn-primary {
        background-color: #ffffff;
        border-color: #ffffff;
        font-weight: bold;
        border-radius: 20px; /* Adding rounded corners */
        color: #000000; /* Black text color */
    }
    .btn-primary:hover {
        background-color: #28a745; /* Green background color */
        border-color: #28a745; /* Green border color */
        color: #000000; /* Black text color */
    }
</style>
</head>
<body>
<%@include file="/includes/navbar.jsp"%>

<div class="container">
    <div class="card w-50 mx-auto my-5">
        <div class="card-header">User Login</div>
        <div class="card-body">
            <form action="user-login" method="post">
                <div class="form-group">
                    <label>Email address</label>
                    <input type="email" name="login-email" class="form-control" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="login-password" class="form-control" placeholder="Password">
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="/includes/footer.jsp"%>
</body>
</html>

 