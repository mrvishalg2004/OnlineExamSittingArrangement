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
    public partial class frmreg : System.Web.UI.Page
    {

        string Pass;
        string Str;
        DataSet ds;
        ClsCon Conect = new ClsCon();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string mf;
        protected void btnsave_Click(object sender, EventArgs e)
        {

            if (txtenrollment.Text == "")
            {
                Label1.Text = "Enter Enrollment No";
                txtenrollment.Focus();
                return;
            }
            else if (txtname.Text == "")
            {
                Label1.Text = "Enter Name";
                txtname.Focus();
                return;
            }

            if (rbtmale.Checked == true)
            {
                mf = "Male";
            }
            else
            {
                mf = "Female";
            }
            Str = "insert into tblReg(EnrolmentNo,CadidateName,Gender,Dob,Religion,Catagory,Addr,Dept,Taluka,Pin,Mb,Emailid,Stats) values ('" + txtenrollment.Text + "','" + txtname.Text + "','" + mf + "','" + txtdate.Text + "','" + ddpreligion.Text + "','" + ddpcatog.Text + "','" + txtadd.Text + "','" + ddpDepartment.Text + "','" + txttaluka.Text + "','" + txtpin.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','0')";
            Conect.ExecuteSql(Str);

            Label1.Text = "Registered Successfully!";
         
            //MessageBox.Show("Registered Successfully" );
            Clear();
            //Response.Redirect("~/Default.aspx");
        }

        
        private void Clear()
        {
            //txtpatnm.Text = "";
            //txtpass.Text = "";
            //txtadd.Text = "";
            //txtmobno.Text = "";
            //txtpatnm.Focus();
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}