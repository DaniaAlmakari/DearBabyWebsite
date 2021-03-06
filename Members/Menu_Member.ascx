﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu_Member.ascx.cs" Inherits="Members_Menu_Member" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<style type="text/css">
    .auto-style2 {
        width: 24px;
    }
    .auto-style3 {
        font-size: medium;
    }
</style>

<table dir="rtl" style="width:100%;">
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/arw2.png" CssClass="auto-style3" />
        </td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="#FF8080" ForeColor="Gray" NavigateUrl="~/Members/change_pass.aspx" CssClass="auto-style3" style="font-weight: 700">تغيير كلمة المرور</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/arw2.png" CssClass="auto-style3" />
        </td>
        <td>
            <asp:HyperLink ID="HyperLink4" runat="server" BorderColor="#FF8080" ForeColor="Gray" NavigateUrl="~/Members/Edit_personal_info.aspx" CssClass="auto-style3" style="font-weight: 700">تعديل الملف الشخصي</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/arw2.png" CssClass="auto-style3" />
        </td>
        <td>أ<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="Gray" NavigateUrl="~/Members/Add_Question.aspx">ضيفي سؤال لطبيب الموقع</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/arw2.png" CssClass="auto-style3" />
        </td>
        <td><asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="Gray" NavigateUrl="~/Members/Default_Members.aspx">اسئلة المشتركين</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/arw2.png" CssClass="auto-style3" />
        </td>
        <td>
            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Gray" NavigateUrl="~/Members/View_Question.aspx" style="font-weight: 700">مواضيعي السابقة</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/arw2.png" CssClass="auto-style3" />
        </td>
        <td>
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Gray" OnClick="LinkButton1_Click" style="font-weight: 700" CausesValidation="False">تسجيل خروج</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

