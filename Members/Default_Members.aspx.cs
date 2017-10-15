using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members_Default_Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataList1.Visible = false;
        DataList_search.Visible = true;
        SqlDataSource_search.SelectParameters["Q_title"].DefaultValue = "%" + TextBox_search.Text + "%";
    }
}