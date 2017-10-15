<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="User Permissions.aspx.cs" Inherits="Admin_User_Permissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            height: 52px;
        }
        .auto-style10 {
            height: 52px;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style8" dir="rtl">
        <tr>
            <td class="auto-style10"><strong><em>صلاحيات المستخدمين:</em></strong></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource1" Width="90%">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="تحديث" />
                                &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="الغاء" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="تعديل" Width="54px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_name" HeaderText="اسم المستخدم" InsertVisible="False" SortExpression="user_name" />
                        <asp:CheckBoxField DataField="is_admin" HeaderText="مدير" SortExpression="is_admin">
                        <ItemStyle Width="10%" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="is_member" HeaderText="مشترك" SortExpression="is_member">
                        <ItemStyle Width="10%" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="is_DR" HeaderText="خبير" SortExpression="is_DR">
                        <ItemStyle Width="10%" />
                        </asp:CheckBoxField>
                        <asp:CheckBoxField DataField="active" HeaderText="حالة التفعيل" SortExpression="active">
                        <ItemStyle Width="10%" />
                        </asp:CheckBoxField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [Users] WHERE [user_Id] = @original_user_Id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([pass] = @original_pass) OR ([pass] IS NULL AND @original_pass IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([is_admin] = @original_is_admin) OR ([is_admin] IS NULL AND @original_is_admin IS NULL)) AND (([is_member] = @original_is_member) OR ([is_member] IS NULL AND @original_is_member IS NULL)) AND (([is_DR] = @original_is_DR) OR ([is_DR] IS NULL AND @original_is_DR IS NULL)) AND (([user_description] = @original_user_description) OR ([user_description] IS NULL AND @original_user_description IS NULL)) AND (([active] = @original_active) OR ([active] IS NULL AND @original_active IS NULL))" InsertCommand="INSERT INTO [Users] ([user_name], [pass], [email], [is_admin], [is_member], [is_DR], [user_description], [active]) VALUES (@user_name, @pass, @email, @is_admin, @is_member, @is_DR, @user_description, @active)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users] ORDER BY [user_Id] DESC" UpdateCommand="UPDATE [Users] SET  [is_admin] = @is_admin, [is_member] = @is_member, [is_DR] = @is_DR, [active] = @active WHERE [user_Id] = @original_user_Id AND  (([is_admin] = @original_is_admin) OR ([is_admin] IS NULL AND @original_is_admin IS NULL)) AND (([is_member] = @original_is_member) OR ([is_member] IS NULL AND @original_is_member IS NULL)) AND (([is_DR] = @original_is_DR) OR ([is_DR] IS NULL AND @original_is_DR IS NULL))  AND (([active] = @original_active) OR ([active] IS NULL AND @original_active IS NULL))">
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
                        <asp:Parameter Name="is_admin" Type="Boolean" />
                        <asp:Parameter Name="is_member" Type="Boolean" />
                        <asp:Parameter Name="is_DR" Type="Boolean" />
                        <asp:Parameter Name="active" Type="Boolean" />
                        <asp:Parameter Name="original_user_Id" Type="Int32" />
                        <asp:Parameter Name="original_is_admin" Type="Boolean" />
                        <asp:Parameter Name="original_is_member" Type="Boolean" />
                        <asp:Parameter Name="original_is_DR" Type="Boolean" />
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

