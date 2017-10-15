<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Replay.ascx.cs" Inherits="Doctors_Replay" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1" dir="rtl">
    <tr>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="80%">
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>

