<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="Admin_Menu" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
        font-size: large;
    }
    .auto-style2 {
        text-align: right;
        font-weight: 700;
    }
    .auto-style3 {
        text-align: right;
    }
    .auto-style6 {
        font-size: large;
    }
    .auto-style7 {
        text-align: right;
        font-weight: 700;
        height: 40px;
    }
    .auto-style8 {
        text-align: right;
        font-weight: 700;
        height: 34px;
        width: 1147px;
    }
    .auto-style9 {
        height: 34px;
    }
    .auto-style10 {
        text-align: right;
        font-weight: 700;
        height: 38px;
        width: 1147px;
    }
    .auto-style11 {
        height: 38px;
    }
    .auto-style12 {
        text-align: right;
        font-weight: 700;
        height: 39px;
        width: 1147px;
    }
    .auto-style13 {
        height: 39px;
    }
    .auto-style14 {
        height: 42px;
    }
    .auto-style15 {
        text-align: right;
        font-weight: 700;
        height: 42px;
        width: 1147px;
    }
    .auto-style16 {
        text-align: right;
        font-weight: 700;
        height: 37px;
        width: 1147px;
    }
    .auto-style17 {
        height: 37px;
    }
    .auto-style18 {
        text-align: right;
        font-weight: 700;
        width: 1147px;
    }
</style>

<table style="width: 100%;" dir="ltr">
    <tr>
        <td class="auto-style1" colspan="2">
            <h2 class="auto-style3"><strong style="text-align: right">لوحة تحكم المدير</strong></h2>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/change_pass.aspx" style="text-align: right">تغيير كلمة المرور</asp:HyperLink>
        </td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td class="auto-style16">
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">تسجيل خروج</asp:LinkButton>
        </td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2" dir="rtl">
            <h3>إ<span class="auto-style6">دارة المقالات:</span></h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style18">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin/section.aspx">إدارة أقسام المقالات</asp:HyperLink>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" NavigateUrl="~/Admin/Add_Edit_Articles.aspx">إضافة مقال</asp:HyperLink>
        </td>
        <td class="auto-style11"></td>
    </tr>
    <tr dir="rtl">
        <td class="auto-style12">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin/View_Dalete_Articles.aspx">عرض المقالات</asp:HyperLink>
        </td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td class="auto-style15">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/comments.aspx">تفعيل تعليقات المستخدمين</asp:HyperLink>
        </td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="2" dir="rtl">
            إ<span class="auto-style6">دارة الأعضاء:</span></td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin/Active_user.aspx">إضافة أوتفعيل مستخدم</asp:HyperLink>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Admin/User Permissions.aspx">صلاحيات المستخدمين</asp:HyperLink>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Admin/MSG.aspx">رسائل الزوار</asp:HyperLink>
        </td>
        <td class="auto-style9"></td>
    </tr>
    <tr>
        <td class="auto-style18">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2" dir="rtl">
            &nbsp;</td>
    </tr>
</table>

