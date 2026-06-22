using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Institute_Project.My_Page
{
    public partial class Diploma_Managment : System.Web.UI.Page
    {
        DB op = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string query = "select Dept_ID,Dept_Name from Department";
                //DataTable dt = new DataTable();
                //dt = op.QueryValue(query);
                //DiplDept.DataSource = dt;
                //DiplDept.DataTextField = "Dept_Name";
                //DiplDept.DataValueField = "Dept_ID";
                //DiplDept.DataBind();

                op.FillComboBox(ref DiplDept, "Department", "Dept_Name", "Dept_ID");

            }
        }

        protected void DM_btnAdd_Click(object sender, EventArgs e)
        {
            string Dipl_Name = DiplName.Text;
            int Dipl_Cost = int.Parse(DiplCost.Text);
            string Dipl_Duration = DiplDuration.Text;
            string Dipl_Time = DiplomaTime.SelectedValue.ToString();
            string Dipl_Dept = DiplDept.SelectedValue.ToString();

            string query = "INSERT INTO Diploma(Dipl_Name , Dipl_Cost , Dipl_Duration , Dipl_Time , Dept_ID) VALUES('"+Dipl_Name+"',"+Dipl_Cost+",'"+Dipl_Duration+ "','" + Dipl_Time + "','" + Dipl_Dept+ "')";
            op.QueryNon(query);


            DiplName.Text = "";
            DiplCost.Text = "";
            DiplDuration.Text = "";
            DiplomaTime.Text = "";
         
        }
    }
}