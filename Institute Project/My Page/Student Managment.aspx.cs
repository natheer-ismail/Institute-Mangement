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
    public partial class WebForm1 : System.Web.UI.Page
    {
        DB op = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string query = "select Dept_ID , Dept_Name from Department";
                //DataTable dt = op.QueryValue(query);
                //StudDept.DataSource = dt;
                //StudDept.DataTextField = "Dept_Name";
                //StudDept.DataValueField = "Dept_ID";
                //StudDept.DataBind();

                op.FillComboBox(ref StudDept, "Department", "Dept_Name", "Dept_ID");
            }
        }

        

      

        protected void st_btnSearch_Click(object sender, EventArgs e)
        {
           
        }

        protected void st_btnAdd_Click1(object sender, EventArgs e)
        {


            string stud_Name = StudName.Text;
            int stud_Age = int.Parse ( StudAge.Text);
            int stud_phone = int.Parse ( StudPhone.Text);
            int stud_f = int.Parse( Stud_F_Phone.Text);
            string stud_Addr = StudAddress.Text;
            string stud_BP = StudBirthPlace.Text;
            string stud_Qual = StudQual.Text;
            //string stud_BD = StudBirthDate.Text;
            DateTime Stude_BD = DateTime.Parse(StudBirthDate.Text);
            string Stud_Gender = StudGender.SelectedValue.ToString();
            string Study_type = StudTypeStudy.SelectedValue.ToString();

            StudAge.Text = "";
            StudPhone.Text = "";

            string query = "insert into Student(Stud_Name,Stud_Age,Stud_Phone,Stud_FPhone,Stud_Add,Stud_BP,Stud_PD,Stud_Quali,Stud_Sax,Type_Study) values('" +stud_Name+"',"+ stud_Age + ","+stud_phone+","+stud_f+ ",'" + stud_Addr + "','" + stud_BP + "','" + Stude_BD + "','" + stud_Qual + "','" + Stud_Gender + "','" + Study_type + "')";
            op.QueryNon(query);


            StudName.Text = "";
            StudAge.Text = "";
            StudPhone.Text = "";
            Stud_F_Phone.Text = "";
            StudAddress.Text = "";
            StudBirthPlace.Text = "";
            StudQual.Text = "";
            StudBirthDate.Text = "";
            StudGender.SelectedValue = "";
            StudTypeStudy.SelectedValue = "";





        }

        protected void st_btnShow_Click(object sender, EventArgs e)
        {
            //string query = "select * from Student";
            //DataTable dt = new DataTable();
            //dt = op.QueryValue(query);
        }
    }
}
