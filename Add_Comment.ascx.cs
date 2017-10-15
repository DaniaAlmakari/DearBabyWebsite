using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Add_Comment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception == null)
        {
            Label_msg.Text = "تم اضافة التعليق بنجاح...";
        }
        else
        {
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            Label_msg.Text = "فشل في اضافة التعليق...";
        }
    }
}