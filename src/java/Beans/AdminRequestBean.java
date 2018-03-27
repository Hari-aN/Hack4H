
package Beans;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AdminRequestBean extends model.DBModel {
     /*
     * This fuction is used to retrieve the data
     * from the ben_survey_gnrl table
     */
    public ResultSet showBenSurvey() throws ClassNotFoundException {
        try {
           // DBModel db =new DBModel();

            QUERY = "SELECT * from ben_survey_gnrl;";

            RS1 = queryReturner(QUERY);
        } catch (SQLException ex) {
            Logger.getLogger(AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of showBenSurvey()
    /*
     * This fuction is used to retrieve the data
     * from the ben_survey_gnrl table
     */
    public ResultSet showAHP_dpr() throws ClassNotFoundException {
        try {
           // DBModel db =new DBModel();

            QUERY = "SELECT * from ahp_dpr;";

            RS1 = queryReturner(QUERY);
        } catch (SQLException ex) {
            Logger.getLogger(AdminRequestBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }//end of showBenSurvey()
    

    
}//end of class AdminRequestBean
