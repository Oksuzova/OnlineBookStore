<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Orders - Online Bookstore</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <script async src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/user/home">Online Bookstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="/user/profile">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/cart">Cart</a></li>
                <li class="nav-item"><a class="nav-link" href="/user/orders">My Orders</a></li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/user/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-4">
    <div class="jumbotron text-center">
        <h1 class="display-4">My Orders</h1>
        <hr>
        <p>Order #${order.orderId} Details</p>
    </div>
    <!-- Order Details -->
    <div class="row mt-3">
            <div class="col-md-12">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Order #${order.orderId}</h5>
                        <p class="card-text">Order Date: ${order.orderDate}</p>
                        <p class="card-text">Total: ${order.totalPrice}</p>
                        <!-- Modify this line -->
                        <p class="card-text">Status: ${order.status}</p>
                        <!-- Order Details Button -->
                        <a href="/user/orders" class="btn btn-primary">My Orders</a>
                    </div>
                </div>
            </div>
    </div>
</div>
</body>
</html>