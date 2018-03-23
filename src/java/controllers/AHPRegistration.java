package Controllers;
import Beans.AHP_RegistrationBean;
import java.io.IOException;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 * Servlet implementation ahp dpr
 */
public class AHPRegistration extends HttpServlet {
 /**
     * @see HttpServlet#HttpServlet()
     */
    public AHPRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // TODO Auto-generated method stub
            response.setContentType("text/html");
            
            String STATE = request.getParameter ("stateName");
            String DISTRICT = request.getParameter ("districtName");
            String CITY = request.getParameter ("cityName");
            String PROJECT_NAME = request.getParameter ("projectName");
            String PROJECT_CODE = request.getParameter ("projectCode");
            byte NA = Byte.parseByte(request.getParameter ("nodalAgency"));
            byte IA = Byte.parseByte(request.getParameter("implementingAgency"));
            int HOUSING_COST= Integer.parseInt(request.getParameter ("projectCostHousing"));
            int INFRA_COST= Integer.parseInt(request.getParameter ("projectInfrastructure"));
            int OTHER_COST= Integer.parseInt(request.getParameter ("othersCost"));
            int GEN= Integer.parseInt(request.getParameter ("ewsBeneficiariesGeneral"));
            int SC = Integer.parseInt(request.getParameter ("ewsBeneficiariesSC"));
            int ST= Integer.parseInt(request.getParameter ("ewsBeneficiariesST"));
            int OBC= Integer.parseInt(request.getParameter ("ewsBeneficiariesOBC"));
            int MINORITY= Integer.parseInt(request.getParameter ("ewsBeneficiariesMinority"));
            byte PMAY_GUIDELINE = Byte.parseByte(request.getParameter("pmayGuidelines"));
            int COST_EWS= Integer.parseInt(request.getParameter ("constructionCost"));
            byte PROJECT_DURATION = Byte.parseByte(request.getParameter("projectDuration"));
            byte STATE_PRICING = Byte.parseByte(request.getParameter("salePriceProvided"));
            BigDecimal CARPET_AREA = new BigDecimal(request.getParameter("carpetArea"));
            int EWS_HOUSE_UNIT= Integer.parseInt(request.getParameter ("houseProposedEWS"));
            int LIG_HOUSE_UNIT= Integer.parseInt(request.getParameter ("houseProposedLIG"));
            int MIG_HOUSE_UNIT= Integer.parseInt(request.getParameter ("houseProposedMIG"));
            int HIG_HOUSE_UNIT= Integer.parseInt(request.getParameter ("houseProposedHIG"));
            int COMM_HOUSE_UNIT= Integer.parseInt(request.getParameter ("houseProposedComm"));
            byte PPP_TRANSPARENCY = Byte.parseByte(request.getParameter("privatePartner"));
            int EWS_HOUSE_ASTNC= Integer.parseInt(request.getParameter ("eligibleHousesEWS"));
            int STAET_GRANT= Integer.parseInt(request.getParameter ("stateGrant"));
            int LAND_COST= Integer.parseInt(request.getParameter ("landCost"));
            int CASH_GRANT= Integer.parseInt(request.getParameter ("cashGrant"));
            int IA_GRANT= Integer.parseInt(request.getParameter ("implementingAgencyShare"));
            int BEN_SHARE= Integer.parseInt(request.getParameter ("beneficiaryShare"));
            byte TECH_SPECIFICATION = Byte.parseByte(request.getParameter("technicalSpecificationStandard"));
           // byte EXTNG_OR_PROVIDED = Byte.parseByte(request.getParameter("infrastructureProvided"));
            byte CPHEEO_NORMS = Byte.parseByte(request.getParameter(""));
            byte WAETER = Byte.parseByte(request.getParameter("civicInfrastructureNorms"));
            byte SEVEARGE = Byte.parseByte(request.getParameter("sewrageExistance"));
            byte ROAD = Byte.parseByte(request.getParameter("roadExistance"));
            byte WATER_DRAIN = Byte.parseByte(request.getParameter("WATER_DRAINING"));
            byte ELECTRIFICATION = Byte.parseByte(request.getParameter("externalElectrification"));
            byte WASTE_MANAGEMENT = Byte.parseByte(request.getParameter("wasteManagement"));
            String OTHER_INFRA = request.getParameter("anyOtherRequirement");
            byte SOCIAL_INFRA = Byte.parseByte(request.getParameter("infrastructureProposed"));
            byte DISATER_RESISTANT = Byte.parseByte(request.getParameter("disasterResistent"));
            byte QUALITY_PASSURANCE = Byte.parseByte(request.getParameter("qualityAssurance"));
            byte QNM_PART = Byte.parseByte(request.getParameter("qmPart"));
            byte FREE_LAND = Byte.parseByte(request.getParameter("encumbranceLand"));
            byte GREEN_TECH = Byte.parseByte(request.getParameter("greenTechnology"));
            
            String SLAC_COMMENT = request.getParameter ("commentSLAC");
            String OTHER_INFO = request.getParameter ("projectBrief");
            
            AHP_RegistrationBean ahp =new AHP_RegistrationBean();
            
            ahp.reportAHPdpr(STATE,DISTRICT,CITY,PROJECT_NAME,PROJECT_CODE,NA,IA,HOUSING_COST,INFRA_COST,OTHER_COST,GEN,SC,ST,OBC,MINORITY,PMAY_GUIDELINE,COST_EWS,PROJECT_DURATION,STATE_PRICING,CARPET_AREA,EWS_HOUSE_UNIT,LIG_HOUSE_UNIT,MIG_HOUSE_UNIT,HIG_HOUSE_UNIT,COMM_HOUSE_UNIT,PPP_TRANSPARENCY,EWS_HOUSE_ASTNC,STAET_GRANT,LAND_COST,CASH_GRANT,IA_GRANT,BEN_SHARE,TECH_SPECIFICATION,CPHEEO_NORMS,WAETER,SEVEARGE,ROAD,WATER_DRAIN,ELECTRIFICATION,WASTE_MANAGEMENT,OTHER_INFRA,SOCIAL_INFRA,DISATER_RESISTANT,QUALITY_PASSURANCE,QNM_PART,FREE_LAND,GREEN_TECH,SLAC_COMMENT,OTHER_INFO);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AHPRegistration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AHPRegistration.class.getName()).log(Level.SEVERE, null, ex);
        }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
