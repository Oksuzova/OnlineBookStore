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
                  <li class="nav-item"><a class="nav-link" href="/admin/orders">Orders</a></li>
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
         <h2 class="text-center mb-4">Update User Details</h2>
         <c:choose>
            <c:when test="${mode == 'MODE_UPDATE'}">
               <form action="/admin/update-user" method="post">
                  <input type="hidden" name="id" value="<c:out value="${user.id}"/>" />

                  <div class="form-group">
                     <label for="firstName">First Name:</label>
                     <input type="text" id="firstName" name="firstName" class="form-control" value="<c:out value="${user.firstName}"/>" required>
                  </div>

                  <div class="form-group">
                     <label for="lastName">Last Name:</label>
                     <input type="text" id="lastName" name="lastName" class="form-control" value="<c:out value="${user.lastName}"/>" required>
                  </div>

                  <div class="form-group">
                     <label for="username">Username:</label>
                     <input type="text" id="username" name="username" class="form-control" value="<c:out value="${user.username}"/>" required>
                  </div>

                  <div class="form-group">
                     <label for="password">Password:</label>
                     <input type="password" id="password" name="password" class="form-control" value="<c:out value="${user.password}"/>" required>
                     <input type="checkbox" onclick="togglePassword()"> Show Password
                  </div>

                  <div class="form-group">
                     <label for="email">Email:</label>
                     <input type="email" id="email" name="email" class="form-control" value="<c:out value="${user.email}"/>" required>
                  </div>

                  <div class="form-group">
                     <label for="role">Role:</label>
                     <select id="role" name="role" class="form-control" required>
                        <option value="ROLE_USER" <c:if test="${user.role == 'ROLE_USER'}">selected</c:if>>User</option>
                        <option value="ROLE_ADMIN" <c:if test="${user.role == 'ROLE_ADMIN'}">selected</c:if>>Admin</option>
                     </select>
                  </div>

                  <input type="submit" value="Update" class="btn btn-primary update-button">
                  <a href="javascript:history.back()" class="btn btn-secondary back-button">Back</a>
               </form>
            </c:when>
            <c:otherwise>
               <div class="table-responsive">
                  <table class="table table-striped">
                     <thead>
                        <tr>
                           <th>User ID</th>
                           <th>Username</th>
                           <th>First Name</th>
                           <th>Last Name</th>
                           <th>Email</th>
                           <th>Role</th>
                           <th>Delete</th>
                           <th>Edit</th>
                        </tr>
                     </thead>
                     <tbody>
                        <c:forEach var="user" items="${users}">
                           <tr>
                              <td>${user.id}</td>
                              <td>${user.username}</td>
                              <td>${user.firstName}</td>
                              <td>${user.lastName}</td>
                              <td>${user.email}</td>
                              <td>${user.role}</td>
                              <td><a href="/admin/delete-user?id=${user.id}" class="btn btn-danger delete-button"
                                 onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                              </td>
                              <td><a href="/admin/edit-user?id=${user.id}" class="btn btn-primary edit-button">Edit</a></td>
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