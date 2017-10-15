<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="ViewArticlesBySection.aspx.cs" Inherits="ViewArticlesBySection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="art_Id" DataSourceID="SqlDataSource_ArticlesBySection" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                    <ItemTemplate>
                        <table align="center" style="width:100%; text-align: center;">
                            <tr>
                                <td dir="rtl" style="font-weight: bold; height: 29px;">
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Eval("art_Id", "GetImageFromDB.aspx?Id={0}&w=300") %>'>HyperLink</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td dir="rtl" style="font-weight: bold">
                                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#FF8080" NavigateUrl='<%# Eval("art_Id", "details_article.aspx?Id={0}") %>' Text='<%# Eval("title") %>'></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td dir="rtl">
                                    <asp:Label ID="Label1" runat="server" ForeColor="#999999" Text='<%# Eval("description") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource_ArticlesBySection" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT [art_Id], [title], [description], [Sec_Id], [art_img] FROM [Articles] WHERE ([Sec_Id] = @Sec_Id) ORDER BY [art_Id] DESC">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Sec_Id" QueryStringField="Id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

