using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Members_Edit_personal_info :PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label_username.Text = Context.User.Identity.Name;
        DataTable DT = DA.GET_USERID(Label_username.Text);
        Label_userid.Text = DT.Rows[0]["user_Id"].ToString();

        if (!IsPostBack)
        {
            if (Label_userid.Text != "")
            {
                DataTable DT1 = DA.GET_user(Label_userid.Text);
                TextBox_Name.Text = DT1.Rows[0]["user_name"].ToString();
                TextBox_email.Text = DT1.Rows[0]["email"].ToString();
                TextBox_des.Text = DT1.Rows[0]["user_description"].ToString();
            }
        }
    }
    protected void Button_Reg_Click(object sender, EventArgs e)
    {
        if (DA.Edit_user(Label_userid.Text , TextBox_Name.Text, TextBox_email.Text, TextBox_des.Text) > 0)
        {
            LblMsg.Text = "تم تعديل البيانات بنجاح... ";
            Response.Redirect("../login.aspx");
        }
    }
}