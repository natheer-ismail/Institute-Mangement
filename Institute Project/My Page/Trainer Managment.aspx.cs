using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Institute_Project.My_Page
{

    public partial class Trainer_Managment : System.Web.UI.Page
    {
        DB op = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "select Dept_ID,Dept_Name from Department";
                DataTable dt = new DataTable();
                dt = op.QueryValue(query);
                TrainerDept.DataSource = dt;
                TrainerDept.DataTextField = "Dept_Name";
                TrainerDept.DataValueField = "Dept_ID";
                TrainerDept.DataBind();

            }

        }

        protected void tm_btnAdd_Click(object sender, EventArgs e)
        {
            string Trainer_Name = TrainerName.Text;
            string Trainer_Speci = TrainerSpeci.Text;
            string Trainer_Address = TrainerAddress.Text;
            DateTime Trainer_HireDate = DateTime.Parse(TrainerHireDate.Text);
            int Trainer_card = int.Parse(TrainerCard.Text);
            int Trainer_phone = int.Parse(TrainerPhone.Text);
            int Trainer_salary = int.Parse(TrainerSalary.Text);
            string Trainer_gender = TrainerGender.SelectedValue;
            string Trainer_dept = TrainerDept.SelectedValue;

            string query = "INSERT INTO Instractor(Instr_Name , Instr_Specialization,instr_ID_Number , Instr_Address , Instr_Phone , Instr_Sallary , Instr_Sax , Instr_HireDate , Dept_ID) values('" + Trainer_Name + "','" + Trainer_Speci + "'," + Trainer_card + ",'" + Trainer_Address +"',"+ Trainer_phone +","+ Trainer_salary +",'" + Trainer_gender + "','" + Trainer_HireDate + "' ,'"+Trainer_dept+"')";
            op.QueryNon(query);


            TrainerName.Text = "";
            TrainerSpeci.Text = "";
            TrainerAddress.Text = "";
            TrainerHireDate.Text = "";
            TrainerCard.Text = "";
            TrainerPhone.Text = "";
            TrainerSalary.Text = "";
           

        }

        protected void tm_btnSearch_Click(object sender, EventArgs e)
        {
           
        }
    }
}