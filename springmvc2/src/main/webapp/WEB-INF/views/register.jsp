<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Employee - Sigh Up</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <!-- Bootstrap core CSS -->
   <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/mdb.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/style.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/yogi.css" />" rel="stylesheet">

    <style type="text/css">
        
    html,
    body,
    header,
    .view {
      height: 100%;
    }

    @media (min-width: 851px) and (max-width: 1440px) {
      html,
      body,
      header,
      .view {
        height: 850px;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {
      html,
      body,
      header,
      .view {
        height: 1000px;
      }
    }

    @media (min-width: 451px) and (max-width: 740px) {
      html,
      body,
      header,
      .view {
        height: 1200px;
      }
    }

    @media (max-width: 450px) {
      html,
      body,
      header,
      .view {
        height: 1400px;
      }
    }

    .intro-2 {
      background: url("http://mdbootstrap.com/img/Photos/Others/forest1.jpg")no-repeat center center;
      background-size: cover;
    }

    .top-nav-collapse {
      background-color: #3f51b5 !important;
    }

    .navbar:not(.top-nav-collapse) {
      background: transparent !important;
    }

    @media (max-width: 768px) {
      .navbar:not(.top-nav-collapse) {
        background: #3f51b5 !important;
      }
    }
    @media (min-width: 800px) and (max-width: 850px) {
        .navbar:not(.top-nav-collapse) {
            background: #3f51b5!important;
        }
    }

    .rgba-gradient {
      background: -webkit-linear-gradient(98deg, rgba(22, 91, 231, 0.5), rgba(255, 32, 32, 0.5) 100%);
      background: -webkit-gradient(linear, 98deg, from(rgba(22, 91, 231, 0.5)), to(rgba(255, 32, 32, 0.5)));
      background: linear-gradient(to 98deg, rgba(22, 91, 231, 0.5), rgba(255, 32, 32, 0.5) 100%);
    }

    .card {
      background-color: rgba(255, 255, 255, 0.85);
    }

    h6 {
      line-height: 1.7;
    }
    </style>

</head>
<body> 
    


  <!--Main Navigation-->
  <header>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
                aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="basicExampleNav">
                <ul class="navbar-nav mr-auto smooth-scroll">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                </ul>
                <ul class="navbar-nav nav-flex-icons">
                    <li class="nav-item">
                        <!-- <a class="nav-link"><i class="fab fa-facebook"></i></a> -->
                        <a href="login.jsp"><button class="btn bg-info pt-2 pb-2">Login</button></a>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link"><i class="fab fa-twitter"></i></a> -->
                        <a href="register.jsp"><button class="btn bg-info pt-2 pb-2">Sign Up</button></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->

    <!--Intro Section-->
    <section class="view intro-2">
        <div class="mask rgba-gradient">
          <div class="container h-100 d-flex justify-content-center align-items-center">

            <!--Grid row-->
            <div class="row  pt-5 mt-3">

              <!--Grid column-->
              <div class="col-md-12">

                <div class="card">
                  <div class="card-body">

                    <h2 class="font-weight-bold my-4 text-center mb-5 mt-4 font-weight-bold">
                      <strong>REGISTER</strong>
                    </h2>
                    <hr>

                    <!--Grid row-->
                    <div class="row mt-5">

                      <!--Grid column-->
                      <div class="col-md-6 ml-lg-5 ml-md-3">

                        <!--Grid row-->
                        <div class="row pb-4">
                          <div class="col-2 col-lg-1">
                            <i class="fas fa-university indigo-text fa-lg"></i>
                          </div>
                          <div class="col-10">
                            <h4 class="font-weight-bold mb-4">
                              <strong>Safety</strong>
                            </h4>
                            <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam
                              minima assumenda deleniti hic.</p>
                          </div>
                        </div>
                        <!--Grid row-->

                        <!--Grid row-->
                        <div class="row pb-4">
                          <div class="col-2 col-lg-1">
                            <i class="fas fa-desktop deep-purple-text fa-lg"></i>
                          </div>
                          <div class="col-10">
                            <h4 class="font-weight-bold mb-4">
                              <strong>Technology</strong>
                            </h4>
                            <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam
                              minima assumenda deleniti hic.</p>
                          </div>
                        </div>
                        <!--Grid row-->

                        <!--Grid row-->
                        <div class="row pb-4">
                          <div class="col-2 col-lg-1">
                            <i class="fas fa-money-bill-alt purple-text fa-lg"></i>
                          </div>
                          <div class="col-10">
                            <h4 class="font-weight-bold mb-4">
                              <strong>Finance</strong>
                            </h4>
                            <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam
                              minima assumenda deleniti hic.</p>
                          </div>
                        </div>
                        <!--Grid row-->

                      </div>
                      <!--Grid column-->

                      <!--Grid column-->
                      <div class="col-md-5">

                        <!--Grid row-->
                        <div class="row pb-4 d-flex justify-content-center mb-4">

                          <!-- <h4 class="mt-3 mr-4">
                            <strong>Login with</strong>
                          </h4>

                          <div class="inline-ul text-center d-flex justify-content-center">
                            <a class="p-2 m-2 fa-lg tw-ic">
                              <i class="fab fa-twitter fa-lg indigo-text"></i>
                            </a>
                            <a class="p-2 m-2 fa-lg li-ic">
                              <i class="fab fa-linkedin-in fa-lg indigo-text"> </i>
                            </a>
                            <a class="p-2 m-2 fa-lg ins-ic">
                              <i class="fab fa-instagram fa-lg indigo-text"> </i>
                            </a>
                          </div>

                          <h4 class="mt-3 ml-4">
                            <strong>or:</strong>
                          </h4> -->

                        </div>
                        <!--/Grid row-->

                        <!--Body-->
                        <form action="processsignup" method="post">
                        	<div class="md-form">
	                          <i class="fas fa-user prefix"></i>
	                          <input name="firstName" type="text" id="orangeForm-name" class="form-control">
	                          <label for="orangeForm-name">First Name</label>
	                        </div>
	                        <div class="md-form">
	                          <i class="fas fa-user prefix"></i>
	                          <input name="lastName" type="text" id="orangeForm-name" class="form-control">
	                          <label for="orangeForm-name">Last Name</label>
	                        </div>
	                        <div class="md-form">
	                          <i class="fas fa-envelope prefix"></i>
	                          <input name="email" type="text" id="orangeForm-email" class="form-control">
	                          <label for="orangeForm-email">Email</label>
	                        </div>
	                        <div class="md-form">
	                          <i class="fas fa-user prefix"></i>
	                          <input name="contact" type="text" id="orangeForm-name" class="form-control">
	                          <label for="orangeForm-name">Contact Number</label>
	                        </div>
	                        <div class="md-form">
	                          <i class="fas fa-lock prefix"></i>
	                          <input name="password" type="password" id="orangeForm-pass" class="form-control">
	                          <label for="orangeForm-pass">New Password</label>
	                        </div>
	                        <div class="md-form">
	                          <i class="fas fa-lock prefix"></i>
	                          <input name="password2" type="password" id="orangeForm-pass" class="form-control">
	                          <label for="orangeForm-pass">Confirm Password</label>
	                        </div>
	                        <div class="text-center">
	                          <button class="btn btn-indigo btn-rounded mt-5">Sign up</button>
	                        </div>
                        </form>

                      </div>
                      <!--Grid column-->

                    </div>
                    <!--Grid row-->

                  </div>
                </div>

              </div>
              <!--Grid column-->

            </div>
            <!--Grid row-->

          </div>
        </div>
    </section>
    <!--Intro Section-->

  </header>
  <!--Main Navigation-->


    <!-- SCRIPTS -->
    <!-- SCRIPTS -->
    <script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
	  <script src="<c:url value="/resources/js/popper.min.js" />"></script>
	  <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	  <script src="<c:url value="/resources/js/mdb.min.js" />"></script>
    <script>
    </script>
</body>
</html>