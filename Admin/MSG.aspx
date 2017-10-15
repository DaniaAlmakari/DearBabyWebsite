<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="MSG.aspx.cs" Inherits="Admin_MSG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style8" dir="rtl">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="msg_Id" DataSourceID="SqlDataSource1" Width="100%">
                    <Columns>
                        <asp:CommandField DeleteText="حذف" ShowDeleteButton="True">
                        <ItemStyle Width="8%" />
                        </asp:CommandField>
                        <asp:BoundField DataField="msg" HeaderText="الرسالة" SortExpression="msg">
                        <ItemStyle Width="40%" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="اسم المرسل" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="البريد الالكتروني" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="الهاتف" SortExpression="phone" />
                        <asp:BoundField DataField="msg_date" HeaderText="تاريخ الرسالة" SortExpression="msg_date">
                        <ItemStyle Width="10%" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [MSG] WHERE [msg_Id] = @original_msg_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([msg] = @original_msg) OR ([msg] IS NULL AND @original_msg IS NULL))" InsertCommand="INSERT INTO [MSG] ([name], [email], [phone], [msg]) VALUES (@name, @email, @phone, @msg)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT msg_Id, name, email, phone, msg, msg_date FROM MSG ORDER BY msg_Id DESC" UpdateCommand="UPDATE [MSG] SET [name] = @name, [email] = @email, [phone] = @phone, [msg] = @msg WHERE [msg_Id] = @original_msg_Id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([msg] = @original_msg) OR ([msg] IS NULL AND @original_msg IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_msg_Id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_msg" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="msg" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="msg" Type="String" />
                        <asp:Parameter Name="original_msg_Id" Type="Int32" />
                        <asp:Parameter Name="original_name" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_phone" Type="String" />
                        <asp:Parameter Name="original_msg" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

