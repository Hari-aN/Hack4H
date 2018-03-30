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
                    <table id="table2" border="1" WIDTH="100%" >
                        <tr>
                            <th><div style="width:80px;">S_NO</div></th>
                        <th><div style="width:80px;">SURVEY_NO</div></th>
                        <th><div style="width:80px;">STATE</div></th>
                        <th><div style="width:80px;">DISTRICT</div></th>
                        <th><div style="width:80px;">CITY</div></th>
                        <th><div style="width:80px;">WARD</div></th>
                        <th><div style="width:80px;">SLUM_NAME</div></th>
                        <th><div style="width:80px;">AREA_NAME</div></th>
                        <th><div style="width:100px;">HFA_VERTICAL</div></th>
                        <th><div style="width:100px;">FMLY_HEAD_NM</div></th>
                        <th><div style="width:80px;">GENDER</div></th>
                        <th><div style="width:110px;">FATHERS_NAME</div></th>
                        <th><div style="width:120px;">FMLY_HEAD_AGE</div></th>
                        <th><div style="width:80px;">HOUSE_NO</div></th>
                        <th><div style="width:80px;">STREET</div></th>
                        <th><div style="width:80px;">MOBILE_NO</div></th>
                        <th><div style="width:80px;">OWNERSHIP</div></th>
                        <th><div style="width:80px;">HOUSE_TYPE</div></th>
                        <th><div style="width:80px;">NO_ROOMS</div></th>
                        <th><div style="width:120px;">AADHAR_CARD</div></th>
                        <th><div style="width:80px;">RELIGION</div></th>
                        <th><div style="width:80px;">CASTE</div></th>
                        <th><div style="width:80px;">BANK_NM</div></th>
                        <th><div style="width:120px;">BANK_ACC_NO</div></th>
                        <th><div style="width:80px;">BRANCH_NM</div></th>
                        <th><div style="width:80px;">YEARS_STAY</div></th>
                        <th><div style="width:80px;">SIZE_DU</div></th>
                        <th><div style="width:80px;">DISABLE</div></th>
                        <th><div style="width:110px;">MARITAL_STATUS</div></th>
                        <th><div style="width:130px;">OWNS_HOUSE_LAND</div></th>
                        <th><div style="width:100px;">EMPLOYMENT</div></th>
                        <th><div style="width:150px;">AVG_MONTHLY_INC</div></th>
                        <th><div style="width:100px;">BPL_CARD_NO</div></th>
                        <th><div style="width:100px;">HOUSING_REQ</div></th>
                        <th><div style="width:450px;">FMLY_HEAD_IMG_PATH</div></th>
                        <th><div style="width:120px;">DGTL_SIGN_ULB</div></th>
                        <th><div style="width:150px;">DATE_OF_CREATION</div></th>
                        </tr>
                    </table>
                    <table id="table" border="1" WIDTH="100%">
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
                            <td><div style="width:80px;"><%=i + "."%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(1)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(2)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(3)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(4)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(5)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(6)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(7)%></div></td>
                            <td><div style="width:100px;"><%= RS.getString(8)%></div></td>
                            <td><div style="width:100px;"><%= RS.getString(9)%></div></td>
                                <%//printing gender for selection START************
                                    if (RS.getByte(10) == 1) {
                                %>
                            <td><div style="width:80px;">MALE</div></td>
                            <%
                            } else if (RS.getByte(10) == 2) {
                            %>
                            <td><div style="width:80px;">FEMALE</div></td>
                            <%
                            } else {
                            %>
                            <td><div style="width:80px;">OTHER</div></td>
                            <%
                                }//p<div style="width:100px;">rinting gender for selection end*******</div>*****
                            %>
                            <td><div style="width:110px;"><%= RS.getString(11)%></div></td>
                            <td><div style="width:120px;"><%= RS.getString(12)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(13)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(14)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(15)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(16)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(17)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(18)%></div></td>
                            <td><div style="width:120px;"><%= RS.getString(19)%></div></td>
                                <%//printing religion for selection  START***********
                                    if (RS.getByte(20) == 1) {
                                %>
                            <td><div style="width:80px;">HINDU</div></td>
                            <%
                            } else if (RS.getByte(20) == 2) {
                            %>
                            <td><div style="width:80px;">ISLAM</div></td>
                            <%
                            } else if (RS.getByte(20) == 3) {
                            %>
                            <td><div style="width:80px;">CRISTIAN</div></td>
                            <%
                            } else if (RS.getByte(20) == 4) {
                            %>
                            <td><div style="width:80px;">SIKHISM</div></td>
                            <%
                            } else if (RS.getByte(20) == 5) {
                            %>
                            <td><div style="width:80px;">BUDHISM</div></td>
                            <%
                            } else if (RS.getByte(20) == 6) {
                            %>
                            <td><div style="width:80px;">JAINISM</div></td>
                            <%
                            } else {
                            %>
                            <td><div style="width:80px;">OTHER</div></td>
                            <%
                                }//printing religion for selection  END***********
                            %>
                            <%//printing caste for selection  START***********
                                if (RS.getByte(21) == 1) {
                            %>
                            <td><div style="width:80px;">GEN</div></td>
                            <%
                            } else if (RS.getByte(21) == 2) {
                            %>
                            <td><div style="width:80px;">SC</div></td>
                            <%
                            } else if (RS.getByte(21) == 3) {
                            %>
                            <td><div style="width:80px;">ST</div></td>
                            <%
                            } else {
                            %>
                            <td><div style="width:80px;">OBC</div></td>
                            <%
                                }//printing caste for selection  END***********
                            %>
                            <td><div style="width:80px;"><%= RS.getString(22)%></div></td>
                            <td><div style="width:120px;"><%= RS.getString(23)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(24)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(25)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(26)%></div></td>
                            <td><div style="width:80px;"><%= RS.getString(27)%></div></td>
                            <td><div style="width:110px;"><%= RS.getString(28)%></div></td>
                            <td><div style="width:130px;"><%= RS.getString(29)%></div></td>
                            <td><div style="width:100px;"><%= RS.getString(30)%></div></td>
                            <td><div style="width:150px;"><%= RS.getString(31)%></div></td>
                            <td><div style="width:100px;"><%= RS.getString(32)%></div></td>
                            <td><div style="width:100px;"><%= RS.getString(33)%></div></td>
                            <td><div style="width:450px;"><%= RS.getString(34)%></div></td>
                            <td><div style="width:120px;"><%= RS.getString(35)%></div></td>
                            <td><div style="width:150px;"><%= RS.getString(36)%></div></td>
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
