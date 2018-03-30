<%-- 
    Document   : |ahp_dpr Data|
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
        <title>|ahp_dpr Data|</title>
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
                <center><h3 style="margin-left:60px;">|ahp_dpr Data|</h3></center>
            </div>
        </nav>
        <br><br>


        <form  action="" >
            <div class="">
                <div style="overflow-x:auto; margin-left: 120px;">
                    <table border="1" WIDTH="100%" >
                        <tr>
                            <th><div style="width:50px;">S.NO.</div></th>
                            <th><div style="width:110px;">P_PROJECT_NO</div></th>
                            <th><div style="width:100px;">STATE</div></th>
                            <th><div style="width:100px;">DISTRICT</div></th>
                            <th><div style="width:60px;">CITY</div></th>
                            <th><div style="width:130px;">PORJECT_NM</div></th>
                            <th><div style="width:150px;">PROJECT_CODE</div></th>
                            <th><div style="width:140px;">SLNA_NM</div></th>
                            <th><div style="width:80px;">IA_NAME</div></th>
                            <th><div style="width:100px;">HOUSING_COST</div></th>
                            <th><div style="width:100px;">INFRA_COST</div></th>
                            <th><div style="width:100px;">OTHER_COST</div></th>
                            <th><div style="width:80px;">EWS_GEN</div></th>
                            <th><div style="width:80px;">EWS_SC</div></th>
                            <th><div style="width:80px;">ESW_ST</div></th>
                            <th><div style="width:80px;">EWS_OBC</div></th>
                            <th><div style="width:120px;">EWS_MINORITY</div></th>
                            <th><div style="width:200px;">PMAY_GUIDELINES</div></th>
                            <th><div style="width:180px;">COST_EWS_UNIT</div></th>
                            <th><div style="width:200px;">PROJECT_DURATION</div></th>
                            <th><div style="width:180px;">STATE_SALES_PRICE</div></th>
                            <th><div style="width:120px;">CARPET_AREA_EWS</div></th>
                            <th><div style="width:80px;">EWS_UNIT</div></th>
                            <th><div style="width:80px;">LIG_UNIT</div></th>
                            <th><div style="width:80px;">MIG_UNIT</div></th>
                            <th><div style="width:80px;">HIG_UNIT</div></th>
                            <th><div style="width:150px;">COMMERCIAL_UNIT</div></th>
                            <th><div style="width:120px;">PROCEDURE_PPP</div></th>
                            <th><div style="width:80px;">ELIGIBLE_EWS</div></th>
                            <th><div style="width:80px;">CENTRAL_GRANT</div></th>
                            <th><div style="width:80px;">STATE_GRANT</div></th>
                            <th><div style="width:80px;">LAND_COST</div></th>
                            <th><div style="width:80px;">CASH_GRANT</div></th>
                            <th><div style="width:80px;">IA_SHARE</div></th>
                            <th><div style="width:80px;">BEN_SHARE</div></th>
                            <th><div style="width:150px;">TECH_SPECIFICATION</div></th>
                            <th><div style="width:120px;">TRUNK_INFRA</div></th>
                            <th><div style="width:80px;">WATER</div></th>
                            <th><div style="width:80px;">SEWERAGE</div></th>
                            <th><div style="width:80px;">ROAD</div></th>
                            <th><div style="width:80px;">WATER_DRAIN</div></th>
                            <th><div style="width:120px;">ELECTRIFICATION</div></th>
                            <th><div style="width:120px;">WASTE_MANAGEMENT</div></th>
                            <th><div style="width:80px;">OTHER_INFRA</div></th>
                            <th><div style="width:80px;">SOCIAL_INFRA</div></th>
                            <th><div style="width:150px;">DISASTER_RESISTANT</div></th>
                            <th><div style="width:120px;">QUALITY_ASSURANCE</div></th>
                            <th><div style="width:80px;">Q_N_M</div></th>
                            <th><div style="width:150px;">ENCUMB_FREE_LAND</div></th>
                            <th><div style="width:80px;">GREEN_TECH</div></th>
                            <th><div style="width:80px;">SLAC_COMMENT</div></th>
                            <th><div style="width:80px;">OTHER_INFO</div></th>
                            <th><div style="width:150px;">SUBMISSION_TO_SLSMC</div></th>
                            <th><div style="width:80px;">SLSMC_FEEDBACK</div></th>
                            <th><div style="width:80px;">CSMC_FEEDBACK</div></th>
                            <th><div style="width:80px;">STATUS</div></th>
                            <th><div style="width:80px;">SLSMC_APPROVAL</div></th>



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

