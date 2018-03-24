<%-- 
    Document   : TeamProfile
    Created on : 24 Mar, 2018, 2:10:59 PM
    Author     : Baseem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>About Team Members</title>
        <script src="../js/jquery-3.3.1.js"></script>
        <script src="../js/materialize.js"></script>
        <!-- <script src="../js/bootstrap.min.js"></script> -->
        <script src="../js/material.js"></script>
        <!-- <link rel="stylesheet" href="../css/bootstrap.min.css"> -->
        <link rel="stylesheet" href="../css/materialize.css">
        <link rel="stylesheet" href="../css/material.css">
        <link rel="stylesheet" href="../css/style1.css">
        <style>
            .aboutHead{
                background-color: #f4511e;
                margin-left: 10%;width:80%;
                font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            }
            body {
                display: flex;
                min-height: 100%;
                flex-direction: column;
            }
            .frm2{
                width: 450px;
                float: left;
                margin-top: 50px;
            }

            .state2{
                margin-left: 50px;
                margin-top: 50px;
            }

            .top{
                margin-top: 50px;
            }
            img.avatar {
                width: 10%;
                height:10%;
                border-radius: 50%;
                margin:20px;
            }
        </style>

    </head>
    <body>
        <div>
            <img src="../images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="../images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
            <jsp:include page="../Header.jspf"/>
        </div> 
        <nav class="aboutHead" style="">
            <div class="nav-wrapper" style="margin-left: 10%;width:80%; background-color: green;">
                <center><h3 style="margin-left:60px;">About Team Members</h3></center>
            </div>
        </nav>

        <div class="top" align="center">
            <img class="materialboxed" width="950" height="450" src="../images/herculean.jpg">    
        </div>

        <br><br>

        <div class="imgContainer" align="center">
            <a href="#one"><img  width="250" height="250" src="../images/rishabh.jpg" class="avatar"></a>
            <a href="#two"><img  width="250" height="250" src="../images/hari.jpg" class="avatar"></a>
            <a href="#three"><img  width="250" height="250" src="../images/piyush.jpg" class="avatar"></a>
            <a href="#four"><img  width="250" height="250" src="../images/gagan.jpg" class="avatar"></a>
            <a href="#five"><img  width="250" height="250" src="../images/ajita.jpg" class="avatar"></a>
            <a href="#six"><img  width="250" height="250" src="../images/pinky.jpg" class="avatar"></a>
        </div>

        <div class="row" id="one">
            <div class="frm2">
                <img  width="250" height="250" src="../images/rishabh.jpg">
            </div>
            <div class="frm2 state2">
                <p>Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...</p>
            </div>
        </div>

        <div class="row" id="two">
            <div class="frm2">
                <img  width="250" height="250" src="../images/hari.jpg">
            </div>
            <div class="frm2 state2">
                <p>Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...</p>
            </div>
        </div>

        <div class="row" id="three">
            <div class="frm2">
                <img  width="250" height="250" src="../images/piyush.jpg">
            </div>
            <div class="frm2 state2">
                <p>Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...</p>
            </div>
        </div>

        <div class="row" id="four">
            <div class="frm2">
                <img  width="250" height="250" src="../images/gagan.jpg">
            </div>
            <div class="frm2 state2">
                <p>Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...</p>
            </div>
        </div>

        <div class="row" id="five">
            <div class="frm2">
                <img  width="250" height="250" src="../images/ajita.jpg">
            </div>
            <div class="frm2 state2">
                <p>Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...</p>
            </div>
        </div>

        <div class="row" id="six">
            <div class="frm2">
                <img  width="250" height="250" src="../images/pinky.jpg">
            </div>
            <div class="frm2 state2">
                <p>Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...
                    Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...Some Content...</p>
            </div>
        </div>
        <div>
            <br><br><br>
            <jsp:include page="../Footer.jspf"/>
        </div>

    </body>
</html>
