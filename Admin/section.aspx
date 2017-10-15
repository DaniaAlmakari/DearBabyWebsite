<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="section.aspx.cs" Inherits="Admin_Section" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style9 {
            width: 550px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
            }
        .auto-style12 {
            text-align: center;
            width: 250px;
        }
    .auto-style21 {
        text-align: center;
        width: 104px;
        font-weight: 700;
        height: 39px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table dir="rtl" style="width:100%;">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">نوع القسم:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_name" runat="server" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">صورة للقسم:</td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileImage" runat="server" />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="69px" Visible="False" Width="93px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">وصف مختصر:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_des" runat="server" TextMode="MultiLine" Width="406px" Height="70px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="Button_insert" runat="server" OnClick="Button_insert_Click" Text="اضافة" Width="82px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="Lbl_Msg" runat="server" ForeColor="#009933"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="3">
                <hr />
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="3">
                <strong>الأقسام</strong></td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Sec_Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderText="نوع القسم" SortExpression="Sec_name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Sec_name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Sec_Id", "section.aspx?Id={0}") %>' style="color: #0000FF" Text='<%# Eval("Sec_name") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Sec_des" HeaderText="المختصر" SortExpression="Sec_des" />
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Update" Text="Update" />
                                &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;هل تريد الحذف ؟&quot;)" Text="حذف" Width="51px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" DeleteCommand="DELETE FROM [Section] WHERE [Sec_Id] = @original_Sec_Id AND (([Sec_name] = @original_Sec_name) OR ([Sec_name] IS NULL AND @original_Sec_name IS NULL)) AND (([Sec_des] = @original_Sec_des) OR ([Sec_des] IS NULL AND @original_Sec_des IS NULL))" InsertCommand="INSERT INTO [Section] ([Sec_name], [Sec_des]) VALUES (@Sec_name, @Sec_des)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Sec_Id], [Sec_name], [Sec_des] FROM [Section] ORDER BY [Sec_Id] DESC" UpdateCommand="UPDATE [Section] SET [Sec_name] = @Sec_name, [Sec_des] = @Sec_des WHERE [Sec_Id] = @original_Sec_Id AND (([Sec_name] = @original_Sec_name) OR ([Sec_name] IS NULL AND @original_Sec_name IS NULL)) AND (([Sec_des] = @original_Sec_des) OR ([Sec_des] IS NULL AND @original_Sec_des IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Sec_Id" Type="Int32" />
                        <asp:Parameter Name="original_Sec_name" Type="String" />
                        <asp:Parameter Name="original_Sec_des" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Sec_name" Type="String" />
                        <asp:Parameter Name="Sec_des" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Sec_name" Type="String" />
                        <asp:Parameter Name="Sec_des" Type="String" />
                        <asp:Parameter Name="original_Sec_Id" Type="Int32" />
                        <asp:Parameter Name="original_Sec_name" Type="String" />
                        <asp:Parameter Name="original_Sec_des" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

