<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register src="articles-section.ascx" tagname="articles" tagprefix="uc1" %>

<%@ Register src="Main_Atricle.ascx" tagname="Main_Atricle" tagprefix="uc2" %>
<%@ Register Src="~/Advice.ascx" TagPrefix="uc1" TagName="Advice" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <uc1:articles ID="articles1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
   </div>

<div class="welcome" id="welcome">
    <div class="abt">
        <div class="container">
            <div class="welcom-main">
                
                <uc2:Main_Atricle ID="Main_Atricle1" runat="server" />
                
            </div>
        </div>
    </div>
</div>

<div class="free">
		<div class="container">
			<div class="free-top">
                <uc1:Advice runat="server" ID="Advice" />
            </div>
        </div>
</div>

<div class="future">
		<div class="container">
			<div class="future-top heading">
				<h3>حياتك مع الأمومة</h3>
				<p dir="rtl">طبعنا كنساء نستطيع القيام بعدة مهام في نفس الوقت، فكل ما عليكي هو محاولة التنظيم و التخطيط للمستقبل، لتتمكني من تنفيذ مهام أكثر في وقت أقل. التنظيم عامة أسلوب حياة وخبرة يمكنك تعلمها و إكتسابها. وإذا أتقنتي التنظيم فتوترك سيقل وتصبحين قادرة على بذل الوقت والمجهود على أهم شئ في حياتك: وقت سعيد مع إسرتك.  ومن يدري، ربما تستطيعين أن تنظمي وقت كافي لإستقطاع ٣٠ دقيقة لنفسك</p>
            </div>
		</div>
<div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource_h" HorizontalAlign="Center" RepeatColumns="3" style="text-align: center" Width="100%">
        <ItemTemplate>
            <table  dir="rtl" align="center">
                <tr>
                    <td dir="rtl" style="width: 210px; text-align: center;">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Aharoni" ForeColor="#FF8080" NavigateUrl='<%# Eval("art_Id", "details_article.aspx?Id={0}") %>' Text='<%# Eval("title") %>'></asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 210px; vertical-align: middle; text-align: center;">
                        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl='<%# Eval("art_Id", "GetImageFromDB.aspx?Id={0}&w=300") %>'>[HyperLink3]</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource_h" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT [title], [art_img], [in_home], [art_Id] FROM [Articles] WHERE ([in_home] = @in_home)">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="in_home" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</div>

</asp:Content>

