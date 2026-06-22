using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Institute_Project.My_Page
{
    public partial class Courses_Managment : System.Web.UI.Page
    {
        DB op = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string query = "select Dipl_ID , Dipl_Name from Diploma";
                //DataTable dt = new DataTable();
                //dt = op.QueryValue(query);
                //StudyType.DataSource = dt;
                //StudyType.DataTextField = "Dipl_Name";
                //StudyType.DataValueField = "Dipl_ID";
                //StudyType.DataBind();

                op.FillComboBox(ref StudyType, "Diploma", "Dipl_Name", "Dipl_ID");

            }
        }

        protected void st_btnAdd_Click(object sender, EventArgs e)
        {
            
        }

        protected void CM_btnAdd_Click(object sender, EventArgs e)
        {
            string Course_Name = CourseName.Text;
            string Course_Duration = CourseDuration.Text;
            int Course_Cost = int.Parse(CourseCost.Text);
            String Course_Time = CourseTime.SelectedItem.ToString();
            string Study_Type = StudyType.SelectedValue;
            DateTime Course_Start = DateTime.Parse(CourseStartDate.Text);

            string query = "INSERT INTO Courses(Course_Name , Course_Duration , Course_Cost , Course_Time , Course_Start , Dipl_ID) VALUES('"+Course_Name+"','"+Course_Duration+"',"+Course_Cost+",'"+Course_Time+"','"+Course_Start+"' , '"+ Study_Type + "')";
            op.QueryNon(query);


            CourseName.Text = "";
            CourseDuration.Text = "";
            CourseCost.Text = "";
            CourseTime.Text = "";
            CourseStartDate.Text = "";




        }
    }
}