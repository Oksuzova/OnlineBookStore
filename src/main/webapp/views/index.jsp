<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
   <head>
      <title>Online Book Store</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   </head>
<body>
<section class="vh-100 gradient-custom">
   <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
         <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card bg-gray text-dark" style="border-radius: 1rem;">
               <div class="card-body p-5 text-center">

                  <div class="mb-md-5 mt-md-4 pb-5">

                     <h2 class="fw-bold mb-2 text">Welcome to Book Store</h2>
                     <p class="text-50 mb-5">Please choose you login option</p>

                     <div data-mdb-input-init class="form-outline form mb-4">
                        <a class="btn btn-outline-secondary form-control form-control-lg" href="${pageContext.request.contextPath}/admin-login" role="button">Admin</a>
                     </div>

                     <div data-mdb-input-init class="form-outline form mb-4">
                        <a class="btn btn-outline-secondary form-control form-control-lg" href="${pageContext.request.contextPath}/user-login" role="button">User</a>
                     </div>

                     <p class="small mb-5 pb-lg-2"><a class="text-50" href="${pageContext.request.contextPath}/registration">Register new user</a></p>

                  </div>

               </div>
            </div>
         </div>
      </div>
   </div>
</section>
</body>
</html>