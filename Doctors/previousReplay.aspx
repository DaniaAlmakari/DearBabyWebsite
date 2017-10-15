<%@ Page Title="" Language="C#" MasterPageFile="~/Doctors/MasterPage_DR.master" AutoEventWireup="true" CodeFile="previousReplay.aspx.cs" Inherits="Doctors_previousReplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified" dir="rtl">
        <tr>
            <td>
                <asp:Label ID="Label_username" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label_userid" runat="server" Visible="False" ></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="height: 22px; text-align: center">الردود السابقة لك على اسئلة المشتركين, بامكانك الحذف أو التعديل:</td>
        </tr>
        <tr>
            <td style="height: 22px; text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="QC_Id" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="90%">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;هل تريد الحذف ؟&quot;)" Text="حذف"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="الرد على السؤال" SortExpression="Q_title">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Q_title") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Q_Id", "Details.aspx?QId={0}") %>' Text='<%# Eval("Q_title") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="QC_date" HeaderText="التاريخ" SortExpression="QC_date" />
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [Question_comment] WHERE [QC_Id] = @original_QC_Id" InsertCommand="INSERT INTO [Question_comment] ([Q_Id], [user_Id], [QC_date], [QC_comment]) VALUES (@Q_Id, @user_Id, @QC_date, @QC_comment)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Question_comment.QC_Id, Question_comment.Q_Id, Question_comment.user_Id, Question_comment.QC_date, Question_comment.QC_comment, Question.Q_title, Question.Q_Id AS Expr1 FROM Question_comment INNER JOIN Question ON Question_comment.Q_Id = Question.Q_Id WHERE (Question_comment.user_Id = @user_Id) ORDER BY Question_comment.QC_Id DESC" UpdateCommand="UPDATE [Question_comment] SET [Q_Id] = @Q_Id, [user_Id] = @user_Id, [QC_date] = @QC_date, [QC_comment] = @QC_comment WHERE [QC_Id] = @original_QC_Id AND [Q_Id] = @original_Q_Id AND [user_Id] = @original_user_Id AND [QC_date] = @original_QC_date AND [QC_comment] = @original_QC_comment">
                    <DeleteParameters>
                        <asp:Parameter Name="original_QC_Id" Type="Int32" />
                        
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Q_Id" Type="Int32" />
                        <asp:Parameter Name="user_Id" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="QC_date" />
                        <asp:Parameter Name="QC_comment" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label_userid" Name="user_Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Q_Id" Type="Int32" />
                        <asp:Parameter Name="user_Id" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="QC_date" />
                        <asp:Parameter Name="QC_comment" Type="String" />
                        <asp:Parameter Name="original_QC_Id" Type="Int32" />
                        <asp:Parameter Name="original_Q_Id" Type="Int32" />
                        <asp:Parameter Name="original_user_Id" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="original_QC_date" />
                        <asp:Parameter Name="original_QC_comment" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

