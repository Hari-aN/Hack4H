<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Pradhan Mantri Aawas Yojna</title>
        <link rel="icon" type="image/png" href="http://localhost:8080/Hack2k18_PMAY/images/logo.jpg" />
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/material.js"></script>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/materialize.css">
        <link rel="stylesheet" href="css/material.css">

    </head>
    <body>
        <div>
            <img src="images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
        </div>

    <center>
        <div class="col">
            <ul class="tabs" style="background-color: #f4511e">
                <li class="tab main-nav"><a style="color: white;" href="#home">Home</a></li>
                <li class="tab main-nav"><a style="color: white;" href="JSP/aboutUs.jsp">About Us</a></li>
                <li class="tab main-nav"><a style="color: white;" href="#guidelines">Guidelines</a></li>
                <li class="tab main-nav"><a style="color: white;" href="#knowledge">Knowledge Network</a></li>
                <li class="tab main-nav"><a style="color: white;" href="#photo">Photo Gallery</a></li>
                <li class="tab main-nav"><a style="color: white;" href="#contact">Contact Us</a></li>
                <li class="tab main-nav"><a style="color: white;" href="#housing">Housing Technologies</a></li>
                <li class="tab main-nav"><a style="color: white;" href="JSP/login_admins.jsp">Stakeholder Login</a></li>
            </ul>
        </div>
    </center>
    <div id="home" class="row"> 
        <marquee direction="left">For Technical support contact us at PMAYG Helpline No. 1800-11-6446 , Mail us at support-pmayg@gov.in</marquee>
        <hr style="margin-top: -0.4px;">
        <ul style="margin-top:10px;">

            <li><a style="margin-left: 125px;;background-color: #f4511e" class="col waves-effect btn marbtn" href="#!">Data Entry</a></li>
            <li><a style="margin-left: 125px;;background-color: #f4511e" class="col waves-effect btn marbtn" href="#!">Report</a></li>
            <li><a style="margin-left: 125px;;background-color: #f4511e" class="col waves-effect btn marbtn" href="#!">FTO Tracking</a></li>
            <li><a style="margin-left: 125px;;background-color: #f4511e" class="col waves-effect btn marbtn" href="#!">E-Payment</a></li>
            <li><a style="margin-left: 125px;;background-color: #f4511e" class="col waves-effect btn marbtn" href="#!">Performance</a></li>
        </ul>
    </div>
    <div>
        <br><br><br>
        <jsp:include page="Footer.jspf"/>
    </div> 

</body> 
</html>