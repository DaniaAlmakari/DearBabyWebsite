<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="comments.aspx.cs" Inherits="Admin_comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table dir="rtl" style="width:100%;">
        <tr>
            <td>
                <asp:Button ID="Active_Button" runat="server" OnClick="Active_Button_Click" Text="تحديث" Width="84px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView_comments" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="com_Id" DataSourceID="SqlDataSource1" Width="100%">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox_active" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="comment" HeaderText="التعليق" SortExpression="comment">
                        <ItemStyle Width="80%" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="active" HeaderText="فعال" SortExpression="active" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT [com_Id], [comment], [active] FROM [comments] WHERE ([active] = @active) ORDER BY [com_Id] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="False" Name="active" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="3">جميع التعليقات:</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="com_Id" DataSourceID="SqlDataSource_allCom" Width="100%">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;هل تريد الحذف ؟&quot;)" Text="حذف"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_name" HeaderText="صاحب التعليق" SortExpression="user_name" >
                        <ItemStyle Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="comment" HeaderText="التعليق" SortExpression="comment">
                        <ItemStyle Width="30%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="title" HeaderText="المقال" SortExpression="title">
                        <ItemStyle Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="user_email" HeaderText="البريد الالكتروني" SortExpression="user_email" >
                        <ItemStyle Width="20%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="com_date" HeaderText="تاريخ التعليق" SortExpression="com_date" >
                        <ItemStyle Width="10%" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="active" HeaderText="حالة التفعيل" SortExpression="active" >
                        <ItemStyle Width="5%" />
                        </asp:CheckBoxField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource_allCom" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [comments] WHERE [com_Id] = @original_com_Id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_email] = @original_user_email) OR ([user_email] IS NULL AND @original_user_email IS NULL)) AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL)) AND (([active] = @original_active) OR ([active] IS NULL AND @original_active IS NULL)) AND [art_Id] = @original_art_Id AND [com_date] = @original_com_date" InsertCommand="INSERT INTO [comments] ([user_name], [user_email], [comment], [active], [art_Id], [com_date]) VALUES (@user_name, @user_email, @comment, @active, @art_Id, @com_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT comments.com_Id, comments.user_name, comments.user_email, comments.comment, comments.active, comments.art_Id, comments.com_date, Articles.art_Id AS Expr1, Articles.title FROM comments INNER JOIN Articles ON comments.art_Id = Articles.art_Id ORDER BY comments.com_Id DESC" UpdateCommand="UPDATE [comments] SET [user_name] = @user_name, [user_email] = @user_email, [comment] = @comment, [active] = @active, [art_Id] = @art_Id, [com_date] = @com_date WHERE [com_Id] = @original_com_Id AND (([user_name] = @original_user_name) OR ([user_name] IS NULL AND @original_user_name IS NULL)) AND (([user_email] = @original_user_email) OR ([user_email] IS NULL AND @original_user_email IS NULL)) AND (([comment] = @original_comment) OR ([comment] IS NULL AND @original_comment IS NULL)) AND (([active] = @original_active) OR ([active] IS NULL AND @original_active IS NULL)) AND [art_Id] = @original_art_Id AND [com_date] = @original_com_date">
                    <DeleteParameters>
                        <asp:Parameter Name="original_com_Id" Type="Int32" />
                        <asp:Parameter Name="original_user_name" Type="String" />
                        <asp:Parameter Name="original_user_email" Type="String" />
                        <asp:Parameter Name="original_comment" Type="String" />
                        <asp:Parameter Name="original_active" Type="Boolean" />
                        <asp:Parameter Name="original_art_Id" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="original_com_date" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="user_name" Type="String" />
                        <asp:Parameter Name="user_email" Type="String" />
                        <asp:Parameter Name="comment" Type="String" />
                        <asp:Parameter Name="active" Type="Boolean" />
                        <asp:Parameter Name="art_Id" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="com_date" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="user_name" Type="String" />
                        <asp:Parameter Name="user_email" Type="String" />
                        <asp:Parameter Name="comment" Type="String" />
                        <asp:Parameter Name="active" Type="Boolean" />
                        <asp:Parameter Name="art_Id" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="com_date" />
                        <asp:Parameter Name="original_com_Id" Type="Int32" />
                        <asp:Parameter Name="original_user_name" Type="String" />
                        <asp:Parameter Name="original_user_email" Type="String" />
                        <asp:Parameter Name="original_comment" Type="String" />
                        <asp:Parameter Name="original_active" Type="Boolean" />
                        <asp:Parameter Name="original_art_Id" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="original_com_date" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

