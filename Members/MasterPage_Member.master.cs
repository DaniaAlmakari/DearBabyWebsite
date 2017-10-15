using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members_MasterPage_Member : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role_Member"] != "True")
        {
            Response.Redirect("Error.aspx");
        }

        Label_name.Text = Context.User.Identity.Name;

    }
}
