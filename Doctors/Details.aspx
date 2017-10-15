<%@ Page Title="" Language="C#" MasterPageFile="~/Doctors/MasterPage_DR.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Doctors_Details" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table dir="rtl" style="width:100%;">
        <tr>
            <td class="auto-style1" style="font-size: medium; width: 131px; color: #FF8080; font-weight: bold;">&nbsp;</td>
            <td>
                <asp:Label ID="Lbl_Msg" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: medium; width: 131px; color: #FF8080; font-weight: bold;"><strong>عنوان السؤال:</strong></td>
            <td>
                <asp:TextBox ID="TextBox_Qtitle" runat="server" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Qtitle" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: medium; width: 131px; color: #FF8080; font-weight: bold;"><strong>نص السؤال:</strong></td>
            <td>&nbsp;&nbsp;
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:TextBox ID="TextBox_Qcontent" runat="server" Width="800px" Height="157px" TextMode="MultiLine"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="TextBox_Qcontent_HtmlEditorExtender" EnableSanitization="false" runat="server" TargetControlID="TextBox_Qcontent">
                </ajaxToolkit:HtmlEditorExtender>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Qcontent" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; color: #FF8080; font-weight: bold;">&nbsp;</td>
            <td>
                <asp:Label ID="Label_userid" runat="server" Visible="False" ></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_username" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; color: #FF8080; font-weight: bold;">&nbsp;</td>
            <td>
                <asp:Button ID="Button_add" runat="server" BorderColor="#FF8080" OnClick="Button_add_Click" Text="تعديل" Width="94px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; color: #FF8080; font-weight: bold;">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" style="color: #0000FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; color: #FF8080; font-weight: bold;">أضف رد:</td>
            <td>
                <asp:TextBox ID="TextBox_Replay" runat="server" Width="800px" Height="157px" TextMode="MultiLine"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="TextBox_Replay_HtmlEditorExtender" EnableSanitization="false" runat="server" TargetControlID="TextBox_Replay">
                </ajaxToolkit:HtmlEditorExtender>
                
                </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; color: #FF8080; font-weight: bold;">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; color: #FF8080; font-weight: bold;">&nbsp;</td>
            <td>
                <asp:Button ID="Button_addR" runat="server" BorderColor="#FF8080" OnClick="Button_addR_Click" Text="اضافة" Width="94px" />
                
                </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

