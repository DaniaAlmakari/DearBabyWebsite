using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Doctors_Details : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label_username.Text = Context.User.Identity.Name;
        DataTable DT = DA.GET_USERID(Label_username.Text);
        Label_userid.Text = DT.Rows[0]["user_Id"].ToString();

        if (!IsPostBack)
        {
            if (Request.QueryString["QId"] != null)
            {
                DataTable DT1 = DA.GET_Question(Request.QueryString["QId"].ToString());
                TextBox_Qtitle.Text = DT1.Rows[0]["Q_title"].ToString();
                TextBox_Qcontent.Text = DT1.Rows[0]["Q_content"].ToString();

                DataTable DT2 = DA.GET_Replay(Request.QueryString["QId"].ToString());
                if (DT2.Rows.Count > 0)
                {
                    TextBox_Replay.Text = DT2.Rows[0]["QC_comment"].ToString();
                    Button_addR.Text = "تعديل";
                }
            }
        }
    }
    protected void Button_add_Click(object sender, EventArgs e)
    {
        if (DA.Add_Edit_Question(Request.QueryString["QId"], Label_userid.Text, TextBox_Qtitle.Text, TextBox_Qcontent.Text, true) > 0)
        {
            Lbl_Msg.Text = "تم تعديل السؤال بنجاح... ";

        }
    }
    protected void Button_addR_Click(object sender, EventArgs e)
    {
        if (Button_addR.Text.Equals("اضافة"))
        {
            if (DA.Add_Edit_Replay("-1", Request.QueryString["QId"], Label_userid.Text, TextBox_Replay.Text) > 0)
            {
                Label1.Text = "تم اضافة الرد للسؤال";
                Button_addR.Visible = false;
            }
        }
        else
        {
            if (DA.Add_Edit_Replay("-2", Request.QueryString["QId"], Label_userid.Text, TextBox_Replay.Text) > 0)
            {
                Label1.Text = "تم تعديل الرد للسؤال";
                
            }
        }

       
    }
}