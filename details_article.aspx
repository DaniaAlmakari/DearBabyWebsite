<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="details_article.aspx.cs" Inherits="details_article" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register src="Add_Comment.ascx" tagname="Add_Comment" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td class="modal-lg" style="width: 914px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td class="modal-lg" colspan="2" dir="rtl">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="art_Id" DataSourceID="SqlDataSource_Articles" Width="100%">
                    <ItemTemplate>
                        <table dir="rtl" style="width: 100%; text-align: right;">
                            <tr>
                                <td rowspan="4" style="width: 37px; vertical-align: top;">&nbsp;</td>
                                <td style="width: 946px">
                                    <h1 style="text-align: center">
                                        <asp:Label ID="Label1" runat="server" ForeColor="#0066FF" style="font-size: xx-large" Text='<%# Eval("title") %>'></asp:Label>
                                    </h1>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 946px">
                                    <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl='<%# Eval("art_Id", "GetImageFromDB.aspx?Id={0}&w=450") %>'>HyperLink</asp:HyperLink>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 25px; width: 946px;">
                             
                                    <asp:Label ID="Label2" runat="server" TextMode="MultiLine" style="color: #000000; font-size: large" Text='<%# Eval("details") %>' BorderStyle="None"></asp:Label>
                                    <br />
                                </td>
                                <td style="height: 25px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 946px">
                                    <asp:Label ID="Label3" runat="server" style="color: #666666; font-size: medium" Text='<%# Eval("art_date") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource_Articles" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT [art_Id], [details], [art_date], [art_img], [title] FROM [Articles] WHERE ([art_Id] = @art_Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="art_Id" QueryStringField="Id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td class="modal-lg" style="width: 914px">&nbsp;</td>
            <td dir="rtl">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 192px; width: 282px"></td>
            <td style="height: 192px; width: 914px">
                <uc1:Add_Comment ID="Add_Comment1" runat="server" />
            </td>
            <td style="height: 192px"></td>
        </tr>
        <tr>
            <td style="width: 282px">&nbsp;</td>
            <td class="modal-lg" style="width: 914px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
<div class="what">
    <div class="container">
        <div class="what-main">
            <%--<div class="col-md-8 what-main-left">--%>
                <div class="what-top heading">
						<h3 dir="rtl">اقرأي أيضاً: </h3>
				</div>
                <div class="what-bottom">
                    <asp:DataList ID="DataList2" runat="server" DataKeyField="art_Id" DataSourceID="SqlDataSource_isother" HorizontalAlign="Right" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                        <ItemTemplate>
                            <table dir="rtl" style="width:100%; text-align: right;">
                                <tr>
                                    <td style="height: 22px; width: 477px; vertical-align: top;">
                                        <asp:Label ID="Label4" runat="server" style="color: #FF8080; font-weight: 700; font-size: medium" Text='<%# Eval("title") %>'></asp:Label>
                                    </td>
                                    <td style="height: 22px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="height: 42px; width: 477px;">
                                        <asp:Label ID="Label5" runat="server" style="font-size: medium; color: #999999; text-align: center;" Text='<%# Eval("description") %>'></asp:Label>
                                        &nbsp;</td>
                                    <td style="height: 42px"></td>
                                </tr>
                                <tr>
                                    <td class="modal-lg" style="width: 477px; height: 69px;">
                                        <div class="w-btn wt-btn">
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("art_Id", "details_article.aspx?Id={0}") %>'>قراءة المزيد</asp:HyperLink>
                                        </div>
                                    </td>
                                    <td style="height: 69px"></td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource_isother" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT [art_Id], [title], [description], [is_other] FROM [Articles] WHERE ([is_other] = @is_other) ORDER BY [art_Id]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="true" Name="is_other" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            <%--</div>--%>
        </div>
    </div>
</div>
</asp:Content>

