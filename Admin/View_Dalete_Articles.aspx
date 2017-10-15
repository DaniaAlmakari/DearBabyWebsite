<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="View_Dalete_Articles.aspx.cs" Inherits="Admin_View_Dalete_Articles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table dir="rtl" style="width: 100%;">
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="art_Id,Expr1" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%" style="text-align: center">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;هل تريد الحذف ؟&quot;)" Text="حذف"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="art_Id" DataNavigateUrlFormatString="Add_Edit_Articles.aspx?Id={0}" DataTextField="title" HeaderText="العنوان" />
                    <asp:BoundField DataField="description" HeaderText="المختصر" SortExpression="description">
                    <ItemStyle Width="30%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="art_date" HeaderText="تاريخ المقال" SortExpression="art_date">
                    <ItemStyle Width="10%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Sec_name" HeaderText="قسم المقال" SortExpression="Sec_name">
                    <ItemStyle Width="20%" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="is_main" HeaderText="في الصفحة الرئيسية" SortExpression="is_main">
                    <ItemStyle Width="10%" />
                    </asp:CheckBoxField>
                    <asp:CheckBoxField DataField="in_home" HeaderText="مقال رئيسي" SortExpression="in_home">
                    <ItemStyle Width="10%" />
                    </asp:CheckBoxField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [Articles] WHERE [art_Id] = @original_art_Id " OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Articles.art_Id, Articles.title, Articles.description, Articles.details, Articles.art_date, Articles.is_main, Articles.Sec_Id, Articles.in_home, Articles.art_img, Section.Sec_name, Section.Sec_Id AS Expr1 FROM Articles INNER JOIN Section ON Articles.Sec_Id = Section.Sec_Id ORDER BY Articles.art_Id DESC">
                <DeleteParameters>
                    <asp:Parameter Name="original_art_Id" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

