<%-- 
    Document   : template
    Created on : 24 Mar, 2018, 2:33:57 AM
    Author     : Baseem
--%>
<%-- This page will be used as a template to generate other JSP pages for the development ....
it will help in managing common header footer and will avoid hoch-poch coding.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <title> TEMPLATE TITLE </title>
        <!-- Loading main css file -->
        <script src="../js/jquery-3.3.1.js"></script>
        <script src="../js/materialize.js"></script>
        <script src="../js/material.js"></script>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/materialize.css">
        <link rel="stylesheet" href="../css/material.css">
        <link rel="stylesheet" href="../css/table.css">
    </head>
    <body>
        <div>
            <img src="../images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="../images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
            <jsp:include page="../newjsp.jsp"/>
        </div>
        <div>
            <h1>this division can be used for your editing  purpose. </h1>
            <h2>start your code here. </h2>
        </div>
        <div>
            <br><br><br>
            <jsp:include page="../Footer.jspf"/>
        </div>
    </body>
</html>
