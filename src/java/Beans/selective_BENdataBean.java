
package Beans;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class selective_BENdataBean extends model.DBModel {
    // constructor strat from here

    /*
     * This fuction is used to retrieve the data
     * from the ben_survey_gnrl table
     */
    public ResultSet showBenSelsected(int survey) throws ClassNotFoundException {
        try {
           // DBModel db =new DBModel();

            QUERY = "	SELECT SURVEY_NO,FMLY_HEAD_NM,FATHERS_NAME,SEX,CASTE,RELIGION,AADHAR_CARD "
                    + "from ben_survey_gnrl"
                    + " WHERE SURVEY_NO="
                    + survey
                    + ";";

            RS1 = queryReturner(QUERY);
        } catch (SQLException ex) {
            Logger.getLogger(selective_BENdataBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of show_ClaimRequest1(int pno)

    /*public ResultSet show_userClaimRequest(String cid) throws ClassNotFoundException {
        try {

            QUERY = "SELect P_NO from cust_policy"
                    + "where CUST_ID = '"
                    + cid + "' ;";

            RS = queryReturner(QUERY);
            QUERY1 = "SELECT * from claim_request"
                    + "where policy_no = '"
                    + RS.getString(1) + "' ;";
            RS1 = queryReturner(QUERY1);

        } catch (SQLException ex) {
            Logger.getLogger(AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of show_ClaimRequest(int cid)

    public ResultSet show_userPremiumRecord(String cid) throws ClassNotFoundException {
        try {

            QUERY = "SELect P_NO from cust_policy where CUST_ID = '" + cid + "'; ";
            RS = queryReturner(QUERY);
            QUERY1 = "SELECT * from premium_record where POLICY_NO = '" + RS.getString(1) + "' ;";
            RS1 = queryReturner(QUERY1);

        } catch (SQLException ex) {
            Logger.getLogger(AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of show_userPremiumRecord(int cno)

    public ResultSet show_userPremium(String cid) throws ClassNotFoundException {
        try {

           QUERY = "SELect P_NO from cust_policy where CUST_ID = '" + cid + "'; ";
            RS = queryReturner(QUERY);
            QUERY1 = "SELECT * from premium where POLICY_NO = '" + RS.getString(1) + "' ;";
            RS1 = queryReturner(QUERY1);
        } catch (SQLException ex) {
            Logger.getLogger(AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of show_userPremium(int pno)
    //////////////////////////////////////////////////////////////////////////////
    ////////////////////////UPDATING FUCTIONS////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////

    /*
     * This function is used to update
     * claim Status after the admin visit  
     *
    public void benVerification(String claim_id, String status) {
        try {
            STMT = CONN.createStatement();

            QUERY = "UPDATE claim_request "
                    + "SET cliam_status = '" + status + "' "
                    + "WHERE claim_id = " + claim_id + ";";
            STMT.executeUpdate(QUERY);
        } catch (SQLException ex) {
            Logger.getLogger(AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//end of claim_Verification()
*/
}//end of class UserViewRequestBean
