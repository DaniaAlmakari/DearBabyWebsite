<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Active_user.aspx.cs" Inherits="Admin_Active_user" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            height: 80px;
        }
        .auto-style10 {
            height: 80px;
            text-decoration: underline;
        }
        .auto-style18 {
            height: 38px;
            text-decoration: underline;
            text-align: right;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style8" dir="rtl">
        <tr>
            <td class="auto-style5">
                إضافة خبير للموقع:</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
               <table align="right"  dir="rtl" style="width: 80%">
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="Label_msg" runat="server" ForeColor="#009900"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">اسم الخبير:</td>
        <td>
            <asp:TextBox ID="TextBox_name" runat="server" Width="275px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_name" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">البريد الالكتروني:</td>
        <td>
            <asp:TextBox ID="TextBox_email" runat="server" Width="275px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_email" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email" Display="Dynamic" ErrorMessage="يرجى ادخال بريد الكتروني صحيح" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">كلمة المرور:</td>
        <td>
            <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" Width="275px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_pass" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">وصف مختصر عنه:</td>
        <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <br />
                <asp:TextBox ID="TextBox_Des" runat="server" Height="142px" TextMode="MultiLine" Width="637px"></asp:TextBox>
                <ajaxToolkit:HtmlEditorExtender ID="TextBox_des_HtmlEditorExtender" runat="server" EnableSanitization="false" TargetControlID="TextBox_Des">
                </ajaxToolkit:HtmlEditorExtender>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="Button_create" runat="server" BorderColor="#666666" OnClick="Button_create_Click" Text="انشاء خبير" Width="77px" />
        </td>
    </tr>
</table>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button_active" runat="server" OnClick="Button_active_Click" Text="تفعيل" Width="62px" BorderColor="#666666" />
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="90%" DataKeyNames="user_Id">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox_active" runat="server" />
                            </ItemTemplate>
                            <ItemStyle Width="8%" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_name" HeaderText="اسم المشترك" SortExpression="user_name">
                        <ItemStyle Width="30%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="الايميل" SortExpression="email">
                        <ItemStyle Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_description" HeaderText="وصف مختصر عنه" SortExpression="user_description">
                        <ItemStyle Width="40%" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="active" HeaderText="حالة التفعيل" SortExpression="active" />
                    </Columns>
                    <HeaderStyle ForeColor="#0033CC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT user_name, email, user_description, active, user_Id FROM Users WHERE (active = @active) ORDER BY user_Id">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="False" Name="active" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>جميع المستخدمين:</strong></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView_Alluser" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource2" Width="100%">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;هل تريد الحذف ؟&quot;)" Text="حذف" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_name" HeaderText="اسم المشترك" SortExpression="user_name">
                        <ItemStyle Width="30%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="البريد الالكتروني" SortExpression="email">
                        <ItemStyle Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_description" HeaderText="وصف مختصر عنه" SortExpression="user_description">
                        <ItemStyle Width="40%" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="active" HeaderText="حالة التفعيل" SortExpression="active" />
                    </Columns>
                    <HeaderStyle ForeColor="#0033CC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [Users] WHERE [user_Id] = @original_user_Id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([is_admin] = @original_is_admin) OR ([is_admin] IS NULL AND @original_is_admin IS NULL)) AND (([is_member] = @original_is_member) OR ([is_member] IS NULL AND @original_is_member IS NULL)) AND (([is_DR] = @original_is_DR) OR ([is_DR] IS NULL AND @original_is_DR IS NULL)) AND (([user_description] = @original_user_description) OR ([user_description] IS NULL AND @original_user_description IS NULL)) AND (([active] = @original_active) OR ([active] IS NULL AND @original_active IS NULL))" InsertCommand="INSERT INTO [Users] ([user_name], [pass], [email], [is_admin], [is_member], [is_DR], [user_description], [active]) VALUES (@user_name, @pass, @email, @is_admin, @is_member, @is_DR, @user_description, @active)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users] ORDER BY [user_Id] DESC" UpdateCommand="UPDATE [Users] SET [user_name] = @user_name, [pass] = @pass, [email] = @email, [is_admin] = @is_admin, [is_member] = @is_member, [is_DR] = @is_DR, [user_description] = @user_description, [active] = @active WHERE [user_Id] = @original_user_Id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([is_admin] = @original_is_admin) OR ([is_admin] IS NULL AND @original_is_admin IS NULL)) AND (([is_member] = @original_is_member) OR ([is_member] IS NULL AND @original_is_member IS NULL)) AND (([is_DR] = @original_is_DR) OR ([is_DR] IS NULL AND @original_is_DR IS NULL)) AND (([user_description] = @original_user_description) OR ([user_description] IS NULL AND @original_user_description IS NULL)) AND (([active] = @original_active) OR ([active] IS NULL AND @original_active IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_user_Id" Type="Int32" />
                        <asp:Parameter Name="original_user_name" Type="String" />
                        <asp:Parameter Name="original_pass" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_is_admin" Type="Boolean" />
                        <asp:Parameter Name="original_is_member" Type="Boolean" />
                        <asp:Parameter Name="original_is_DR" Type="Boolean" />
                        <asp:Parameter Name="original_user_description" Type="String" />
                        <asp:Parameter Name="original_active" Type="Boolean" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="user_name" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="is_admin" Type="Boolean" />
                        <asp:Parameter Name="is_member" Type="Boolean" />
                        <asp:Parameter Name="is_DR" Type="Boolean" />
                        <asp:Parameter Name="user_description" Type="String" />
                        <asp:Parameter Name="active" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="user_name" Type="String" />
                        <asp:Parameter Name="pass" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="is_admin" Type="Boolean" />
                        <asp:Parameter Name="is_member" Type="Boolean" />
                        <asp:Parameter Name="is_DR" Type="Boolean" />
                        <asp:Parameter Name="user_description" Type="String" />
                        <asp:Parameter Name="active" Type="Boolean" />
                        <asp:Parameter Name="original_user_Id" Type="Int32" />
                        <asp:Parameter Name="original_user_name" Type="String" />
                        <asp:Parameter Name="original_pass" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_is_admin" Type="Boolean" />
                        <asp:Parameter Name="original_is_member" Type="Boolean" />
                        <asp:Parameter Name="original_is_DR" Type="Boolean" />
                        <asp:Parameter Name="original_user_description" Type="String" />
                        <asp:Parameter Name="original_active" Type="Boolean" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

