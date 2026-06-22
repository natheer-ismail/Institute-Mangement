using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
using System.Drawing;

namespace Institute_Project
{
    public partial class User_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            string User_Name = txtUserName.Text;
            string PassWord = txtPassword.Text;
           

            
                if (User_Name == "Natheer" && PassWord == "1111")
                {
                    txtUserName.BorderColor = Color.Green;
                    txtPassword.BorderColor = Color.Green;
                    txtUserName.Text = "";
                    txtPassword.Text = "";
                    Thread.Sleep(2000);
                    Response.Redirect("~/My Page/Student Managment.aspx");
                    //Response.AppendHeader("Refresh", " 5;URl = ~/Index.aspx");
                    Label1.Text = "";
                    Label2.Text = "";
               
                }
                else if(User_Name != "Natheer" && PassWord == "1111")
                {
                    Label1.Text = "*";
                    txtUserName.BorderColor = Color.Red;

                }
                    else if (User_Name == "Natheer" && PassWord != "1111")
                {
                    Label2.Text = "*";
                    txtPassword.BorderColor = Color.Red; 
                }
            else
                {
                    txtUserName.BorderColor = Color.Red;
                    txtPassword.BorderColor = Color.Red;
                    Label1.Text = "*";
                    Label2.Text = "*";

            
                }

            
            //Label2.Text = "*"; Response.Redirect("~/Index.aspx");
        }
    }
}