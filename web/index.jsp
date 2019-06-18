<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <title>Earth Quakes Occurrence Application</title>

  <!-- Meta -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />

  <!-- Favicon icon -->
  <link rel="icon" href="assets/images/quake.png" type="image/x-icon">
  <!-- fontawesome icon -->
  <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
  <!-- animation css -->
  <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
  <!-- vendor css -->
  <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>
<!-- [ Pre-loader ] start -->
<div class="loader-bg">
  <div class="loader-track">
    <div class="loader-fill"></div>
  </div>
</div>
<!-- [ Pre-loader ] End -->
<!-- [ navigation menu ] start -->
<nav class="pcoded-navbar">
  <div class="navbar-wrapper">
    <div class="navbar-brand header-logo">
      <a href="index.jsp" class="b-brand">
        <div class="b-bg">
          <i class="feather icon-trending-up"></i>
        </div>
        <span class="b-title">Main Menu</span>
      </a>
      <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
    </div>
    <div class="navbar-content scroll-div">
      <ul class="nav pcoded-inner-navbar">
        <li class="nav-item pcoded-menu-caption">
          <label>Navigation</label>
        </li>
        <li data-username="home" class="nav-item active">
          <a href="index.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Home</span></a>
        </li>
        <li data-username="maps" class="nav-item active">
          <a href="Maps.jsp" hr class="nav-link "><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a>
        </li>
        <li data-username="about us" class="nav-item active">
          <a href="AboutUs.jsp" class="nav-link "><span class="pcoded-micon"><i class="feather icon-users"></i></span><span class="pcoded-mtext">About Us</span></a>
        </li>
        <li data-username="about us" class="nav-item active">
          <a href="/cs472Project_war_exploded/Login?action=logout" class="nav-link "><span class="pcoded-micon"><i
                  class="feather icon-log-out"></i></span><span class="pcoded-mtext">Log Out</span></a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- [ navigation menu ] end -->




<!-- [ Header ] end -->

<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
  <div class="pcoded-wrapper">
    <div class="pcoded-content">
      <div class="title">
        <h1 >
          Earth Quacks Tracking System &copy;
        </h1>
        <h3>
          presented as Final Project on WAP CS472
        </h3>
      </div>
      <div class="pcoded-inner-content">
        <div id="container">
          <div class='a'></div>
          <div class='b'></div>
          <div class='c'></div>
          <div class='d'></div>
          <div class='e'></div>
        </div>
      </div>

      <footer class="card-footer">&copy; Copyright 2019 WAP,CS472 @Huthaifa & Alex</footer>
    </div>
  </div>
</div>
<!-- [ Main Content ] end -->

<!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/pcoded.min.js"></script>
<script src="assets/js/movingObject.js"></script>
</body>
</html>
