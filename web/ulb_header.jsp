<%-- 
    Document   : ulb_header
    Created on : 25 Mar, 2018, 11:37:56 AM
    Author     : Baseem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Pradhan Mantri Aawas Yojna</title>
        <link rel="icon" type="image/png" href="http://localhost:8080/Hack2k18_PMAY/images/logo.jpg" />
        <script src="js/jquery-3.3.1.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/material.js"></script>
        <link rel="stylesheet" href="css/materialize.css">
        <link rel="stylesheet" href="css/material.css">
        <link rel="stylesheet" href="css/Header_Final.css">
    </head>
    <body  data-spy="scroll" data-target="#navbar-example">
        <div>
            <img src="images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
        </div>

        <nav class="nav-extended">
            <div style="background-color: #f4511e;" class="nav-wrapper">
                <a  href="#" class="brand-logo center">Urban Local Body</a>
            </div>
        </nav>
        <nav>
            <div class="nav-wrapper">
                <ul style="background-color: #f4511e; text-align:center;" class="left">
                    <li><a style="height: 65px; width:270px; padding-top:20px; font-size:20px;" class='dropdown-button' href='#' data-activates="beneficiaryRegistration">Beneficiary Registration</a></li>
                    <li><a style="height: 65px; width:281px; padding-top:20px; font-size:20px;" class="dropdown-button" href="#" data-activates="attachBeneficiary">Attach Beneficiary</a></li>
                    <li><a style="height: 65px; width:315px; padding-top:20px; font-size:20px;" class="dropdown-button" href="#" data-activates="dpr">Detailed Project Report(DPR)</a></li>
                    <li><a style="height: 65px; width:250px; padding-top:20px; font-size:20px;" class="dropdown-button" href="#" data-activates="feedback">Feedback</a></li>
                    <li><a style="height: 65px; width:250px; padding-top:20px; font-size:20px;" class="dropdown-button" href="#" data-activates="report">Report</a></li>
                </ul>
        </nav>
        <nav class="nav-extended">
            <!-- Dropdown Structure -->
            <!--beneficiaryRegistration-->
            <ul style="margin-top:65px;" id="beneficiaryRegistration" class="dropdown-content">
                <li><a href="#!">Format A</a></li>
                <li><a href="#!">Format B</a></li>
            </ul>
            <!--attachBeneficiary does'nt have a dropdown-->
            <!--DPR dropdown-->
            <ul id='dpr' style="margin-top:65px;" class='dropdown-content'>
                <li><a class='dropdown-button' href='#' data-activates='dropdown2' data-hover="hover" data-alignment="right">InSitu</a></li>
                <ul id="dropdown2"  class='dropdown-content dropdown-nested'>
                    <li><a href="#!">New DPR</a></li>
                    <li><a href="#!">Edit DPR</a></li>
                </ul>
                <li><a  class='dropdown-button' href='#' data-activates='dropdown2' data-hover="hover" data-alignment="right">Affordable Housing Partnership</a></li>
                <ul id="dropdown2"  class='dropdown-content dropdown-nested'>
                    <li><a href="#!">New DPR</a></li>
                    <li><a href="#!">Edit DPR</a></li>
                </ul> 
                <li><a class='dropdown-button' href='#' data-activates='dropdown2' data-hover="hover" data-alignment="right">Beneficiary Lead Construction</a></li>
                <ul id="dropdown2"  class='dropdown-content dropdown-nested'>
                    <li><a href="#!">New DPR</a></li>
                    <li><a href="#!">Edit DPR</a></li>
                </ul> 
            </ul>
            <ul  style="margin-top:65px;" id="feedback" class="dropdown-content">
                <li><a href="#!">CSMC</a></li>
                <li><a href="#!">SLSMC</a></li>
            </ul>
            <ul style="margin-top:65px;" id="report" class="dropdown-content">
                <li><a href="#!">InSitu</a></li>
                <li><a href="#!">Affordable Housing Partnership</a></li>
                <li><a href="#!">Beneficiary Lead Construction</a></li>
            </ul>
            <br>
        </nav> 
    </body>
</html>