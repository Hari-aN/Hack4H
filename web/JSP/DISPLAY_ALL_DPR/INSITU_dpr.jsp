<%-- 
    Document   : AHP-dpr
    Created on : 26 Mar, 2018, 12:39:54 PM
    Author     : HARIAN
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
        <title>  | BEN Verification</title>
        <!-- Loading main css file -->
        <script src="../../js/jquery-3.3.1.js"></script>
        <script src="../../js/materialize.js"></script>
        <script src="../../js/material.js"></script>
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/materialize.css">
        <link rel="stylesheet" href="../../css/material.css">
        <link rel="stylesheet" href="../../css/table.css">
        <link rel="stylesheet" href="../../css/Header_Final.css">
    </head>
    <body>
        <div>
            <img src="../../images/ministry.png" style="height:120px; width: 30%;" alt="">
            <img src="../../images/pmay.png" style="height:120px; width: 70%; margin-left: -5px;" alt="">
            <jsp:include page="../../ULB_Header.jspf"/>
        </div>
        <br>

        <nav class="aboutHead" style="width: 80%; margin-left: 10%; background-color: red;">
            <div class="nav-wrapper" style="margin-left: 10%;width:80%; background-color: green;">
                <center><h3 style="margin-left:60px;">Beneficiary Record </h3></center>
            </div>
        </nav>
        <br><br>


        <form  action="" style="width: 80%; margin-left: 10%;" >
            <div class="">
                <div style="overflow-x:auto;">
                    <table border="1" WIDTH="100%" style="margin-left: 20px;" >
                        <tr><th>S.NO.</th>
                            <th>P_PROJECT_NO</th>
                            <th>STATE</th>
                            <th>DISTRICT</th>
                            <th>CITY</th>
                            <th>PORJECT_NM</th>
                            <th>PROJECT_CODE</th>
                            <th>SLNA_NM</th>
                            <th>IA_NAME</th>
                            <th>HOUSING_COST</th>
                            <th>INFRA_COST</th>
                            <th>OTHER_COST</th>
                            <th>EWS_GEN</th>
                            <th>EWS_SC</th>
                            <th>ESW_ST</th>
                            <th>EWS_OBC</th>
                            <th>EWS_MINORITY</th>
                            <th>PMAY_GUIDELINES</th>
                            <th>COST_EWS_UNIT</th>
                            <th>PROJECT_DURATION</th>
                            <th>STATE_SALES_PRICE</th>
                            <th>CARPET_AREA_EWS</th>
                            <th>EWS_UNIT</th>
                            <th>LIG_UNIT</th>
                            <th>MIG_UNIT</th>
                            <th>HIG_UNIT</th>
                            <th>COMMERCIAL_UNIT</th>
                            <th>PROCEDURE_PPP</th>
                            <th>ELIGIBLE_EWS</th>
                            <th>CENTRAL_GRANT</th>
                            <th>STATE_GRANT</th>
                            <th>LAND_COST</th>
                            <th>CASH_GRANT</th>
                            <th>IA_SHARE</th>
                            <th>BEN_SHARE</th>
                            <th>TECH_SPECIFICATION</th>
                            <th>TRUNK_INFRA</th>
                            <th>WATER</th>
                            <th>SEWERAGE</th>
                            <th>ROAD</th>
                            <th>WATER_DRAIN</th>
                            <th>ELECTRIFICATION</th>
                            <th>WASTE_MANAGEMENT</th>
                            <th>OTHER_INFRA</th>
                            <th>SOCIAL_INFRA</th>
                            <th>DISASTER_RESISTANT</th>
                            <th>QUALITY_ASSURANCE</th>
                            <th>Q_N_M</th>
                            <th>ENCUMB_FREE_LAND</th>
                            <th>GREEN_TECH</th>
                            <th>SLAC_COMMENT</th>
                            <th>OTHER_INFO</th>
                            <th>SUBMISSION_TO_SLSMC</th>
                            <th>SLSMC_FEEDBACK</th>
                            <th>CSMC_FEEDBACK</th>
                            <th>STATUS</th>
                            <th>SLSMC_APPROVAL</th>



                        </tr>
                        <%
                            //Creating the reference of type ResultSet
                            ResultSet RS;
                            //Creating the object of AdminVewRequestBean
                            AdminRequestBean obj = new AdminRequestBean();                           //Using the static show_Customer_NV() function of Customer
                            RS = obj.showAHP_dpr();
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
                            <td><%= RS.getString(10)%></td>
                            <td><%= RS.getString(11)%></td>
                            <td><%= RS.getString(12)%></td>
                            <td><%= RS.getString(13)%></td>
                            <td><%= RS.getString(14)%></td>
                            <td><%= RS.getString(15)%></td>
                            <td><%= RS.getString(16)%></td>
                            <td><%= RS.getString(17)%></td>
                            <td><%= RS.getString(18)%></td>
                            <td><%= RS.getString(19)%></td>
                            <td><%= RS.getString(20)%></td>
                            <td><%= RS.getString(21)%></td>
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
                            <td><%= RS.getString(37)%></td>
                            <td><%= RS.getString(38)%></td>
                            <td><%= RS.getString(39)%></td>
                            <td><%= RS.getString(40)%></td>
                            <td><%= RS.getString(41)%></td>
                            <td><%= RS.getString(42)%></td>
                            <td><%= RS.getString(43)%></td>
                            <td><%= RS.getString(44)%></td>
                            <td><%= RS.getString(45)%></td>
                            <td><%= RS.getString(46)%></td>
                            <td><%= RS.getString(47)%></td>
                            <td><%= RS.getString(48)%></td>
                            <td><%= RS.getString(49)%></td>
                            <td><%= RS.getString(50)%></td>
                            <td><%= RS.getString(51)%></td>
                            <td><%= RS.getString(52)%></td>
                            <td><%= RS.getString(53)%></td>
                            <td><%= RS.getString(54)%></td>
                            <td><%= RS.getString(55)%></td>
                            <td><%= RS.getString(56)%></td>

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


        <div>
            <br><br><br>
            <jsp:include page="../../Footer.jspf"/>
        </div>
    </body>
</html>

