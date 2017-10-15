using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members_change_pass : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DA.change_pass(TextBox_oldpass.Text, Context.User.Identity.Name, TextBox_newpass.Text) > 0)
            Lbl_msg.Text = "تم تغيير كلمة المرور بنجاح ...";
        else
        {
            Lbl_msg.Text = " فشل في تغيير كلمة المرور يرجى الاعادة... ";
        }
            
    }
}