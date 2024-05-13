<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Admin Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
      <link rel="stylesheet" href="/css/styles.css">
      <!-- Link to your custom styles -->
   </head>
   <body>
      <nav class="navbar navbar-expand-lg navbar-dark">
         <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
               aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav ms-auto">
                  <li class="nav-item">
                     <a class="nav-link" href="/admin/logout" data-bs-target="#myModal" data-bs-toggle="modal">Logout</a>
                  </li>
               </ul>
            </div>
         </div>
      </nav>
      <div class="jumbotron text-center">
         <h1 class="display-4">Welcome Back, Admin</h1>
         <p class="lead">Manage your data from this Admin Panel</p>
      </div>
      <div class="container">
         <div class="card-group">

               <div class="card">
                  <div class="card-body text-center">
                     <h4 class="card-title">Book Categories</h4>
                     <p>Manage categories here.</p>
                     <a href="/admin/book-categories" class="card-link btn btn-primary">Manage Categories</a>
                  </div>
               </div>


               <div class="card">
                  <div class="card-body text-center">
                     <h4 class="card-title">Manage Books</h4>
                     <p>Manage all the books here.</p>
                     <a href="${pageContext.request.contextPath}/admin/manageBooks" class="card-link btn btn-primary">Manage Books</a>
                  </div>
               </div>

               <div class="card">
                  <div class="card-body text-center">
                     <h4 class="card-title">Users</h4>
                     <p>Manage all the users here.</p>
                     <a href="/admin/users" class="card-link btn btn-primary">Manage Users</a>
                  </div>
               </div>

               <div class="card">
                  <div class="card-body text-center">
                     <h4 class="card-title">Orders</h4>
                     <p>Manage orders here.</p>
                     <a href="/admin/orders" class="card-link btn btn-primary">Manage Orders</a>
                  </div>
               </div>

         </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
         integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
         crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
         integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
         crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
         integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
         crossorigin="anonymous"></script>
   </body>
</html>