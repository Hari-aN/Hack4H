
package Beans;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class sevenCUpdateBean extends model.DBModel {
    // constructor strat from here

    /*
     * This fuction is used to retrieve the data
     * from the ben_survey_gnrl table
     */
    public ResultSet selectRecord7cUpdate(int survey) throws ClassNotFoundException {
        try {
           // DBModel db =new DBModel();

            QUERY = "	SELECT * "
                    + "from ben_survey_gnrl"
                    + " WHERE SURVEY_NO="
                    + survey
                    + ";";

            RS1 = queryReturner(QUERY);
        } catch (SQLException ex) {
            Logger.getLogger(selective_BENdataBean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return RS1;
    }
}//end of class sevenCUpdateBean