using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Section : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // احضار البيانات من الداتا بيز
            if (Request.QueryString["Id"] != null)
            {
                DataTable DT = DA.GET_Section(Request.QueryString["Id"].ToString());
                TextBox_name.Text = DT.Rows[0]["Sec_name"].ToString();
                TextBox_des.Text = DT.Rows[0]["Sec_des"].ToString();

                Image1.Visible = true;
                Image1.ImageUrl = "~/GetImgSection.aspx?w=120&Id=" + Request.QueryString["Id"];

                Button_insert.Text = "تعديل";
            }
        }

    }
    protected void Button_insert_Click(object sender, EventArgs e)
    {
        byte[] ImageByte = null;
        if (FileImage.HasFile)
        {
            if (FileImage.PostedFile.ContentType.Contains("image"))
            {
                ImageByte = new byte[FileImage.PostedFile.ContentLength];
                FileImage.PostedFile.InputStream.Read(ImageByte, 0, ImageByte.Length);
            }
            else
            {
                Lbl_Msg.Text = "الصورة المختارة خطأ";
                return;
            }
        }
        if (Button_insert.Text.Equals("اضافة"))
        {
            if (DA.Add_Edit_Section("-1", TextBox_name.Text, ImageByte,TextBox_des.Text) > 0)
            {
                Lbl_Msg.Text = "تم اضافة القسم بنجاح...";
                TextBox_name.Text = TextBox_des.Text = "";
                GridView1.DataBind();
            }
        }
        else
        {
            if (DA.Add_Edit_Section(Request.QueryString["Id"], TextBox_name.Text, ImageByte, TextBox_des.Text) > 0)
            {
                Lbl_Msg.Text = "تم تعديل القسم بنجاح...";
                GridView1.DataBind();
            }
        } 
    }
}