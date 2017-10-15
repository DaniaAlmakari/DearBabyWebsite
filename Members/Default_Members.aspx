<%@ Page Title="" Language="C#" MasterPageFile="~/Members/MasterPage_Member.master" AutoEventWireup="true" CodeFile="Default_Members.aspx.cs" Inherits="Members_Default_Members" %>

<%@ Register src="Menu_Member.ascx" tagname="Menu_Member" tagprefix="uc1" %>

<%@ Register src="Ques.ascx" tagname="Ques" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  dir="rtl" style="vertical-align: top; width: 1070px;">
    <tr>
        <td  colspan="2" style="color: #3366FF; text-align: center;">
            <asp:TextBox ID="TextBox_search" runat="server" Height="17px" Width="179px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderColor="#FF8080" ForeColor="#FF8080" Height="27px" Text="بحث" Width="58px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td  colspan="2" style="color: #3366FF">
            <h2><span style="font-size: x-large">اسئلة سابقة للمشتركين</span><strong>:</strong></h2>
        </td>
    </tr>
    <tr>
        <td  style="width:10%">&nbsp;</td>
        <td rowspan="2" style="vertical-align: top">
           <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="80%" DataKeyField="Q_Id">
                <ItemTemplate>
                    <table class="auto-style1" dir="rtl" style="width: 80%">
                        <tr>
                            <td colspan="2">
                                <asp:HyperLink ID="HyperLink1" runat="server" style="color: #FF8080; font-weight: 700; font-size: large" Text='<%# Eval("Q_title") %>' NavigateUrl='<%# Eval("Q_Id", "Details_Question.aspx?QId={0}") %>'></asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 22px">
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
            <asp:DataList ID="DataList_search" runat="server" DataSourceID="SqlDataSource_search" Width="80%" DataKeyField="Q_Id" Visible="False">
                <ItemTemplate>
                    <table class="auto-style1" dir="rtl" style="width: 80%">
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
            <asp:SqlDataSource ID="SqlDataSource_search" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT Question.Q_Id, Question.user_Id, Question.Q_title, Question.Q_content, Question.Q_date, Question.Q_active, Users.user_Id AS Expr3, Users.user_name FROM Question INNER JOIN Users ON Question.user_Id = Users.user_Id WHERE (Question.[Q_title] like @Q_title)">
                <SelectParameters>
                    <asp:Parameter Name="Q_title" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT Question.Q_Id, Question.user_Id, Question.Q_title, Question.Q_content, Question.Q_date, Question.Q_active, Users.user_Id AS Expr3, Users.user_name FROM Question INNER JOIN Users ON Question.user_Id = Users.user_Id WHERE (Question.Q_active = @Q_active) ORDER BY Question.Q_Id DESC">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="Q_active" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="width: 1px">&nbsp;</td>
    </tr>
</table>
</asp:Content>

