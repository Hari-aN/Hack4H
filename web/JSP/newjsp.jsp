<%-- 
    Document   : newjsp
    Created on : 22 Mar, 2018, 11:35:00 PM
    Author     : Baseem
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="../js/jquery-3.3.1.js"></script>
        <script src="../js/materialize.js"></script>
        <script src="../js/bootstrap.js"></script>
        <script src="../js/material.js"></script>
        <link rel="stylesheet" href="../css/headerFooter.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <img src="../images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="../images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
        </div> 

        <jsp:include page="../Header.jspf"/>
        <h1>Hello World!</h1>
        <jsp:include page="../Footer.jspf"/>
    </body>
</html>
