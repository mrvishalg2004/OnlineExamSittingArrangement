using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace OnlineExamSittingArrangement
{
    public partial class frmshowsitting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        ClsCon codegen = new ClsCon();
        DataSet ds;
        DataTable dt;
        string Str;

        protected void btnshow_Click(object sender, EventArgs e)
        {
            ds = codegen.GetDataSet("Select EnrolmentNo,Dept,Floor,RoomNo from tblroomallot where EnrolmentNo = '" + txtenrollment.Text + "' order by ID");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
               
            }
        }

       
    }
}