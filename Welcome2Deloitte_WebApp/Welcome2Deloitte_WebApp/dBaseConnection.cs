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
    public class dBaseConnection
    {
        public OleDbConnection _dbConnection;
        public DataSet myDataSet = new DataSet();
        public void OpenDbConnection(string connectionstring)
        {
            _dbConnection = new OleDbConnection { ConnectionString = connectionstring };
        }

       

        public void CloseDbConnection()
        {
            _dbConnection.Close();
        }

        public void GetUser()
        {
            
            var myAdapptor = new OleDbDataAdapter();
            OleDbCommand command = new OleDbCommand("SELECT * FROM tblUser", _dbConnection);
            myAdapptor.SelectCommand = command;
            myAdapptor.Fill(myDataSet, "tblUser");
        } 

        

    }
}