<%@ Page Title="" Language="C#" MasterPageFile="~/Members/MasterPage_Member.master" AutoEventWireup="true" CodeFile="Details_Question.aspx.cs" Inherits="Members_Details_Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource_Q" Width="90%" DataKeyField="Q_Id">
                <ItemTemplate>
                    <table class="auto-style1" dir="rtl" style="width: 80%">
                        <tr>
                            <td colspan="2">
                                <asp:HyperLink ID="HyperLink1" runat="server" style="color: #FF8080; font-weight: 700; font-size: large" Text='<%# Eval("Q_title") %>'></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" style="color: #333333; font-size: medium" Text='<%# Eval("Q_content") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4" style="text-align: right">&nbsp;<asp:Label ID="Label4" runat="server" style="color: #999999; font-weight: 700" Text='<%# Eval("user_name") %>'></asp:Label>
                            </td>
                            <td style="text-align: left">
                                <asp:Label ID="Label2" runat="server" style="color: #999999" Text='<%# Eval("Q_date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5" colspan="2" style="text-align: right">
                                <hr style="color: #FF8080" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            </td>
        </tr>
        <tr>
            <td style="color: #3366FF; font-size: large"><strong>رد المختص:</strong></td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource_C" Width="80%">
                    <ItemTemplate>
                        <br />
                        <table dir="rtl" style="width:100%;">
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" style="font-size: large" Text='<%# Eval("QC_comment") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right" dir="rtl">
                                    <asp:Label ID="Label6" runat="server" style="color: #FF8080; font-weight: 700" Text='<%# Eval("user_name") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td dir="rtl" style="text-align: right">
                                    <asp:Label ID="Label8" runat="server" style="font-weight: 700; color: #808080" Text='<%# Eval("user_description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left">
                                    <asp:Label ID="Label7" runat="server" style="color: #999999" Text='<%# Eval("QC_date") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource_C" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT Question_comment.QC_date, Question_comment.QC_comment, Question_comment.user_Id, Users.user_Id AS Expr1, Question_comment.Q_Id, Users.user_name, Users.user_description FROM Question_comment INNER JOIN Users ON Question_comment.user_Id = Users.user_Id WHERE (Question_comment.Q_Id = @Q_Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Q_Id" QueryStringField="QId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource_Q" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT Question.Q_title, Question.Q_content, Question.user_Id, Question.Q_date, Question.Q_Id, Users.user_Id AS Expr1, Users.user_name FROM Question INNER JOIN Users ON Question.user_Id = Users.user_Id WHERE (Question.Q_Id = @Q_Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Q_Id" QueryStringField="QId" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

