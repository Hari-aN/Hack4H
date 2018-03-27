
package Beans;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class selective_AdminRequestBean extends model.DBModel {
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
            Logger.getLogger(selective_AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of showBenSelsected
    
     /*
     * This fuction is used to retrieve the data
     * from the ben_survey_gnrl table
     */
    public ResultSet showAHPdprSelsected(int AHP_RPOJECT_NO) throws ClassNotFoundException {
        try {
           // DBModel db =new DBModel();

            QUERY = "select * from ahp_dpr where AHP_PROJECT_NO="
                    + AHP_RPOJECT_NO
                    + ";";

            RS1 = queryReturner(QUERY);
        } catch (SQLException ex) {
            Logger.getLogger(selective_AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of showBenSelsected

   
}//end of class selective_AdminRequestBean
