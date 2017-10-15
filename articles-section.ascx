<%@ Control Language="C#" AutoEventWireup="true" CodeFile="articles-section.ascx.cs" Inherits="articles_section" %>


<style type="text/css">
    .auto-style2 {
        height: 46px;
    }
    .auto-style3 {
        width: 13px;
    }
    .auto-style4 {
        height: 31px;
    }
</style>



<asp:DataList ID="DataList1" runat="server" DataKeyField="Sec_Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" style="text-align: center" Width="100%">
    <ItemTemplate>
        <table style="width: 100%;">
            <tr>
                <td colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" NavigateUrl='<%# Eval("Sec_Id", "ViewArticlesBySection.aspx?Id={0}") %>' style="font-size: x-large" Text='<%# Eval("Sec_name") %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Eval("Sec_Id", "GetImgSection.aspx?Id={0}&w=300") %>'>HyperLink</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2" dir="rtl">
                    <p style="vertical-align: bottom">
                        <asp:Label ID="Label1" runat="server" ForeColor="Silver" style="font-size: small" Text='<%# Eval("Sec_des") %>'></asp:Label>
                    </p>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT * FROM [Section] ORDER BY [Sec_Id]"></asp:SqlDataSource>



