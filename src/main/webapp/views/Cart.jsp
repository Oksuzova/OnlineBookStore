<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Cart - Online Bookstore</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<script async src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
   </head>
   <body class="bg-light">
      <!-- Navigation bar, similar to the one provided -->
      <!-- ... -->
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/user/home">Online Bookstore</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
               data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav ml-auto">
                  <li class="nav-item"><a class="nav-link" href="/user/profile">Profile</a></li>
                  <li class="nav-item"><a class="nav-link" href="/user/orders">My Orders</a></li>
               </ul>
               <ul class="navbar-nav ms-auto">
                  <li class="nav-item"><a class="nav-link" href="/user/logout">Logout</a></li>
               </ul>
            </div>
         </div>
      </nav>
      <div class="container mt-4">
         <div class="jumbotron text-center">
            <h1 class="display-4">My Cart</h1>
            <hr>
            <p>Manage your book selections here!</p>
         </div>
         <!-- Cart Table -->
         <table class="table table-striped mt-3">
            <thead class="thead-dark">
               <tr>
                  <th scope="col">Name</th>
                  <th scope="col">Author</th>
                  <th scope="col">Category</th>
                  <th scope="col">Description</th>
                  <th scope="col">Price($)</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Remove</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="cartBook" items="${cart.cartBooks}">
                  <tr>
                     <td>${cartBook.book.title}</td>
                     <td>${cartBook.book.author}</td>
                     <td>${cartBook.book.category.name}</td>
                     <td>${cartBook.book.description}</td>
                     <td>${cartBook.book.price}</td>
                     <td>${cartBook.quantity}</td>
                     <td>
                        <form action="/user/removeBookFromCart" method="post">
                           <input type="hidden" name="cartBookId" value="${cartBook.id}">
                           <button type="submit" class="btn btn-danger">Remove</button>
                        </form>
                        </form>
                     </td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
         <!-- Cart Summary -->
         <div class="card mb-4">
            <div class="card-body">
               <h5 class="card-title">Cart Summary</h5>
               <p class="card-text">
                  Total Cost: $
                  <c:out value="${cartTotalCost}"/>
               </p>
               <form action="/user/checkout" method="post">
                  <button type="submit" class="btn btn-primary">Checkout</button>
               </form>
               <c:if test="${not empty successMessage}">
                  <div class="alert alert-success">${successMessage}</div>
               </c:if>
               <c:if test="${not empty errorMessage}">
                  <div class="alert alert-danger">${errorMessage}</div>
               </c:if>
            </div>
         </div>
      </div>
      <!-- Bootstrap JS and jQuery -->
      <script>
         $(document).ready(function() {
             <% if (request.getSession().getAttribute("successMessage") != null) { %>
                 alert('<%= request.getSession().getAttribute("successMessage") %>');
                 <% request.getSession().removeAttribute("successMessage"); %>
             <% } %>
         });
      </script>
   </body>
</html>