<%-- 
    Document   : login_admins
    Created on : 25 Mar, 2018, 1:30:57 AM
    Author     : Hari
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <title> Login Page </title>
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
            <jsp:include page="../Header.jspf"/>
        </div>
        <div >
        <ul class="collapsible" data-collapsible="accordion">
            <li class="stake">
                <div class="collapsible-header"><p class="material-icons"> Beneficiary</p></div>

                <div class="collapsible-body">
                    <form>
                        <div  style="text-align:center">
                            <div style="width:300px" class="input-field row s3">
                                <input name="userNameULB" id="icon_prefix" type="text" class="validate">
                                <label for="icon_prefix">Adhar Card Number</label>
                            </div>

                            <div style="width:300px;" class="input-field row s3">
                                <input name="beneficiaryDateOfBirth" id="icon_prefix" type="text" class="datepicker">
                                <label for="icon_prefix">Date Of Birth</label>
                                <script>
                                    $('.datepicker').pickadate({
                                        selectMonths: true, // Creates a dropdown to control month
                                        selectYears: 15, // Creates a dropdown of 15 years to control year,
                                        today: 'Today',
                                        clear: 'Clear',
                                        close: 'Ok',
                                        closeOnSelect: false // Close upon selecting a date,
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="col">
                            <center>
                                <a class="grey-text text-lighten-3 waves-effect waves-light btn">Beneficiary</a>
                            </center>
                        </div>                      
                    </form>
                </div>
            </li>
            <li class="stake">
                <div class="collapsible-header"><p class="material-icons">Urban Local Bodies</p></div>
                <div class="collapsible-body">
                    <div  style="text-align:center">
                        <div style="width:300px" class="input-field row s3">
                            <input name="userNameULB" id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">User Name</label>
                        </div>

                        <div style="width:300px;" class="input-field row s3">
                            <input name="userNameULB" id="icon_prefix" type="password" class="validate">
                            <label for="icon_prefix">Password</label>
                        </div>

                        <div style="margin-left: -100px" class="row">
                            <a class="marbtn grey-text text-lighten-3 waves-effect waves-light btn">Submit</a>
                        </div>
                    </div>
            </li>
            <li  class="stake">
                <div class="collapsible-header"><p class="material-icons">States</p></div>
                <div class="collapsible-body">
                    <div  style="text-align:center">
                        <div style="width:300px" class="input-field row s3">
                            <input name="userNameULB" id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">User Name</label>
                        </div>

                        <div style="width:300px;" class="input-field row s3">
                            <input name="userNameULB" id="icon_prefix" type="password" class="validate">
                            <label for="icon_prefix">Password</label>
                        </div>

                        <div style="margin-left: -100px" class="row">
                            <a class="marbtn grey-text text-lighten-3 waves-effect waves-light btn">Submit</a>
                        </div>

                    </div>
                </div>
            </li>
            <li  class="stake">
                <div class="collapsible-header"><p class="material-icons">Centre</p></div>

                <div class="collapsible-body">
                    <center>
                        <div  style="text-align:center">
                            <div style="width:300px" class="input-field row s3">
                                <input name="userNameULB" id="icon_prefix" type="text" class="validate">
                                <label for="icon_prefix">User Name</label>
                            </div>

                            <div style="width:300px;" class="input-field row s3">
                                <input name="userNameULB" id="icon_prefix" type="password" class="validate">
                                <label for="icon_prefix">Password</label>
                            </div>

                            <div style="margin-left: -100px" class="col">
                                <a class="marbtn grey-text text-lighten-3 waves-effect waves-light btn">Submit</a>
                            </div>
                        </div>
                    </center>
                </div>
            </li>
        </ul>
    </div>
        <div>
            <br><br><br>
            <jsp:include page="../Footer.jspf"/>
        </div>
    </body>
</html>
