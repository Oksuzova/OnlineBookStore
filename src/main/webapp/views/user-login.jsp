<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
   <title>Online Book Store</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
   <script src="/js/errorHandling.js"></script>
</head>

<body>
<section class="vh-100 gradient-custom">
   <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
         <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card bg-gray text-dark" style="border-radius: 1rem;">
               <div class="card-body p-5">
                  <div class="mb-md-5 mt-md-4 pb-3">
                     <form action="${pageContext.request.contextPath}/login/user" method="POST">
                        <h2 class="fw-bold mb-2 text">Login as user</h2>

                        <div class="option">or Connect With Social Media</div>
                        <div class="twitter">
                           <a href="javascript:swal('Upcoming');"> <i class="fab fa-twitter"></i>Sign in With Twitter</a>
                        </div>
                        <div class="facebook">
                           <a href="javascript:swal('Upcoming');"> <i class="fab fa-facebook-f"></i>Sign in With Facebook</a>
                        </div>

                        <div data-mdb-input-init class="form-group form-white mb-4">
                           <input type="text" required aria-describedby="emailHelp" id="username" name="username" class="form-control form-control-lg" />
                           <small class="form-text text-muted" id="emailHelp">email</small>
                        </div>

                        <div data-mdb-input-init class="form-group form-white mb-4">
                           <input type="password" required aria-describedby="passwordHelp" id="password" name="password" class="form-control form-control-lg" />
                           <small class="form-text text-muted" id="passwordHelp">password</small>
                        </div>
                        <div class="row">
                           <div class="col">
                              <a data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-secondary form-control form-control-lg" href="${pageContext.request.contextPath}/">Home</a>
                           </div>
                           <div class="col">
                              <button data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary form-control form-control-lg" type="submit">Login</button>
                           </div>
                        </div>
                     </form>
                  </div>

               </div>
            </div>
         </div>
      </div>
   </div>
</section>
</body>
</html>