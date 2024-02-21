using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace OnlineExamSittingArrangement
{
    public class ClsCon
    {

        #region Class Level Variable

        public static string PatID;
        public static string DoctID;
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataAdapter da;
        #endregion

        #region Openconnection Function
        public void OpenConnection()
        {

            if (con == null)
            {
                string constr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
                con = new SqlConnection(constr);
            }

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new SqlCommand();
            cmd.Connection = con;

        }
        #endregion


        #region CloseConnection Function
        public void CloseConnection()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
        #endregion

        #region DisposeConnection Function

        public void DisposeConnection()
        {
            if (con != null)
            {
                con.Dispose();
                con = null;
            }
        }
        #endregion

        #region ExecuteSql Method

        public int ExecuteSql(string strsql)
        {
            OpenConnection();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strsql;
            int intresult;
            intresult = cmd.ExecuteNonQuery();
            CloseConnection();
            DisposeConnection();
            return intresult;
        }
        #endregion

        #region GetDataTable Method

        public DataTable GetDataTable(string strsql)
        {
            OpenConnection();
            da = new SqlDataAdapter(strsql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            da.Dispose();
            CloseConnection();
            DisposeConnection();
            return dt;
        }
        #endregion

        #region GetDataSet Method

        public DataSet GetDataSet(string strsql)
        {
            OpenConnection();
            da = new SqlDataAdapter(strsql, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            da.Dispose();
            CloseConnection();
            DisposeConnection();
            return ds;
        }
        #endregion

        #region GetDataReader Method
        public SqlDataReader GetDataReader(string strsql)
        {
            OpenConnection();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strsql;
            SqlDataReader dr;
            dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;

        }
        #endregion

        #region IsExist Method

        public Boolean IsExist(string strsql)
        {
            OpenConnection();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strsql;
            int intresult;
            intresult = (int)cmd.ExecuteScalar();
            CloseConnection();
            DisposeConnection();

            if (intresult > 0)
            {
                return true;
            }
            else
            {
                return false;

            }

        }
        #endregion

        #region ExecuteScalar Function

        public string ExecuteScalar(string strsql)
        {
            OpenConnection();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strsql;
            string strresult;
            strresult = Convert.ToString(cmd.ExecuteScalar());
            CloseConnection();
            DisposeConnection();
            return strresult;
        }
        #endregion


        #region Default Constructor
        public ClsCon()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion


        #region gmGetMstID Function
        public string gmGetMstID(string MstType, string MstDesc)
        {
            string SQL = "";

            string MCODE = "";


            MstDesc = MstDesc.Trim() + "00";


            switch (MstType)
            {
                case "RN":
                    SQL = "Select Max(Right(PatientId,4))+1 As MaxID From tblPatientInfo Where Right(Left(PatientId,6),3)= '" + Left(MstDesc, 3) + "'";
                    break;
                case "AM":
                    SQL = "Select Max(Right(ApptID,4))+1 As MaxID From tblMakeApt Where Right(Left(ApptID,6),3)= '" + Left(MstDesc, 3) + "'";
                    break;
                default:
                    break;
            }

            MCODE = MstType + Left(MstDesc, 3) + Right("0000" + ExecuteScalar(SQL), 4);
            if (Right(MCODE, 4) == "0000")
            {
                MCODE = MstType + Left(MstDesc, 3) + "0001";
            }

            return MCODE;
        }
        #endregion

        //Declearation\\
        public static string Left(string param, int length)
        {

            string result = param.Substring(0, length);
            //return the result of the operation
            return result;


        }
        public static string Right(string param, int length)
        {
            //string result = param.Substring(param.Length - length, length);
            ////return the result of the operation
            //return result;
            string result = param.Substring(param.Length - length, length);
            //return the result of the operation
            return result;
        }

        public static string Mid(string param, int startIndex, int length)
        {
            string result = param.Substring(startIndex, length);
            //return the result of the operation
            return result;
        }

        public static string Mid(string param, int startIndex)
        {
            string result = param.Substring(startIndex);
            //return the result of the operation
            return result;
        }


    }
}