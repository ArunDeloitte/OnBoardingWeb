using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Welcome2Deloitte
{
    public partial class AdminReports : System.Web.UI.Page
    {
        dBaseConnection dBaseObj = new dBaseConnection();
        DataSet myDataSet = new DataSet();
        OleDbDataAdapter myAdapptor = new OleDbDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            //binding data
            DataBind();
            
        }

        public void DataBind()
        {
            
            
            dBaseObj.OpenDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/dbase/Welcome2Deloitte.accdb") + "; Persist Security Info=False;");
            OleDbCommand oleObj = new OleDbCommand("select * from OnBoarding", dBaseObj._dbConnection);            
            myAdapptor.SelectCommand = oleObj;
            myAdapptor.Fill(myDataSet, "OnBoarding");
            dBaseObj.CloseDbConnection();
            grdCustomer.DataSource = myDataSet.Tables["OnBoarding"];
            grdCustomer.DataBind();
        }
        protected void grdCustomer_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdCustomer.PageIndex = e.NewPageIndex;
            grdCustomer.DataBind();
        }

        protected void grdCustomer_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
            dBaseObj.OpenDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/dbase/Welcome2Deloitte.accdb") + "; Persist Security Info=False;");
            string query = "UPDATE OnBoarding " +
                        "SET joining Status='4' " +
                                  "WHERE Candidate Id ='17081177'";
            OleDbCommand oleObj = new OleDbCommand(query, dBaseObj._dbConnection);
            dBaseObj.CloseDbConnection();
        }

        protected void grdCustomer_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            dBaseObj.OpenDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/dbase/Welcome2Deloitte.accdb") + "; Persist Security Info=False;");
            string query = "UPDATE OnBoarding " +
                        "SET Final Joining_status='Enrolled' " +
                                  "WHERE Candidate Id ='17081177'";
            OleDbCommand oleObj = new OleDbCommand(query, dBaseObj._dbConnection);
            dBaseObj.CloseDbConnection();
        }
    }
}