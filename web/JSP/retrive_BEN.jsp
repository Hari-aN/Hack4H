<%-- 
    Document   : CLAIM Verification
    Created on : 02-Aug-2017, 04:08:40 PM
    Author     : PLANET
--%>


<%@page import="Beans.AdminRequestBean"%>

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
        <title>  | BEN Verification</title>
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
    </head>

    <body>
        <div>
            <img src="../images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="../images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
        </div> 

        <jsp:include page="../newjsp.jsp"/>

    <center><h1><strong>BEN RECORD</strong></h1></center>
    <center>
        <form  action=""  >
            <div class="">
                <div style="overflow-x:auto;">


                    <table border="1" WIDTH="100%" >
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

                </div>
            </div>
        </form>
    </center>
    <div>
        <br><br><br>
        <jsp:include page="../Footer.jspf"/>
    </div>

</body>

</html>
