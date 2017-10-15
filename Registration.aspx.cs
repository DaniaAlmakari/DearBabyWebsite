using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

public partial class Registration : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button_Reg_Click(object sender, EventArgs e)
    {
        if (DA.Add_user("-1", TextBox_Name.Text, TextBox_pass.Text , TextBox_email.Text, false, true, false, TextBox_des.Text, true) > 0)
        {
            //LblMsg.Text = "تم تسجيلك بنجاح يرجى تسجيل الدخول من هنا ...";
            HyperLink2.Text = "تم تسجيلك بنجاح يرجى تسجيل الدخول من هنا ...";
            HyperLink2.NavigateUrl = "login.aspx";
            TextBox_Name.Text = TextBox_pass.Text = TextBox_email.Text = TextBox_des.Text = "";
        }
    }
}