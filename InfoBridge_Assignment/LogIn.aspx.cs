using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InfoBridge_Assignment
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtLogin_Click(object sender, EventArgs e)
        {
            if(TxUserName.Text=="admin"&&TxPassword.Text=="admin123") 
            {
                Response.Redirect("~/EmployeeDetails.aspx");
            }
            else
            {
                lblMsg.ForeColor=System.Drawing.Color.Red;
                lblMsg.Text = "UserName or password is incorrect";
            }
        }
    }
}