<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Admin Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
      <script async src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
   </head>
   <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <div class="container-fluid">
            <a class="navbar-brand" href="/admin/home">Online Bookstore</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
               aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav ms-auto">
                  <li class="nav-item">
                     <a class="nav-link" href="/admin/logout">Logout</a>
                  </li>
               </ul>
            </div>
         </div>
      </nav>
      <div class="mb-5 p-5 text-white text-center" style="background-color: #17a2b8">
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
   </body>
</html>