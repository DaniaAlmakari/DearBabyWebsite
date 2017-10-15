<%@ Page Title="" Language="C#" MasterPageFile="~/Doctors/MasterPage_DR.master" AutoEventWireup="true" CodeFile="Edit_Personal_Info.aspx.cs" Inherits="Doctors_Edit_Personal_Info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
     <p style="text-align: center" dir ="rtl">
        <asp:Label ID="LblMsg" runat="server" style="text-align: right; font-weight: 700; font-size: large;"></asp:Label>
        <br />
    </p>
    <table align="center" class="nav-justified" dir="rtl" style="width: 90%">
        <tr>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080" colspan="3">
                <asp:Label ID="Label_username" runat="server" Visible="False" style="color: #C0C0C0"></asp:Label>
                <asp:Label ID="Label_userid" runat="server" Visible="False" style="color: #C0C0C0" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="font-weight: normal; font-size: medium; color: #808080; text-align: right;" colspan="3">
                *ملاحظة: بعد التعديل سيتم تسجيل خروجك, يرجى اعادة تسجيل الدخول بمعلوماتك المحدثة...</td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">الاسم:</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox_Name" runat="server" Width="334px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Name" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">&nbsp;</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">البريد الالكتروني:</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox_email" runat="server" Width="334px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_email" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email" Display="Dynamic" ErrorMessage="يرجى التأكد من صحة البريد الالكتروني" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">&nbsp;</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">مختصر عنكِ:</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <br />
                <asp:TextBox ID="TextBox_des" runat="server" Height="142px" TextMode="MultiLine" Width="637px"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="TextBox_des_HtmlEditorExtender" runat="server" EnableSanitization="false" TargetControlID="TextBox_des">
                </ajaxToolkit:HtmlEditorExtender>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">&nbsp;</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>* إذا كنتِ أحد المختصين في مجال الأطفال وترغبين في الانضمام لفريق الخبراء في موقع &quot;طفلي العزيز&quot;، يرجى كتابة خبراتك ومؤهلاتك في المختصر أعلاه، وسيتم التواصل معكِ من خلال بريدك الالكتروني.</td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">&nbsp;</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>
                <asp:Button ID="Button_Reg" runat="server" BorderColor="#FF8080" BorderStyle="Solid" OnClick="Button_Reg_Click" Text="تعديل" Width="117px" />
            </td>
        </tr>
    </table>

</asp:Content>

