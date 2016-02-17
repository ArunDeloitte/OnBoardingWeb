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
    public partial class LoginPage : System.Web.UI.Page
    {
        dBaseConnection dBObj = new dBaseConnection();
        public DataSet myDataSet = new DataSet();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            Session["Location"] = "Location_" + ddlLocation.SelectedValue.ToString();
            GetUser();
            int userRow=0;
            string Username;
            DataTable Usertable = new DataTable();
            Usertable= myDataSet.Tables["UserCredentials"];
            
                foreach (DataRow item in Usertable.Rows)
                {
                    
                    if (item[1].ToString() == TxtUserName.Text & item[2].ToString() == txtPassword.Text)
                    {
                        userRow = Int32.Parse(item[0].ToString());
                        break;
                    }
                    else userRow = 0;
                   

                }
            
           
            switch (userRow)
            {

                case 1: Response.Redirect("AdminDashboard.aspx");
                    break;
                case 2: Response.Redirect("CandidateForm.aspx");
                    break;
                case 3: Response.Redirect("ITSDashboard.aspx");
                    break;
                default:
                     Response.Redirect("LoginPage.aspx");
                    break;

            }

            


        }
        public void GetUser()
        {

            var myAdapptor = new OleDbDataAdapter();
            dBObj.OpenDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("~/dbase/Welcome2Deloitte.accdb") + "; Persist Security Info=False;");
            OleDbCommand command = new OleDbCommand("SELECT * FROM UserCredentials", dBObj._dbConnection);
            myAdapptor.SelectCommand = command;
            myAdapptor.Fill(myDataSet, "UserCredentials");
            dBObj.CloseDbConnection();
            
        } 
    }
}