<%-- 
    Document   : CLAIM Verification
    Created on : 02-Aug-2017, 04:08:40 PM
    Author     : PLANET
--%>


<%@page import="Beans.selective_BENdataBean"%>

<%-- This page is used to display the details of the 
       non-verified customers, and then later verify them --%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
        <title>  | selective BEN Data</title>
        <!-- Loading third party fonts -->

        <!-- Loading main css file ->
        <link rel="stylesheet" href="../css/header.css">-->
        <script src="../js/jquery-3.3.1.js"></script>
        <script src="../js/materialize.js"></script>
        <script src="../js/material.js"></script>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/materialize.css">
        <link rel="stylesheet" href="../css/material.css">
        <link rel="stylesheet" href="../css/table.css">
        <link rel="stylesheet" href="../css/Header_Final.css">
    </head>

    <body>
        <div>
            <img src="../images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="../images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
            <jsp:include page="../ULB_Header.jspf"/>
        </div> 


        <br><br><br><br>
        <div>
            <form  action=""  >
                <div class="">
                    <div style="overflow-x:auto;"  >
                        <table border ="1" WIDTH="100%">
                            <tr><th>S_NO</th>
                                <th>SURVEY_NO</th>
                                <th>NAME</th>
                                <th>FATHERS_NAME</th>
                                <th>GENDER</th>
                                <th>CASTE</th>
                                <th>RELIGION</th>
                                <th>AADHAR NO.</th>
                                <th>edit</th>
                            </tr>
                            <%
                                //Creating the reference of type ResultSet
                                ResultSet RS;
                                //Creating the object of AdminVewRequestBean
                                selective_BENdataBean obj = new selective_BENdataBean();                          //Using the static show_Customer_NV() function of Customer
                                RS = obj.showBenSelsected(2);
                                int i = 1;
                                while (RS.next()) {


                            %>
                            <tr>
                                <td><%= i%></td>

                                <td><%= RS.getString(1)%></td>
                                <td><%= RS.getString(2)%></td>
                                <td><%= RS.getString(3)%></td>
                                <%//printing gender for selection START************
                                    if (RS.getByte(4) == 1) {
                                %>
                                <td>MALE</td>
                                <%
                                } else if (RS.getByte(4) == 2) {
                                %>
                                <td>FEMALE</td>
                                <%
                                } else {
                                %>
                                <td>OTHER</td>
                                <%
                                    }//printing gender for selection end************
                                %>
                                <%//printing caste for selection  START***********
                                    if (RS.getByte(5) == 1) {
                                %>
                                <td>GEN</td>
                                <%
                                } else if (RS.getByte(5) == 2) {
                                %>
                                <td>SC</td>
                                <%
                                } else if (RS.getByte(5) == 3) {
                                %>
                                <td>ST</td>
                                <%
                                } else {
                                %>
                                <td>OBC</td>
                                <%
                                    }//printing caste for selection  END***********
                                %>
                                <%//printing religion for selection  START***********
                                    if (RS.getByte(6) == 1) {
                                %>
                                <td>HINDU</td>
                                <%
                                } else if (RS.getByte(6) == 2) {
                                %>
                                <td>ISLAM</td>
                                <%
                                } else if (RS.getByte(6) == 3) {
                                %>
                                <td>CRISTIAN</td>
                                <%
                                } else if (RS.getByte(6) == 4) {
                                %>
                                <td>SIKHISM</td>
                                <%
                                } else if (RS.getByte(6) == 5) {
                                %>
                                <td>BUDHISM</td>
                                <%
                                } else if (RS.getByte(6) == 6) {
                                %>
                                <td>JAINISM</td>
                                <%
                                } else {
                                %>
                                <td>OTHER</td>
                                <%
                                    }//printing religion for selection  END***********
%>                          <td><%= RS.getString(7)%></td>


                                <td><a href="">add</a></td>
                                <%

                                        i++;
                                    }
                                %>


                            </tr>
                        </table>

                    </div>
                </div>
            </form>
        </div>

        <div>
            <br><br><br>
            <jsp:include page="../Footer.jspf"/>
        </div>
    </body>

</html>
