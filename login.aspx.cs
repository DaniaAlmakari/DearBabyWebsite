using System;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class login : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "تسجيل الدخول";
    }
    protected void Button_login_Click1(object sender, EventArgs e)
    {
        Session["Role_Admin"] = Session["Role_Member"] = Session["Role_DR"] = "False";
        // اذا كان المدير
        if (DA.Check_User(TextBox_name.Text, TextBox_pass.Text).Rows.Count > 0)
        {    
            FormsAuthentication.RedirectFromLoginPage(TextBox_name.Text, true);
            Session["Role_Admin"] = "True";

            Label_msg.Text = "تم";
            Response.Redirect("Admin/Default.aspx");
        }
        else
        {
            Label_msg.Text = "اسم مستخدم أو كلمة مرور غير صحيحة";
        }
        //اذا كان يوزر مسجل عادي
        if (DA.Check_member(TextBox_name.Text, TextBox_pass.Text).Rows.Count > 0)
        {
            FormsAuthentication.RedirectFromLoginPage(TextBox_name.Text, true);
            Session["Role_Member"] = "True";

            Response.Redirect("Members/Default_Members.aspx");
        }
        else
        {
            Label_msg.Text = "اسم مستخدم أو كلمة مرور غير صحيحة";
        }
        // اذا كان من الدكاترة المختصين
        if (DA.Check_DR(TextBox_name.Text, TextBox_pass.Text).Rows.Count > 0)
        {
            FormsAuthentication.RedirectFromLoginPage(TextBox_name.Text, true);
            Session["Role_DR"] = "True";

            Response.Redirect("Doctors/ActiveQ.aspx");
        }
        else
        {
            Label_msg.Text = "اسم مستخدم أو كلمة مرور غير صحيحة";
        }
    }
}