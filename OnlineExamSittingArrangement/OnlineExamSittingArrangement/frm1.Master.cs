using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;


namespace OnlineExamSittingArrangement
{
    public partial class frm1 : System.Web.UI.MasterPage
    {

        string Pass;
        string Str;
        DataSet ds;
        ClsCon Conect = new ClsCon();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            ClsCon.PatID = String.Format("{0}", Request.Form["UserID"]);
            Pass = String.Format("{0}", Request.Form["Pass"]);

            Label1.Text = "";
            if (ClsCon.PatID == "")
            {
                Label1.Text = "Enter UserID";

                return;
            }
            else if (Pass == "")
            {
                Label1.Text = "Enter Password";

                return;
            }
            Str = "select Count(*) from tblLogin where UserName = '" + ClsCon.PatID + "' and UserPassword = '" + Pass + "'";
            int cnt = Convert.ToInt32(Conect.ExecuteScalar(Str));
            if (cnt != 0)
            {

                Response.Redirect("~/frmreg.aspx");
            }
            else
            {
                Label1.Text = "Wrong Password";

            }
        }
    }
}