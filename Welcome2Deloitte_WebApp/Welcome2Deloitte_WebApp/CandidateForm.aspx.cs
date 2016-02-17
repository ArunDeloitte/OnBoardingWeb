using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.OleDb;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Welcome2Deloitte
{
    public partial class CandidateForm : System.Web.UI.Page
    {
        string EmailID, Mobile;
        dBaseConnection dBObj = new dBaseConnection();
        public DataSet myDataSet = new DataSet();
        public DataTable candidateTable;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void BtnVerify_Click(object sender, EventArgs e)
        {
            EmailID = TxtEmailId.Text;
            Mobile = TxtMobile.Text;
            GetCandidateDetails();

            if (candidateTable.Rows.Count > 0)
            {
                foreach (DataRow item in candidateTable.Rows)
                {
                    TxtFirstName.Text = item["CandidateFirstName"].ToString();
                    TxtLastName.Text = item["CandidateLastName"].ToString();
                    TxtMobileNo.Text = item["CandidateMobilePhone"].ToString();
                    TxtEmailIdDisp.Text = item["EmailID"].ToString();
                    TxtEntity.Text = item["Entity"].ToString();
                    TxtFunction.Text = item["Function"].ToString();
                    TxtServiceArea.Text = item["Service_Area"].ToString();
                    TxtServiceLine.Text = item["Service_Line"].ToString();

                }
            }
            else
            {
                string script = "alert(\" Unable to find the data in the database\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);

                
            }

        }
        public void GetCandidateDetails()
        {
            candidateTable = new DataTable();
            var myAdapptor = new OleDbDataAdapter();
            dBObj.OpenDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/dbase/Welcome2Deloitte.accdb") + "; Persist Security Info=False;");
            OleDbCommand command = new OleDbCommand("SELECT CandidateFirstName,CandidateLastName,CandidateHomePhone,CandidateMobilePhone,CandidateEmail, EmailID,Entity,Function,Service_Area,Service_Line FROM " + Session["Location"] +" where CandidateEmail='" +EmailID +"' or CandidateHomePhone='"+Mobile+"' or CandidateMobilePhone='" +Mobile +"'", dBObj._dbConnection);
            myAdapptor.SelectCommand = command;
            myAdapptor.Fill(candidateTable);
            dBObj.CloseDbConnection();
            

        } 
    }
}