<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  class="nav-justified" dir="rtl">
        <tr>
            <td style="text-align: right; width: 135px; height: 44px;"></td>
            <td style="text-align: right; width: 424px; height: 44px; font-size: large;">
                البحث في موقع <span style="color: #FF8080">&quot;طفلي العزيز&quot;</span> ...</td>
            <td style="height: 44px">
            </td>
            <td style="height: 44px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 135px">&nbsp;</td>
            <td style="text-align: right; width: 424px">
                <asp:TextBox ID="TextBox1" runat="server" Width="359px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" BorderColor="#FF8080" BorderStyle="Solid" OnClick="Button1_Click" Text="بحث" Width="98px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 135px; height: 44px;"></td>
            <td style="text-align: right; width: 424px; height: 44px;">
            </td>
            <td style="height: 44px">
            </td>
            <td style="height: 44px">
                &nbsp;</td>
        </tr>
        <tr dir="rtl" style="text-align: right">
            <td style="width: 135px">&nbsp;</td>
            <td colspan="2" dir="rtl">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="auto-style2"  style="width: 82px" rowspan="2">
                                    <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl='<%# Eval("art_Id", "GetImageFromDB.aspx?Id={0}&w=150") %>'>HyperLink</asp:HyperLink>
                                </td>
                                <td class="auto-style2" rowspan="2" style="width: 31px">&nbsp;</td>
                                <td>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("art_Id", "details_article.aspx?Id={0}") %>' Text='<%# Eval("title") %>'></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <hr />
                                </td>
                            </tr>
                        </table>
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td dir="rtl">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">&nbsp;</td>
            <td style="width: 424px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT title, description, art_Id, art_img FROM Articles WHERE (title LIKE @title)">
                    <SelectParameters>
                        <asp:Parameter Name="title" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

