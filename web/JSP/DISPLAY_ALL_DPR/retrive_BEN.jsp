<%-- 
    Document   : Beneficiary Record
    Created on : 23-03-2018, 04:08:40 PM
    Author     : PLANET
--%>


<%@page import="Beans.AdminRequestBean"%>

<%-- This page is used to display the details of the 
       retrieve benificiary details , and then later verify them --%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <title>|Beneficiary Record|</title>
        <!-- Loading main css file -->
        <script src="../../js/jquery-3.3.1.js"></script>
        <script src="../../js/materialize.js"></script>
        <script src="../../js/material.js"></script>
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/materialize.css">
        <link rel="stylesheet" href="../../css/material.css">
        <link rel="stylesheet" href="../../css/table.css">
        <link rel="stylesheet" href="../../css/Header_Final.css">
        <style>

            input {margin-bottom: 5px; padding: 2px 3px; width: 98px;}
        </style>
    </head>
    <body>
        <div>
            <img src="../../images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="../../images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
            <jsp:include page="../../ULB_Header.jspf"/>
        </div>
        <br>
<!--        <nav class="aboutHead" style="width: 80%; margin-left: 10%; background-color: red;">
            <div class="nav-wrapper" style="margin-left: 10%;width:80%; background-color: green;">
                <center><h3 style="margin-left:60px;">|Beneficiary Record|</h3></center>
            </div>
        </nav>-->
<div align="center">
        <nav class="aboutHead" style="width: 80%; background-color: red;">
            <div class="nav-wrapper" style=";width:80%; background-color: green;">
                <center><h3 style="">|Beneficiary Record|</h3></center>
            </div>
        </nav>
</div>
<form>
            <div align="center" style="margin-left:10%;" id="search_div" class="row">
                <div class="s4 input-field col">
                    <input name="cityName" id="search1" type="text" class="validate">
                    <label for="search1">Type to Search</label>
                </div>
                <div class="s4 input-field col">
                    <input name="cityName" id="search2" type="text" class="validate">
                    <label for="search2">Type to Search</label>
                </div>
                <div class="s4 input-field col">
                    <input name="cityName" id="search3" type="text" class="validate">
                    <label for="search3">Type to Search</label>
                </div>
                <!--<div><input name="Submit" type="submit"></div>-->
            </div>
        </form>
        <!--<br><br>-->
        <form  action="">
                <div>
                    <div style="overflow-x:auto; margin-left: 120px;">
                        <table id="table" border="1" WIDTH="100%" >
                            <tr><th>S_NO</th>
                                <th>SURVEY_NO</th>
                                <th>STATE</th>
                                <th>DISTRICT</th>
                                <th>CITY</th>
                                <th>WARD</th>
                                <th>SLUM_NAME</th>
                                <th>AREA_NAME</th>
                                <th>HFA_VERTICAL</th>
                                <th>FMLY_HEAD_NM</th>
                                <th>GENDER</th>
                                <th>FATHERS_NAME</th>
                                <th>FMLY_HEAD_AGE</th>
                                <th>HOUSE_NO</th>
                                <th>STREET</th>
                                <th>MOBILE_NO</th>
                                <th>OWNERSHIP</th>
                                <th>HOUSE_TYPE</th>
                                <th>NO_ROOMS</th>
                                <th>AADHAR_CARD</th>
                                <th>RELIGION</th>
                                <th>CASTE</th>
                                <th>BANK_NM</th>
                                <th>BANK_ACC_NO</th>
                                <th>BRANCH_NM</th>
                                <th>YEARS_STAY</th>
                                <th>SIZE_DU</th>
                                <th>DISABLE</th>
                                <th>MARITAL_STATUS</th>
                                <th>OWNS_HOUSE_LAND</th>
                                <th>EMPLOYMENT</th>
                                <th>AVG_MONTHLY_INC</th>
                                <th>BPL_CARD_NO</th>
                                <th>HOUSING_REQ</th>
                                <th>FMLY_HEAD_IMG_PATH</th>
                                <th>DGTL_SIGN_ULB</th>
                                <th>DATE_OF_CREATION</th>
                            </tr>
                            <%
                                //Creating the reference of type ResultSet
                                ResultSet RS;
                                //Creating the object of AdminVewRequestBean
                                AdminRequestBean obj = new AdminRequestBean();                           //Using the static show_Customer_NV() function of Customer
                                RS = obj.showBenSurvey();
                                int i = 1;
                                while (RS.next()) {
                            %>
                            <tr>
                                <td><%=i + "."%></td>
                                <td><%= RS.getString(1)%></td>
                                <td><%= RS.getString(2)%></td>
                                <td><%= RS.getString(3)%></td>
                                <td><%= RS.getString(4)%></td>
                                <td><%= RS.getString(5)%></td>
                                <td><%= RS.getString(6)%></td>
                                <td><%= RS.getString(7)%></td>
                                <td><%= RS.getString(8)%></td>
                                <td><%= RS.getString(9)%></td>
                                <%//printing gender for selection START************
                                    if (RS.getByte(10) == 1) {
                                %>
                                <td>MALE</td>
                                <%
                                } else if (RS.getByte(10) == 2) {
                                %>
                                <td>FEMALE</td>
                                <%
                                } else {
                                %>
                                <td>OTHER</td>
                                <%
                                    }//printing gender for selection end************
%>
                                <td><%= RS.getString(11)%></td>
                                <td><%= RS.getString(12)%></td>
                                <td><%= RS.getString(13)%></td>
                                <td><%= RS.getString(14)%></td>
                                <td><%= RS.getString(15)%></td>
                                <td><%= RS.getString(16)%></td>
                                <td><%= RS.getString(17)%></td>
                                <td><%= RS.getString(18)%></td>
                                <td><%= RS.getString(19)%></td>
                                <%//printing religion for selection  START***********
                                    if (RS.getByte(20) == 1) {
                                %>
                                <td>HINDU</td>
                                <%
                                } else if (RS.getByte(20) == 2) {
                                %>
                                <td>ISLAM</td>
                                <%
                                } else if (RS.getByte(20) == 3) {
                                %>
                                <td>CRISTIAN</td>
                                <%
                                } else if (RS.getByte(20) == 4) {
                                %>
                                <td>SIKHISM</td>
                                <%
                                } else if (RS.getByte(20) == 5) {
                                %>
                                <td>BUDHISM</td>
                                <%
                                } else if (RS.getByte(20) == 6) {
                                %>
                                <td>JAINISM</td>
                                <%
                                } else {
                                %>
                                <td>OTHER</td>
                                <%
                                    }//printing religion for selection  END***********
                                %>
                                <%//printing caste for selection  START***********
                                    if (RS.getByte(21) == 1) {
                                %>
                                <td>GEN</td>
                                <%
                                } else if (RS.getByte(21) == 2) {
                                %>
                                <td>SC</td>
                                <%
                                } else if (RS.getByte(21) == 3) {
                                %>
                                <td>ST</td>
                                <%
                                } else {
                                %>
                                <td>OBC</td>
                                <%
                                    }//printing caste for selection  END***********
%>
                                <td><%= RS.getString(22)%></td>
                                <td><%= RS.getString(23)%></td>
                                <td><%= RS.getString(24)%></td>
                                <td><%= RS.getString(25)%></td>
                                <td><%= RS.getString(26)%></td>
                                <td><%= RS.getString(27)%></td>
                                <td><%= RS.getString(28)%></td>
                                <td><%= RS.getString(29)%></td>
                                <td><%= RS.getString(30)%></td>
                                <td><%= RS.getString(31)%></td>
                                <td><%= RS.getString(32)%></td>
                                <td><%= RS.getString(33)%></td>
                                <td><%= RS.getString(34)%></td>
                                <td><%= RS.getString(35)%></td>
                                <td><%= RS.getString(36)%></td>
                                <%
                                    if (RS.getString(14) == "verified") {
                                %>
                                <%= RS.getString(14)%>
                                <%
                                } else {
                                %>
                                <%
                                        }
                                        i++;
                                    }
                                %>
                            </tr>
                        </table>
                        <script>
                            var $rows = $('#table tr');
                            $('#search1, #search2,#search3').on('input', function () {
                                var val1 = $.trim($('#search1').val()).replace(/ +/g, ' ').toLowerCase();
                                var val2 = $.trim($('#search2').val()).replace(/ +/g, ' ').toLowerCase();
                                var val3 = $.trim($('#search3').val()).replace(/ +/g, ' ').toLowerCase();

                                $rows.show().filter(function () {
                                    var text1 = $(this).find('td:nth-child(2)').text().replace(/\s+/g, ' ').toLowerCase();
                                    var text2 = $(this).find('td:nth-child(3)').text().replace(/\s+/g, ' ').toLowerCase();
                                    var text3 = $(this).find('td:nth-child(4)').text().replace(/\s+/g, ' ').toLowerCase();
                                    return !~text1.indexOf(val1) || !~text2.indexOf(val2) || !~text3.indexOf(val3);
                                }).hide();
                            });
                        </script>

                    </div>
                </div>
        </form>
        <div>
            <br><br><br>
            <jsp:include page="../../Footer.jspf"/>
        </div>
    </body>
</html>
