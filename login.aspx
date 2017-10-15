<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	
    <table align="center" dir="rtl" style="width: 80%;">
        <tr>
            <td class="modal-sm" style="width: 175px">&nbsp;</td>
            <td style="width: 433px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" colspan="3">أهلا بك معنا في موقع &quot;طفلي العزيز&quot;..
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#FF8080" NavigateUrl="~/Registration.aspx">سجلي معنا</asp:HyperLink>
&nbsp;لإنشاء ملفك التعريفي والبدء بالتواصل مع أفضل الخبراء والمختصين في الموقع..</td>
        </tr>
        <tr>
            <td colspan="3">
                <h2 class="text-center" style="color: #0000FF; font-family: Andalus;">تسجيل الدخول</h2>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 175px">
                <h3 style="color: #F28579"><strong>الاسم:</strong></h3>
            </td>
            <td style="width: 433px">
                <asp:TextBox ID="TextBox_name" runat="server" Width="300px" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 54px; width: 175px">
                <h3 style="color: #FF8080"><strong>كلمة المرور:</strong></h3>
            </td>
            <td style="height: 54px; width: 433px">
                <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" Width="300px">كلمة السر</asp:TextBox>
            <td style="height: 54px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 175px">&nbsp;</td>
            <td style="width: 433px">
                <asp:Button ID="Button_login" runat="server" BorderColor="#FF8080" BorderStyle="Double" Text="دخول" Width="100px" OnClick="Button_login_Click1" />
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 175px">&nbsp;</td>
            <td style="width: 433px">
                <asp:Label ID="Label_msg" runat="server" ForeColor="Red"></asp:Label>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 175px">&nbsp;</td>
            <td style="width: 433px">
                &nbsp;<td>&nbsp;</td>
        </tr>
    </table>
    	
</asp:Content>

