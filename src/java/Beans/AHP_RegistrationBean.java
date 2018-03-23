/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.math.BigDecimal;
import java.sql.SQLException;
import model.DBModel;

public class AHP_RegistrationBean {

    /**
     * ********************************************************************************************
     */
    /* this method is inserting AHP DPR Information database table named AHP_DPR*/
    public void reportAHPdpr(String STATE, String DISTRICT, String CITY, String PROJECT_NAME, String PROJECT_CODE, byte NA, byte IA, int HOUSING_COST, int INFRA_COST, int OTHER_COST, int GEN, int SC, int ST, int OBC, int MINORITY, byte PMAY_GUIDELINE, int COST_EWS, byte PROJECT_DURATION, byte STATE_PRICING, BigDecimal CARPET_AREA, int EWS_HOUSE_UNIT, int LIG_HOUSE_UNIT, int MIG_HOUSE_UNIT, int HIG_HOUSE_UNIT, int COMM_HOUSE_UNIT, byte PPP_TRANSPARENCY, int EWS_HOUSE_ASTNC, int STAET_GRANT, int LAND_COST, int CASH_GRANT, int IA_GRANT, int BEN_SHARE, byte TECH_SPECIFICATION, byte CPHEEO_NORMS, byte WAETER, byte SEVEARGE, byte ROAD, byte WATER_DRAIN, byte ELECTRIFICATION, byte WASTE_MANAGEMENT, String OTHER_INFRA, byte SOCIAL_INFRA, byte DISATER_RESISTANT, byte QUALITY_PASSURANCE, byte QNM_PART, byte FREE_LAND, byte GREEN_TECH, String SLAC_COMMENT, String OTHER_INFO) throws ClassNotFoundException, SQLException {
        DBModel db = new DBModel();
        try {
            db.CONN = db.getConnection();
            if (db.CONN != null) {
                db.QUERY = "INSERT INTO CLAIM_REQUEST(STATE,DISTRICT,CITY,PROJECT_NAME,PROJECT_CODE,NA,IA,HOUSING_COST,INFRA_COST,OTHER_COST,GEN,SC,ST,OBC,MINORITY,PMAY_GUIDELINE,COST_EWS,PROJECT_DURATION,STATE_PRICING,CARPET_AREA,EWS_HOUSE_UNIT,LIG_HOUSE_UNIT,MIG_HOUSE_UNIT,HIG_HOUSE_UNIT,COMM_HOUSE_UNIT,PPP_TRANSPARENCY,EWS_HOUSE_ASTNC,STAET_GRANT,LAND_COST,CASH_GRANT,IA_GRANT,BEN_SHARE,TECH_SPECIFICATION,CPHEEO_NORMS,WAETER,SEVEARGE,ROAD,WATER_DRAIN,ELECTRIFICATION,WASTE_MANAGEMENT,OTHER_INFRA,SOCIAL_INFRA,DISATER_RESISTANT,QUALITY_PASSURANCE,QNM_PART,FREE_LAND,GREEN_TECH,SLAC_COMMENT,OTHER_INFO)"
                        + " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
                db.PSTMT = db.prePare(db.QUERY);
                db.PSTMT.setString(2,STATE);
                db.PSTMT.setString(3,DISTRICT);
                db.PSTMT.setString(4,CITY);
                db.PSTMT.setString(5,PROJECT_NAME);
                db.PSTMT.setString(6,PROJECT_CODE);
                db.PSTMT.setByte(7,NA);
                db.PSTMT.setByte(8,IA);
                db.PSTMT.setInt(11,HOUSING_COST);
                db.PSTMT.setInt(12,INFRA_COST);
                db.PSTMT.setInt(13,OTHER_COST);
                db.PSTMT.setInt(14,GEN);
                db.PSTMT.setInt(15,SC);
                db.PSTMT.setInt(16,ST);
                db.PSTMT.setInt(17,OBC);
                db.PSTMT.setInt(18,MINORITY);
                db.PSTMT.setByte(19,PMAY_GUIDELINE);
                db.PSTMT.setInt(20,COST_EWS);
                db.PSTMT.setByte(21,PROJECT_DURATION);
                db.PSTMT.setByte(22,STATE_PRICING);
                db.PSTMT.setBigDecimal(23,CARPET_AREA);
                db.PSTMT.setInt(24,EWS_HOUSE_UNIT);
                db.PSTMT.setInt(25,LIG_HOUSE_UNIT);
                db.PSTMT.setInt(26,MIG_HOUSE_UNIT);
                db.PSTMT.setInt(27,HIG_HOUSE_UNIT);
                db.PSTMT.setInt(28,COMM_HOUSE_UNIT);
                db.PSTMT.setByte(29,PPP_TRANSPARENCY);
                db.PSTMT.setInt(30,EWS_HOUSE_ASTNC);
                db.PSTMT.setInt(31,STAET_GRANT);
                db.PSTMT.setInt(32,LAND_COST);
                db.PSTMT.setInt(33,CASH_GRANT);
                db.PSTMT.setInt(34,IA_GRANT);
                db.PSTMT.setInt(35,BEN_SHARE);
                db.PSTMT.setByte(36,TECH_SPECIFICATION);
                //db.PSTMT.setByte(37,EXTNG_OR_PROVIDED);
                db.PSTMT.setByte(38,CPHEEO_NORMS);
                db.PSTMT.setByte(39,WAETER);
                db.PSTMT.setByte(40,SEVEARGE);
                db.PSTMT.setByte(41,ROAD);
                db.PSTMT.setByte(42,WATER_DRAIN);
                db.PSTMT.setByte(43,ELECTRIFICATION);
                db.PSTMT.setByte(44,WASTE_MANAGEMENT);
                db.PSTMT.setString(45,OTHER_INFRA);
                db.PSTMT.setByte(46,SOCIAL_INFRA);
                db.PSTMT.setByte(47,DISATER_RESISTANT);
                db.PSTMT.setByte(48,QUALITY_PASSURANCE);
                db.PSTMT.setByte(49,QNM_PART);
                db.PSTMT.setByte(50,FREE_LAND);
                db.PSTMT.setByte(51,GREEN_TECH);
                db.PSTMT.setString(52,SLAC_COMMENT);
                db.PSTMT.setString(53,OTHER_INFO);
                
                db.PSTMT.executeUpdate();
            } else {
                System.out.println("\nError in Connection.....\n");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            db.CONN.close();
        }
    }

    /**
     * ********************************************************************************************
     */
}
