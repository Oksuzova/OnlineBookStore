<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>User Home - Online Bookstore</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
   </head>
   <body class="bg-light">
      <!-- Navigation bar, similar to the one provided -->
      <!-- ... -->
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
                  <li class="nav-item"><a class="nav-link" href="/user/orders?userId=${user.id}">My Orders</a></li>
               </ul>
               <ul class="navbar-nav ms-auto">
                  <li class="nav-item">
                     <a class="nav-link" href="/user/logout" data-bs-target="#myModal" data-bs-toggle="modal">Logout</a>
                  </li>
               </ul>
            </div>
         </div>
      </nav>
      <div class="container mt-4">
         <div class="jumbotron text-center">
            <h1 class="display-4">${book.title}</h1>
            <hr>
            <p>${book.author}</p>
         </div>
         <!-- Category Filtering Form -->
         <div class="row">
            <div class="col-sm-6 col-xs-4">
               <img src="${book.image}" class="card-img-top" height="400px">
            </div>
            <div class="col-sm-6 col-xs-4">
               <p><b>Description:</b> ${book.description}</p>
               <p><b>Price:</b> ${book.price}</p>
               <p><b>Available Quantity:</b> ${book.stock}</p>
               <div class="row mt-5">
                  <div class="col">
               <form action="/user/addToCart/${book.id}" method="post">
                  <button type="submit" class="btn btn-primary update-button">Add to Cart</button>
               </form>
                  </div>
                     <div class="col">
               <form action="/user/addReview/${book.id}" method="post">
                  <button type="submit" class="btn btn-primary update-button">Add review</button>
               </form>
                     </div>
               </div>
            </div>
         </div>
         <hr>
         <h3 class="text-center">Comments</h3>

            <div class="containerd">
               <c:forEach var="review" items="${book.reviews}">
               <div class="card bg-light mb-3 w-100">
                  <div class="card-header d-flex">
                        <div class="ml-auto">${review.user.firstName} ${review.user.lastName}</div>
                        <small class="ms-auto">created: ${review.user.email}</small>
                  </div>
                  <div class="card-body">
                     <h5 class="card-title">Excelent!</h5>
                     <p class="card-text">${review.description}</p>
                  </div>
               </div>
               </c:forEach>
            </div>
      </div>
   </body>
</html>