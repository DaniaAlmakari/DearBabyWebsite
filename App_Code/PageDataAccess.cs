using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for PageDataAccess
/// </summary>
public class PageDataAccess : Page
{
    protected DataAccess DA = new DataAccess();

    protected void Page_UnLoad(object sender, EventArgs e)
    {
        DA.closeconn();
    }
}