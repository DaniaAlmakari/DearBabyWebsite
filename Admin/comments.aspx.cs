using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_comments : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "لوحة التحكم: تفعيل التعليقات";
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ch = (CheckBox)sender;

        foreach (GridViewRow Row in GridView_comments.Rows)
        {
            CheckBox c = (CheckBox) GridView_comments.Rows[Row.RowIndex].FindControl("CheckBox_active");

            c.Checked = ch.Checked;
        }
    }
    protected void Active_Button_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow Row in GridView_comments.Rows)
        {
            CheckBox c = (CheckBox)GridView_comments.Rows[Row.RowIndex].FindControl("CheckBox_active");
            string id = GridView_comments.DataKeys[Row.RowIndex].Value.ToString();

            DA.ActiveComments(id, c.Checked);
        }
        GridView_comments.DataBind();
        GridView1.DataBind();
    }
}