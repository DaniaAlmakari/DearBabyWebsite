<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Main_Atricle.ascx.cs" Inherits="Main_Atricle" %>
<style type="text/css">
    .auto-style3 {
        width: 743px;
        text-align: center;
    }
</style>

<asp:DataList ID="DataList1" runat="server" DataKeyField="art_Id" DataSourceID="SqlDataSource_mainArticles" style="text-align: center" Width="100%">
    <ItemTemplate>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("art_Id", "details_article.aspx?Id={0}") %>' style="font-weight: 700; font-size: xx-large" Text='<%# Eval("title") %>'></asp:HyperLink>
                </td>
                <td rowspan="2" style="text-align: right">
                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Eval("art_Id", "GetImageFromDB.aspx?Id={0}&w=500") %>'>HyperLink</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" ForeColor="#999999" style="text-align: center; font-size: medium;" Text='<%# Eval("description") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource_mainArticles" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT [art_Id], [title], [description], [art_img], [is_main] FROM [Articles] WHERE ([is_main] = @is_main)">
    <SelectParameters>
        <asp:Parameter DefaultValue="true" Name="is_main" Type="Boolean" />
    </SelectParameters>
</asp:SqlDataSource>

