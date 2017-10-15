<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Edit_Articles.aspx.cs" Inherits="Admin_Add_Edit_Articles" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
        .auto-style21 {
            text-align: right;
            font-weight: 700;
            height: 34px;
            width: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table dir="rtl" style="width:100%;">
        <tr>
            <td colspan="2">
                <asp:Label ID="Lbl_Msg" runat="server" ForeColor="#009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td  style="text-align: center">عنوان المقال:</td>
            <td>
                <asp:TextBox ID="Txt_Title" runat="server" Width="80%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_Title" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">القسم:</td>
            <td>
                <asp:DropDownList ID="DropDownList_Section" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sec_name" DataValueField="Sec_Id" Width="250px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT * FROM [Section]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">المختصر:</td>
            <td>
                <asp:TextBox ID="Txt_des" runat="server" Rows="5" TextMode="MultiLine" Width="80%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_des" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">التفاصيل:</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:TextBox ID="Txt_detail" runat="server" Rows="10" TextMode="MultiLine" Width="99%" Height="235px"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="Txt_detail_HtmlEditorExtender" EnableSanitization="false" runat="server" TargetControlID="Txt_detail">
                </ajaxToolkit:HtmlEditorExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txt_detail" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">الصورة:</td>
            <td>
                <asp:FileUpload ID="FileImage" runat="server" Width="80%" style="text-align: right" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Visible="False" Width="59px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RBL_Show" runat="server">
                    <asp:ListItem>مقال في الصفحة الرئيسية</asp:ListItem>
                    <asp:ListItem>مقال رئيسي </asp:ListItem>
                    <asp:ListItem>غير ذلك</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Button ID="Button_Add" runat="server" OnClick="Button_Add_Click" Text="اضافة المقال" BorderColor="#666666" />
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

