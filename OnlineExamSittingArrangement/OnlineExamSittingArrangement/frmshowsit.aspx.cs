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
    public partial class frmshowsit : System.Web.UI.Page
    {

        ClsCon codegen = new ClsCon();
        DataSet ds;
        DataTable dt;
        string Str;

        protected void Page_Load(object sender, EventArgs e)
        {
                btn1.BackColor = System.Drawing.Color.White;
                btn2.BackColor = System.Drawing.Color.White;
                btn3.BackColor = System.Drawing.Color.White;
                btn4.BackColor = System.Drawing.Color.White;
                btn5.BackColor = System.Drawing.Color.White;
                btn6.BackColor = System.Drawing.Color.White;
                btn7.BackColor = System.Drawing.Color.White;
                btn8.BackColor = System.Drawing.Color.White;
                btn9.BackColor = System.Drawing.Color.White;
                btn10.BackColor = System.Drawing.Color.White;
                btn11.BackColor = System.Drawing.Color.White;
                btn12.BackColor = System.Drawing.Color.White;
                btn13.BackColor = System.Drawing.Color.White;
                btn14.BackColor = System.Drawing.Color.White;
                btn15.BackColor = System.Drawing.Color.White;

                btn16.BackColor = System.Drawing.Color.White;
                btn17.BackColor = System.Drawing.Color.White;
                btn18.BackColor = System.Drawing.Color.White;
                btn19.BackColor = System.Drawing.Color.White;
                btn10.BackColor = System.Drawing.Color.White;
                btn11.BackColor = System.Drawing.Color.White;
                btn12.BackColor = System.Drawing.Color.White;
                btn13.BackColor = System.Drawing.Color.White;
                btn14.BackColor = System.Drawing.Color.White;
                btn15.BackColor = System.Drawing.Color.White;
                btn16.BackColor = System.Drawing.Color.White;
                btn17.BackColor = System.Drawing.Color.White;
                btn18.BackColor = System.Drawing.Color.White;
                btn19.BackColor = System.Drawing.Color.White;

                btn20.BackColor = System.Drawing.Color.White;
                btn21.BackColor = System.Drawing.Color.White;
                btn22.BackColor = System.Drawing.Color.White;
                btn23.BackColor = System.Drawing.Color.White;
                btn24.BackColor = System.Drawing.Color.White;
                btn25.BackColor = System.Drawing.Color.White;
                btn26.BackColor = System.Drawing.Color.White;
                btn27.BackColor = System.Drawing.Color.White;
                btn28.BackColor = System.Drawing.Color.White;
                btn29.BackColor = System.Drawing.Color.White;
                btn30.BackColor = System.Drawing.Color.White;
        }



        protected void btn1_Click(object sender, EventArgs e)
        {

        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            ds = new DataSet();
            ds = codegen.GetDataSet("Select * from tblroomallot");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Str = "update tblroomallot set RowNo = " + (i + 1) + " where EnrolmentNo = '" + ds.Tables[0].Rows[i].ItemArray[7].ToString() + "'";
                codegen.ExecuteSql(Str);
            }

            ds = new DataSet();
            ds = codegen.GetDataSet("Select EnrolmentNo,Dept,Floor,RoomNo,ID from tblroomallot where EnrolmentNo = '" + txtenrollment.Text + "' order by ID");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                lbldept.Text = ds.Tables[0].Rows[i].ItemArray[1].ToString();
                Label1.Text = ds.Tables[0].Rows[i].ItemArray[2].ToString();
                Label2.Text = ds.Tables[0].Rows[i].ItemArray[3].ToString();

                if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "1")
                {
                    btn1.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "2")
                {
                    btn2.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "3")
                {
                    btn3.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "4")
                {
                    btn4.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "5")
                {
                    btn5.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "6")
                {
                    btn6.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "7")
                {
                    btn7.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "8")
                {
                    btn8.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "9")
                {
                    btn8.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "10")
                {
                    btn10.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "11")
                {
                    btn11.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "12")
                {
                    btn12.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "13")
                {
                    btn13.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "14")
                {
                    btn14.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "15")
                {
                    btn15.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "16")
                {
                    btn16.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "17")
                {
                    btn17.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "18")
                {
                    btn18.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "19")
                {
                    btn19.BackColor = System.Drawing.Color.Red;
                }            
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "20")
                {
                    btn20.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "21")
                {
                    btn21.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "22")
                {
                    btn22.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "23")
                {
                    btn23.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "24")
                {
                    btn24.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "25")
                {
                    btn25.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "26")
                {
                    btn26.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "27")
                {
                    btn27.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "28")
                {
                    btn28.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "29")
                {
                    btn29.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "30")
                {
                    btn30.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "31")
                {
                    btn31.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "32")
                {
                    btn32.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "33")
                {
                    btn33.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "34")
                {
                    btn34.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "35")
                {
                    btn35.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "36")
                {
                    btn36.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "37")
                {
                    btn37.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "38")
                {
                    btn38.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "39")
                {
                    btn39.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "40")
                {
                    btn40.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "41")
                {
                    btn41.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "42")
                {
                    btn42.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "43")
                {
                    btn43.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "44")
                {
                    btn44.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "45")
                {
                    btn45.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "46")
                {
                    btn46.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "47")
                {
                    btn47.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "48")
                {
                    btn48.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "49")
                {
                    btn49.BackColor = System.Drawing.Color.Red;
                }
                else if (ds.Tables[0].Rows[i].ItemArray[4].ToString() == "50")
                {
                    btn50.BackColor = System.Drawing.Color.Red;
                }
            
            }
        }

        protected void btnclose_Click(object sender, EventArgs e)
        {

        }
    }
}