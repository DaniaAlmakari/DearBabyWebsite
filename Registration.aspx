<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p class="text-center">
        <em><span style="font-size: large; color: #3366FF">أهلاً وسهلاً بك معنا, يرجى تسجيل المعلومات أدناه لتتمكني من الحصول على نصائح الخبراء و لانشاء ملفك الشخصي</span></em></p>
   <br />
     <p style="text-align: center" dir ="rtl">
        <asp:Label ID="LblMsg" runat="server" style="text-align: right; font-weight: 700; font-size: large;"></asp:Label>
         <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True"></asp:HyperLink>
        <br />
    </p>
    <table align="center" class="nav-justified" dir="rtl" style="width: 90%">
        <tr>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080" colspan="3">&nbsp;</td>
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
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">كلمة المرور:</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" Width="334px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_pass" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">&nbsp;</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="width: 238px; font-weight: bold; font-size: large; color: #FF8080">تأكيد كلمة المرور:</td>
            <td class="text-left" style="font-weight: bold; font-size: large; color: #FF8080; width: 18px">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox_conpass" runat="server" TextMode="Password" Width="334px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_conpass" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_pass" ControlToValidate="TextBox_conpass" Display="Dynamic" ErrorMessage="كلمة المررو غير مطابقة" ForeColor="Red"></asp:CompareValidator>
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
                <asp:Button ID="Button_Reg" runat="server" BorderColor="#FF8080" BorderStyle="Solid" OnClick="Button_Reg_Click" Text="تسجيل" Width="117px" />
            </td>
        </tr>
    </table>

</asp:Content>

