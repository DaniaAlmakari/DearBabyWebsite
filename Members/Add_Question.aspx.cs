using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Members_Add_Question : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "اضافة أو تعديل سؤال";

        Label_username.Text = Context.User.Identity.Name;
        DataTable DT = DA.GET_USERID(Label_username.Text);
        Label_userid.Text = DT.Rows[0]["user_Id"].ToString();

        if (!IsPostBack)
        {
            // احضار البيانات من الداتا بيز
            if (Request.QueryString["Id"] != null)
            {
                DataTable DT1 = DA.GET_Question(Request.QueryString["Id"].ToString());
                TextBox_Qtitle.Text = DT1.Rows[0]["Q_title"].ToString();
                TextBox_Qcontent.Text = DT1.Rows[0]["Q_content"].ToString();
                 
                Button_add.Text = "تعديل";
            }
        }

    }

    protected void Button_add_Click(object sender, EventArgs e)
    {
        if (Button_add.Text.Equals("اضافة"))
        {
            if (DA.Add_Edit_Question("-1", Label_userid.Text, TextBox_Qtitle.Text, TextBox_Qcontent.Text, false) > 0)
            {
                Lbl_Msg.Text = "تم اضافة السؤال للمختصين بنجاح... انتظري تفعيله والرد عليه من قبل المختص";
                TextBox_Qtitle.Text = TextBox_Qcontent.Text = "";      
            }
        }
        else
        {
            if (DA.Add_Edit_Question(Request.QueryString["Id"], Label_userid.Text, TextBox_Qtitle.Text, TextBox_Qcontent.Text, false) > 0)
            {
                Lbl_Msg.Text = "تم تعديل السؤال بنجاح... انتظري تفعيله والرد عليه من قبل المختص";
                
            }
        }  
    }
}