<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <title>Earth Quakes Occurrence Application</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

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
                    <a href="index.jsp" class="nav-link "><span class="pcoded-micon"><i
                            class="feather icon-home"></i></span><span class="pcoded-mtext">Home</span></a>
                </li>
                <li data-username="maps" class="nav-item active">
                    <a href="Maps.jsp" class="nav-link "><span class="pcoded-micon"><i
                            class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a>
                </li>
                <li data-username="about us" class="nav-item active">
                    <a href="AboutUs.jsp" class="nav-link "><span class="pcoded-micon"><i
                            class="feather icon-users"></i></span><span class="pcoded-mtext">About Us</span></a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<!-- [ navigation menu ] end -->

<!-- [ Header ] start -->
<header class="navbar pcoded-header navbar-expand-lg navbar-light">
    <div class="m-header">
        <a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
        <a href="alex.html" class="b-brand">
            <div class="b-bg">
                <i class="feather icon-trending-up"></i>
            </div>
            <span class="b-title">Main Menu</span>
        </a>
    </div>
</header>
<!-- [ Header ] end -->

<!-- [ Main Content ] start -->
<div class="pcoded-main-container">
    <div class="pcoded-wrapper">
        <div class="pcoded-content2">
            <div class="pcoded-inner-content2">
                <div class="firstparag">
                    <h1 class="paragraph0">We are Students</h1>
                    <h1 class="paragraph0"> at </h1>
                    <h1 class="paragraph0"> Maharishi University of Managment</h1>
                </div>
                <div class="parallax1">

                </div>
                <div class="secondparag">
                    <h1 class="paragraph1">This Is</h1>
                    <h1 class="paragraph1">A </h1>
                    <h1 class="paragraph1">Final Project</h1>
                    <h1 class="paragraph1">For </h1>
                    <h1 class="paragraph1">Web Application Programming</h1>
                    <div class="parallax2">
                    </div>
                </div>
                <h1 class="paragraphname">Huthaifa Almogdady</h1>
                <h1 class="paragraphcname">JORDAN</h1>
                <div class="parallax3">

                </div>
                <h1 class="paragraphname">Alex Qiu</h1>
                <h1 class="paragraphcname">CHINA</h1>
                <div class="parallax4">

                </div>
                <h1 class="paragraph4">CONTACT INFORMATION</h1>
                <div class="parallax5">
                    <div class="card">
                        <img src="assets/images/huth.jpg" alt="Avatar" style="width:100%">
                        <div class="container1">
                            <h4><strong>Huthaifa Almogdady</strong></h4>
                            <p><strong><em>"Analyst Programmer"</em></strong></p>
                            <p>Master Degree In Computer Science</p>
                            <p>Bachelor Degree In Computer Information System</p>
                            <p>Diploma Degree In Electrical Engineering</p>
                            <a href="Halmogdady@mum.edu">Halmogdady@mum.edu</a>
                        </div>
                    </div>

                    <div class="card1">
                        <img src="assets/images/ale.jpg" alt="Avatar" style="width:100%">
                        <div class="container1">
                            <h4><strong>Alex Qie</strong></h4>
                            <p><strong><em>"SoftWare Engineer"</em></strong></p>
                            <p>Bachelor Degree In Software Engineering</p>
                            <a href="xqiu@mum.edu">xqiu@mum.edu</a>


                        </div>
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


</body>
</html>
