<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Add_Comment.ascx.cs" Inherits="Add_Comment" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<style type="text/css">
    .auto-style1 {
    }
    .auto-style2 {
        width: 847px;
        height: 36px;
        text-align: right;
    }
    .auto-style3 {
        height: 36px;
    }
    .auto-style7 {
    }
    .auto-style8 {
        color: #3366FF;
        font-size: large;
    }
    .auto-style9 {
        color: #3366FF;
        font-size: medium;
    }
    .auto-style10 {
        width: 847px;
    }
</style>
<table style="width:100%;">
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td dir="rtl" style="text-align: center" class="auto-style8"><strong>التعليقات:</strong></td>
    </tr>
    <tr>
        <td class="auto-style2" dir="rtl">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="com_Id" DataSourceID="SqlDataSource1" Width="90%">
                <ItemTemplate>
                    <table dir="rtl" style="width: 101%;">
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#FF8080" style="font-size: large" Text='<%# Eval("user_name") %>'></asp:Label>
                                :</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" style="font-size: medium" Text='<%# Eval("comment") %>'></asp:Label>
                            </td>
                            <td style="text-align: left; color: #808080">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("com_date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7" colspan="3">
                                <hr />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" SelectCommand="SELECT com_Id, user_name, comment, art_Id, com_date FROM comments WHERE (art_Id = @art_Id) AND (active = @active) ORDER BY com_Id DESC">
                <SelectParameters>
                    <asp:QueryStringParameter Name="art_Id" QueryStringField="Id" Type="Int32" />
                    <asp:Parameter DefaultValue="true" Name="active" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style3" dir="rtl" style="text-align: center"></td>
    </tr>
    <tr>
        <td class="auto-style1" dir="rtl" style="text-align: center" colspan="2" >
            <hr />
        </td>
    </tr>
    <tr>
        <td class="auto-style10" dir="rtl" style="text-align: center" >
            <asp:Label ID="Label_msg" runat="server" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
        </td>
        <td class="auto-style9" dir="rtl" style="text-align: center"><strong>أضيفي تعليق:</strong></td>
    </tr>
    <tr>
        <td class="auto-style10" dir="rtl">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource_comments" DefaultMode="Insert" GridLines="None" Height="50px" Width="100%" OnItemInserted="DetailsView1_ItemInserted">
                <Fields>
                    <asp:TemplateField HeaderText="الاسم" SortExpression="user_name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("user_name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("user_name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("user_name") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" ForeColor="#FF8080" />
                        <ItemStyle ForeColor="#333333" />
                    </asp:TemplateField>
                    <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="البريد الالكتروني" SortExpression="user_email">
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="البريد الالكتروني غير صحيح" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="user_email" Mode="ReadOnly" />
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="True" ForeColor="#FF8080" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="التعليق" SortExpression="comment">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("comment") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Height="115px" Text='<%# Bind("comment") %>' TextMode="MultiLine" Width="538px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <HeaderStyle Font-Bold="True" ForeColor="#FF8080" />
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="اضف التعليق"></asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="الغاء"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10">
            <asp:SqlDataSource ID="SqlDataSource_comments" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString_DearBaby %>" InsertCommand="INSERT INTO comments(user_name, user_email, comment, art_Id) VALUES (@user_name, @user_email, @comment, @art_Id)" SelectCommand="SELECT user_name, comment, user_email FROM comments WHERE (active = @active) AND (art_Id = @art_Id)">
                <InsertParameters>
                    <asp:Parameter Name="user_name" />
                    <asp:Parameter Name="user_email" />
                    <asp:Parameter Name="comment" />
                    <asp:QueryStringParameter Name="art_Id" QueryStringField="Id" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="active" />
                    <asp:Parameter Name="art_Id"  />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

