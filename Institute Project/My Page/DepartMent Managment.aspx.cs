using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Institute_Project.My_Page
{
    public partial class DepartMent_Managment : System.Web.UI.Page
    {
        DB op = new DB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void st_btnAdd_Click(object sender, EventArgs e)
        {
            String Dept_Name = DeptName.Text;
            string Dept_State = DeptState.SelectedValue.ToString();

            string  query = "INSERT INTO Department(Dept_Name,Dept_State) VALUES('" +Dept_Name+ "','"+Dept_State+"')";
            op.QueryNon(query);


            DeptName.Text = "";
            DeptState.Text = "";

        }
    }
}