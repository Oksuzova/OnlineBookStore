<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>User Registration</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
      <script async src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
   </head>
   <body>
   <script>
      function passwordVisible() {
         var pwd = document.getElementById("password");
         var chk = document.getElementById("passwordCheck");
         if (pwd.type === "password") {
            pwd.type = "text";
            chk.classList.add('text-success');
         } else {
            chk.classList.remove('text-success');
            pwd.type = "password";
         }
      }
   </script>
   <section class="vh-100 gradient-custom">
      <div class="container py-5 h-100">
         <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
               <div class="card bg-gray text-dark" style="border-radius: 1rem;">
                  <div class="card-body p-5">
                     <div class="mb-md-5 mt-md-4 pb-3">
                        <h1>User Registration</h1>
         <c:if test="${param.registrationError}">
            <p id="errorMessage"></p>
            <!-- Registration error message will be displayed here -->
         </c:if>
         <form action="/registration" method="POST" class="login-form">
            <div class="form-group">
               <label for="firstName">First Name:</label>
               <input class="form-control form-control-lg" type="text" id="firstName" name="firstName" required>
            </div>
            <div class="form-group">
               <label for="lastName">Last Name:</label>
               <input class="form-control form-control-lg" type="text" id="lastName" name="lastName" required>
            </div>
            <div class="form-group">
               <label for="username">Username:</label>
               <input class="form-control form-control-lg" type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
               <label for="password">Password</label>

               <div class="input-group">

                  <input type="password" id="password" name="password" autocomplete="current-password" class="form-control form-control-lg rounded" spellcheck="false" autocorrect="off" autocapitalize="off" required />
                  <div class="input-group-append">
                     <span class="form-control form-control-lg text-secondary" id="passwordCheck" onclick="passwordVisible()">@</span>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label for="email">Email:</label>
               <input class="form-control form-control-lg" type="email" id="email" name="email" required>
            </div>
            <div class="row mt-2">
               <div class="col">
                  <a data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-secondary form-control form-control-lg" href="${pageContext.request.contextPath}/">Back</a>
               </div>
               <div class="col">
                  <button data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary form-control form-control-lg" type="submit">Register</button>
               </div>
            </div>
         </form>
                     </div></div></div></div></div></div></section>
      <script src="/js/errorHandling.js"></script>
   </body>
</html>