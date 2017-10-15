<%@ Page Title="" Language="C#" MasterPageFile="~/Doctors/MasterPage_DR.master" AutoEventWireup="true" CodeFile="change_pass.aspx.cs" Inherits="Doctors_change_pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width:100%;">
        <tr>
            <td class="auto-style8" colspan="2">
                <asp:Label ID="Lbl_msg" runat="server" ForeColor="#009900"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="3"><strong>تغيير كلمة المرور</strong></td>
        </tr>
        <tr>
            <td class="auto-style10">كلمة المرور القديمة:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox_oldpass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_oldpass" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">كلمة المرور الجديدة:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox_newpass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_newpass" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">تأكيد كلمة المرور:</td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBox_confirm" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_newpass" ControlToValidate="TextBox_confirm" Display="Dynamic" ErrorMessage="كلمة المرور غير متطابقة" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="تغيير كلمة المرور" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>

