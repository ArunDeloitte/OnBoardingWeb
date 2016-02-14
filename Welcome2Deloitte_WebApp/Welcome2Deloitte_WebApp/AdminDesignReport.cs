using System;
using System.Data;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Welcome2Deloitte
{
    public class AdminDesignReport
    {
        private string _blrCount,_hydCount,_mumCount,_gurCount;
        private string _blrEnrolCount,_hydEnrolCount,_mumEnrolCount,_gurEnrolCount;        
        private string _blrLapStatus,_hydLapStatus,_mumLapStatus,_gurLapStatus;
        private string _blrW2dDay1,_hydW2dDay1,_mumW2dDay1,_gurW2dDay1;
        private string _blrW2dDay2,_hydW2dDay2, _mumW2dDay12, _gurW2dDay2;

        string BlrCount { get; set; }
        string HydCount { get; set; }
        string BlrEnrolCount { get; set; }

        public string dataFetch(string source)
        {
            dBaseConnection dBaseObj = new dBaseConnection();
            dBaseObj.OpenDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + source + "; Persist Security Info=False;");
            OleDbCommand cmd = new OleDbCommand("select count(*) from OnBoarding where Hiring Location like 'BLR'");
            _blrCount = cmd.ExecuteNonQuery().ToString();

            return _blrCount;
        }
    }
}