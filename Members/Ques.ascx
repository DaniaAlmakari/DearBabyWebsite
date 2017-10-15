<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Ques.ascx.cs" Inherits="Members_Ques" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style4 {
        width: 159px;
    }
    .auto-style5 {
        color: #3366FF;
        font-size: medium;
    }
</style>

<table align="right" class="auto-style1" dir="rtl" style="width: 80%">
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="80%" DataKeyField="Q_Id">
                <ItemTemplate>
                    <table class="auto-style1" dir="rtl">
                        <tr>
                            <td colspan="2">
                                <asp:HyperLink ID="HyperLink1" runat="server" style="color: #FF8080; font-weight: 700; font-size: large" Text='<%# Eval("Q_title") %>' NavigateUrl='<%# Eval("Q_Id", "Details_Question.aspx?QId={0}") %>'></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" style="color: #333333; font-size: medium" Text='<%# Eval("Q_content") %>'></asp:Label>
                            </td>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT Question.Q_Id, Question.user_Id, Question.Q_title, Question.Q_content, Question.Q_date, Question.Q_active, Users.user_Id AS Expr3, Users.user_name FROM Question INNER JOIN Users ON Question.user_Id = Users.user_Id WHERE (Question.Q_active = @Q_active) ORDER BY Question.Q_Id DESC">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="Q_active" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>

