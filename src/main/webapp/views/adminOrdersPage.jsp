<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin User Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <script async src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/admin/home">Online Bookstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="/admin/book-categories">Categories</a></li>
                <li class="nav-item"><a class="nav-link" href="/admin/manageBooks">Books</a></li>
                <li class="nav-item"><a class="nav-link" href="/admin/users">Users</a></li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/admin/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <h2 class="text-center mb-4">Update Order Details</h2>
    <c:choose>
        <c:when test="${mode == 'MODE_UPDATE'}">
            <form action="/admin/update-order" method="post">
                <input type="hidden" name="orderId" value="<c:out value="${order.orderId}"/>" />

                <div class="form-group">
                    <label for="orderDate">Order Date:</label>
                    <input type="text" id="orderDate" name="orderDate" class="form-control" value="${order.orderDate}" disabled>
                </div>

                <div class="form-group">
                    <label for="totalPrice">Total price:</label>
                    <input type="text" id="totalPrice" name="totalPrice" class="form-control" value="<c:out value="${order.totalPrice}"/>" required>
                </div>

                <div class="form-group">
                    <label for="status">Status:</label>
                    <select id="status" name="status" class="form-control" required>
                        <option value="Pending" <c:if test="${order.status == 'Pending'}">selected</c:if>>Pending</option>
                        <option value="Sent" <c:if test="${order.status == 'Sent'}">selected</c:if>>Sent</option>
                        <option value="Placed" <c:if test="${order.status == 'Placed'}">selected</c:if>>Placed</option>
                    </select>
                </div>

                <input type="submit" value="Update" class="btn btn-primary update-button">
                <a href="javascript:history.back()" class="btn btn-secondary back-button">Back</a>
            </form>

        </c:when>
        <c:otherwise>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Order Date</th>
                        <th>Order Total Price</th>
                        <th>Order Status</th>
                        <th>User First Name</th>
                        <th>User Last Name</th>
                        <th>User Email</th>
                        <th>User Address</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="orders" items="${orders}">
                        <tr>
                            <td>${orders.orderId}</td>
                            <td>${orders.orderDate}</td>
                            <td>${orders.totalPrice}</td>
                            <td>${orders.status}</td>
                            <td>${orders.user.firstName}</td>
                            <td>${orders.user.lastName}</td>
                            <td>${orders.user.email}</td>
                            <td>${orders.user.address}</td>
                            <td><a href="/admin/delete-order?id=${orders.orderId}" class="btn btn-danger delete-button"
                                   onclick="return confirm('Are you sure you want to delete this order?')">Delete</a>
                            </td>
                            <td><a href="/admin/edit-order?id=${orders.orderId}" class="btn btn-primary edit-button">Edit</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>