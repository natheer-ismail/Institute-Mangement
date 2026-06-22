using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Institute_Project
{
    public class DB
    {
        private string ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Institute.mdf;Integrated Security=True";
        private SqlConnection conn;

        public DB()
        {
            conn = new SqlConnection(ConnectionString);
        }

        public void OpenCon()
        {
            if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
        }

        internal void FillComboBox(ref object studyType, string v1, string v2, string v3)
        {
            throw new NotImplementedException();
        }

        public void CloseCon()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public bool QueryNon(string query)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                OpenCon();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();
                return true;
                Console.Write("<script>alter('تمت الاضافلة بنجاح')</script>)");

            }
            catch (Exception ex)
            {
                return false;
                Console.Write("<script>alter('لم تتم الاضافة ')</script>)");
            }
            finally
            {
                CloseCon();
            }
 
        }

        public DataTable QueryValue(string query)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();

                OpenCon();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = query;

                DataTable Table = new DataTable();
                Table.Load(cmd.ExecuteReader());
                return Table;
            }
            catch(Exception ex)
            {
                return new DataTable();
            }
            finally
            {
                CloseCon();
            }
        }
        public String Int2String(string query)
        {
            try
            {
                DataTable Table = new DataTable();
                Table = QueryValue(query);
                string x = Table.Rows[0][0].ToString();
                return x;
            }
            catch (Exception ex)
            {
                return "";
            }
            finally
            {
                CloseCon();
            }
        }
        public int String2Int(string query)
        {
            try
            {
                DataTable Table = new DataTable();
                Table = QueryValue(query);
                int x = Convert.ToInt32(Table.Rows[0][0]);
                return x;
            }
            catch (Exception ex)
            {
                return 0;
            }
            finally
            {
                CloseCon();
            }
        }
        public void FillComboBox(ref DropDownList cb , string tbName , string dName , string vName )
        {
            string query = "select " + dName + "," + vName + " from " + tbName;
            DataTable dt = QueryValue(query);
            cb.DataSource = dt;
            cb.DataTextField = dName;
            cb.DataValueField = vName;
            cb.DataBind();
        }

        public void Searching(string table, string tName, string text, ref GridView gr)
        {

            string query = "select  * from " + table + " where " + tName + " like " + text + "%";
            DataTable dt = QueryValue(query);
            gr.DataSource = dt;

        }

    }
   
}