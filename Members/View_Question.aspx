<%@ Page Title="" Language="C#" MasterPageFile="~/Members/MasterPage_Member.master" AutoEventWireup="true" CodeFile="View_Question.aspx.cs" Inherits="Members_View_Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; text-align: center;" dir="rtl">
        <tr>
            <td>
                <asp:Label ID="Label_userid" runat="server" Visible="False" ></asp:Label>
                <asp:Label ID="Label_username" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="color: #999999; height: 44px;">
                *الاسئلة السابقة, بامكانك&nbsp; الحذف والتعديل&nbsp; أو الضغط على عنوان السؤال لمشاهدة تفاصيله:</td>
        </tr>
        <tr dir="rtl">
            <td >
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#FF8080" DataKeyNames="Q_Id" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="90%" GridLines="Horizontal" ShowHeader="False">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;هل تريد الحذف ؟&quot;)" Text="حذف"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Q_Id", "Add_Question.aspx?Id={0}") %>' Text="تعديل"></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="عنوان السؤال" SortExpression="Q_title">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Q_title") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Q_Id", "Details_Question.aspx?QId={0}") %>' Text='<%# Eval("Q_title") %>'></asp:HyperLink>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Q_date" HeaderText="تاريخ اضافة السؤال" SortExpression="Q_date">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CheckBoxField DataField="Q_active" HeaderText="حالة التفعيل" SortExpression="Q_active">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:CheckBoxField>
                    </Columns>
                    <HeaderStyle Font-Bold="True" Font-Underline="True" ForeColor="#FF8080" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [Question] WHERE [Q_Id] = @original_Q_Id AND [user_Id] = @original_user_Id AND [Q_title] = @original_Q_title AND [Q_content] = @original_Q_content AND [Q_date] = @original_Q_date AND [Q_active] = @original_Q_active" InsertCommand="INSERT INTO [Question] ([user_Id], [Q_title], [Q_content], [Q_date], [Q_active]) VALUES (@user_Id, @Q_title, @Q_content, @Q_date, @Q_active)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Question] WHERE ([user_Id] = @user_Id) ORDER BY [Q_Id] DESC" UpdateCommand="UPDATE [Question] SET [user_Id] = @user_Id, [Q_title] = @Q_title, [Q_content] = @Q_content, [Q_date] = @Q_date, [Q_active] = @Q_active WHERE [Q_Id] = @original_Q_Id AND [user_Id] = @original_user_Id AND [Q_title] = @original_Q_title AND [Q_content] = @original_Q_content AND [Q_date] = @original_Q_date AND [Q_active] = @original_Q_active">
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label_userid" Name="user_Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
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
        <tr>
            <td>&nbsp;</td>  
        </tr>
    </table>
</asp:Content>

