using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ContactUs : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "تواصلي معنا";
    }

    protected void Button_send_Click(object sender, EventArgs e)
    {
        if (DA.Add_Msg("-1", TextBox_name.Text, TextBox_email.Text, TextBox_phone.Text, TextBox_MSG.Text) > 0)
        {
            Lbl_Msg.Text = "تم ارسال الرسالة لفريق العمل بنجاح";
            TextBox_name.Text = TextBox_email.Text = TextBox_phone.Text = TextBox_MSG.Text = "";
        }
    }

}