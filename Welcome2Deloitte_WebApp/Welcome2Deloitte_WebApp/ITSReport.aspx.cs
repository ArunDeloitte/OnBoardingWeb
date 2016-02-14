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
    public partial class ITSReport : System.Web.UI.Page
    {
        dBaseConnection dBaseObj = new dBaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBind();
        }
        public void DataBind()
        {
            DataSet myDataSet = new DataSet();
            var myAdapptor = new OleDbDataAdapter();

            dBaseObj.OpenDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/dbase/Welcome2Deloitte.accdb") + "; Persist Security Info=False;");
            OleDbCommand oleObj = new OleDbCommand("select * from OnBoarding", dBaseObj._dbConnection);
            myAdapptor.SelectCommand = oleObj;
            myAdapptor.Fill(myDataSet, "OnBoarding");
            grdITSUser.DataSource = myDataSet.Tables["OnBoarding"];
            grdITSUser.DataBind();
        }
        protected void grdCustomer_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdITSUser.PageIndex = e.NewPageIndex;
            grdITSUser.DataBind();
        }
    }
}