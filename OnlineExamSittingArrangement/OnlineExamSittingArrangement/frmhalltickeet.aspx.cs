using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Microsoft.Reporting.WebForms;

using System.Collections;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Drawing.Imaging;
using System.Drawing.Printing;
using System.Drawing;



namespace OnlineExamSittingArrangement
{
    public partial class frmhalltickeet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        int cnt;
        ClsCon codegen = new ClsCon();
        DataSet ds = new DataSet();
        string Str;

       

        protected void btnseatbook_Click(object sender, EventArgs e)
        {
            bool bln = false;
            int mval;
            foreach (GridViewRow row in dgvSchedule.Rows)
            {
                // Access the CheckBox

                System.Web.UI.WebControls.CheckBox ckkbx = (System.Web.UI.WebControls.CheckBox)row.FindControl("chkup");
                if (ckkbx.Checked == true)
                {
                    try
                    {
                        Str = "Select max(ID)+1 from tblattend";
                        mval = Convert.ToInt32(codegen.ExecuteScalar(Str));
                    }
                    catch
                    {
                        mval = 1;
                    }

                    Str = "insert into tblattend(ID,EnrolmentNo,CadidateName,Dept,Floor,RoomNo,Stats)values(" + mval.ToString() + ",'" + dgvSchedule.Rows[row.RowIndex].Cells[0].Text + "','" + dgvSchedule.Rows[row.RowIndex].Cells[1].Text + "','" + ddpDepartment.Text + "','" + ddpfloor.Text + "','" + ddproomno.Text + "',1)";
                    codegen.ExecuteSql(Str);
                                     
                    bln = true;
                }
            }

            if (bln == false)
            {
                Label1.Text = "Please Select Student";
                return;
            }

            chkcheck.Checked = false;

            Label1.Text = "Exam Hall Booked";

          

        }

        public void ScheduleFill()
        {
            ds = codegen.GetDataSet("Select EnrolmentNo,CadidateName from tblReg where Dept = '" + ddpDepartment.Text + "' and Stats = 0");
            dgvSchedule.DataSource = ds.Tables[0];
            dgvSchedule.DataBind();

        }

        private void fillroomno()
        {
            ddproomno.Items.Clear();
            ds = codegen.GetDataSet("Select RoomNo from tblRoomDetails where Floor = '" + ddpfloor.Text + "'");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ddproomno.Items.Add(ds.Tables[0].Rows[i].ItemArray[0].ToString());
            }
        }

        protected void ddpDepartment_Load(object sender, EventArgs e)
        {
            ScheduleFill();
        }

        protected void ddpfloor_Load(object sender, EventArgs e)
        {
            fillroomno();
        }

        protected void chkcheck_Load(object sender, EventArgs e)
        {
            chkbx();
        }

        private void chkbx()
        {
            foreach (GridViewRow row in dgvSchedule.Rows)
            {
                // Access the CheckBox

                System.Web.UI.WebControls.CheckBox ckkbx = (System.Web.UI.WebControls.CheckBox)row.FindControl("chkup");

                if (chkcheck.Checked == true)
                {
                    ckkbx.Checked = true;
                }
                else
                {
                    ckkbx.Checked = false;
                }


            }

        }
    
      
    }
}