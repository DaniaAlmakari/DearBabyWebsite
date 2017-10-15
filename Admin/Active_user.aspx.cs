using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Active_user : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ch = (CheckBox)sender;

        foreach (GridViewRow Row in GridView1.Rows)
        {
            CheckBox c = (CheckBox)GridView1.Rows[Row.RowIndex].FindControl("CheckBox_active");

            c.Checked = ch.Checked;
        }
    }
    protected void Button_active_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow Row in GridView1.Rows)
        {
            CheckBox c = (CheckBox)GridView1.Rows[Row.RowIndex].FindControl("CheckBox_active");
            string id = GridView1.DataKeys[Row.RowIndex].Value.ToString();

            DA.ActiveUser(id, c.Checked);
        }
        GridView1.DataBind();
        GridView_Alluser.DataBind();
    }
    protected void Button_create_Click(object sender, EventArgs e)
    {
        if (DA.Add_user("-1", TextBox_name.Text, TextBox_pass.Text, TextBox_email.Text, false, false, true, TextBox_Des.Text, true) > 0)
        {
            Label_msg.Text = "تم انشاء مستخدم بصلاحيات خبير بنجاح، اسم الخبير: " + TextBox_name.Text + " وكلمة المرور الخاصة به: " + TextBox_pass.Text;
            TextBox_name.Text = TextBox_pass.Text = TextBox_email.Text = TextBox_Des.Text = "";
            GridView_Alluser.DataBind();
        }
    }
}