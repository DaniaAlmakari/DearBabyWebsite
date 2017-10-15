<%@ Page Title="" Language="C#" MasterPageFile="~/Doctors/MasterPage_DR.master" AutoEventWireup="true" CodeFile="ActiveQ.aspx.cs" Inherits="Doctors_ActiveQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center"  dir="rtl" style="width:100%", text-align: right">
    <tr>
        <td>
            <asp:Button ID="Button_active" runat="server" BorderColor="#FF8080" BorderStyle="Outset" Text="تفعيل" Width="91px" OnClick="Button_active_Click" CausesValidation="False" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td dir="rtl" style="text-align: right">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Q_Id" DataSourceID="SqlDataSource1" Width="90%" dir="rtl" GridLines="None">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" AutoPostBack="True" />
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox_active" runat="server"  />
                        </ItemTemplate>
                        <ItemStyle Width="10%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Right" SortExpression="Q_title">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Q_Id", "Details.aspx?QId={0}") %>' Text='<%# Eval("Q_title") %>'></asp:HyperLink>
                        </ItemTemplate>
                        <HeaderStyle ForeColor="#FF8080" HorizontalAlign="Right" Font-Bold="True" />
                        <ItemStyle Width="70%" />

                    </asp:TemplateField>
                    <asp:BoundField DataField="Q_date" SortExpression="Q_date">
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Width="30%" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="Q_active" SortExpression="Q_active" >
                    <HeaderStyle Font-Bold="True" ForeColor="#FF8080" HorizontalAlign="Right" />
                    </asp:CheckBoxField>
                </Columns>
                <HeaderStyle HorizontalAlign="Center" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT [Q_Id], [Q_title], [Q_date], [Q_active] FROM [Question] WHERE ([Q_active] = @Q_active) ORDER BY [Q_Id]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="false" Name="Q_active" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td dir="rtl" style="text-align: right; height: 87px;">
            </td>
    </tr>
    <tr>
        <td dir="rtl" style="text-align: right; color: #FF8080; font-size: large; text-decoration: underline; height: 60px;">
            <strong>جميع الاسئلة:</strong></td>
    </tr>
    <tr>
        <td dir="rtl" style="text-align: right">
            <asp:GridView ID="GridView_AllQ" runat="server" AutoGenerateColumns="False" BorderColor="Silver" BorderStyle="None" DataKeyNames="Q_Id" DataSourceID="SqlDataSource2" GridLines="Horizontal" HorizontalAlign="Center" ShowHeader="False" Width="90%">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;هل تريد الحذف ؟&quot;)" Text="حذف"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle ForeColor="#3366FF" Width="10%" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="السؤال" SortExpression="Q_title">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Q_Id", "Details.aspx?QId={0}") %>' Text='<%# Eval("Q_title") %>'></asp:HyperLink>
                        </ItemTemplate>
                        <ItemStyle Width="60%" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="user_name" SortExpression="user_name">
                    <ItemStyle Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Q_date" HeaderText="Q_date" SortExpression="Q_date" >
                    <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="Q_active" HeaderText="Q_active" SortExpression="Q_active" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [Question] WHERE [Q_Id] = @original_Q_Id AND [user_Id] = @original_user_Id AND [Q_title] = @original_Q_title AND [Q_content] = @original_Q_content AND [Q_date] = @original_Q_date AND [Q_active] = @original_Q_active" InsertCommand="INSERT INTO [Question] ([user_Id], [Q_title], [Q_content], [Q_date], [Q_active]) VALUES (@user_Id, @Q_title, @Q_content, @Q_date, @Q_active)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Question.Q_Id, Question.user_Id, Question.Q_title, Question.Q_content, Question.Q_date, Question.Q_active, Users.user_Id AS Expr1, Users.user_name FROM Question INNER JOIN Users ON Question.user_Id = Users.user_Id ORDER BY Question.Q_Id DESC" UpdateCommand="UPDATE [Question] SET [user_Id] = @user_Id, [Q_title] = @Q_title, [Q_content] = @Q_content, [Q_date] = @Q_date, [Q_active] = @Q_active WHERE [Q_Id] = @original_Q_Id AND [user_Id] = @original_user_Id AND [Q_title] = @original_Q_title AND [Q_content] = @original_Q_content AND [Q_date] = @original_Q_date AND [Q_active] = @original_Q_active">
                <DeleteParameters>
                    <asp:Parameter Name="original_Q_Id" Type="Int32" />
                    <asp:Parameter Name="original_user_Id" Type="Int32" />
                    <asp:Parameter Name="original_Q_title" Type="String" />
                    <asp:Parameter Name="original_Q_content" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Q_date" />
                    <asp:Parameter Name="original_Q_active" Type="Boolean" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_Id" Type="Int32" />
                    <asp:Parameter Name="Q_title" Type="String" />
                    <asp:Parameter Name="Q_content" Type="String" />
                    <asp:Parameter DbType="Date" Name="Q_date" />
                    <asp:Parameter Name="Q_active" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_Id" Type="Int32" />
                    <asp:Parameter Name="Q_title" Type="String" />
                    <asp:Parameter Name="Q_content" Type="String" />
                    <asp:Parameter DbType="Date" Name="Q_date" />
                    <asp:Parameter Name="Q_active" Type="Boolean" />
                    <asp:Parameter Name="original_Q_Id" Type="Int32" />
                    <asp:Parameter Name="original_user_Id" Type="Int32" />
                    <asp:Parameter Name="original_Q_title" Type="String" />
                    <asp:Parameter Name="original_Q_content" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Q_date" />
                    <asp:Parameter Name="original_Q_active" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

