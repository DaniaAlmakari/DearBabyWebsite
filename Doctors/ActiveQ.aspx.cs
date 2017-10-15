using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Doctors_ActiveQ : PageDataAccess
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

            DA.ActiveQuestion(id, c.Checked);
        }
        GridView1.DataBind();
        GridView_AllQ.DataBind();
    }
  
}