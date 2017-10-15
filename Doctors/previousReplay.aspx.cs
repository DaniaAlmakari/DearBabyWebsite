using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Doctors_previousReplay : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label_username.Text = Context.User.Identity.Name;
        DataTable DT = DA.GET_USERID(Label_username.Text);
        Label_userid.Text = DT.Rows[0]["user_Id"].ToString();
    }
}