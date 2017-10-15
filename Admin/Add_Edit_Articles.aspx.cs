using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Add_Edit_Articles : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Title = "لوحة التحكم: اضافة وتعديل مقال";
        if (!IsPostBack)
        {
            // احضار البيانات من الداتا بيز
            if (Request.QueryString["Id"] != null)
            {
                DataTable DT = DA.GETART(Request.QueryString["Id"].ToString());
                Txt_Title.Text = DT.Rows[0]["title"].ToString();
                Txt_des.Text = DT.Rows[0]["description"].ToString();
                Txt_detail.Text = DT.Rows[0]["details"].ToString();
                DropDownList_Section.SelectedValue = DT.Rows[0]["Sec_Id"].ToString();

                if (Convert.ToBoolean(DT.Rows[0]["is_main"]))
                    RBL_Show.SelectedIndex = 0;
                else if (Convert.ToBoolean(DT.Rows[0]["in_home"]))
                    RBL_Show.SelectedIndex = 1;
                else if (Convert.ToBoolean(DT.Rows[0]["is_other"]))
                    RBL_Show.SelectedIndex = 2;
                else
                    RBL_Show.SelectedIndex = -1;

                Image1.Visible = true;
                Image1.ImageUrl = "~/GetImageFromDB.aspx?w=120&Id=" + Request.QueryString["Id"];

                Button_Add.Text = "تعديل";
            }          
        }
    }
    protected void Button_Add_Click(object sender, EventArgs e)
    {
        byte[] ImageByte = null;
        if (FileImage.HasFile)
        {
            if(FileImage.PostedFile.ContentType.Contains("image"))
            {
                ImageByte = new byte[FileImage.PostedFile.ContentLength];
                FileImage.PostedFile.InputStream.Read(ImageByte , 0 , ImageByte.Length); 
            }
            else
            {
                Lbl_Msg.Text = "الصورة المختارة خطأ";
                return;
            }
        }
        if (Button_Add.Text.Equals("اضافة المقال"))
        {
          if( DA.Add_Edit_Articles("-1",Txt_Title.Text,Txt_des.Text,Txt_detail.Text,RBL_Show.SelectedIndex==0,DropDownList_Section.SelectedValue,RBL_Show.SelectedIndex==1,ImageByte, RBL_Show.SelectedIndex==2) > 0 )
          {
              Lbl_Msg.Text = "تم اضافة المقال بنجاح...";
              Txt_Title.Text = Txt_des.Text = Txt_detail.Text = "";
              RBL_Show.SelectedIndex = -1;
          }
        }
        else
        {
            if (DA.Add_Edit_Articles(Request.QueryString["Id"], Txt_Title.Text, Txt_des.Text, Txt_detail.Text, RBL_Show.SelectedIndex == 0, DropDownList_Section.SelectedValue, RBL_Show.SelectedIndex == 1, ImageByte, RBL_Show.SelectedIndex == 2) > 0)
            {
                Lbl_Msg.Text = "تم تعديل المقال بنجاح...";
                Response.Redirect("View_Dalete_Articles.aspx");
            }
        }      
    }
}