<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_home.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--contact-starts-->
	<div class="contact" id="contact">
		<div class="container">
			<div class="contact-top heading">
				<h2>تواصلي معنا</h2>
				<p dir="rtl">أهلا بكِ في موقع "طفلي العزيز", لاتترددي بالتواصل مع فريق العمل ستجدينه في الخدمة دائماً</p>
                <asp:Label ID="Lbl_Msg" runat="server" Text="" style="color: #3366FF; font-weight: 700"></asp:Label>
            </div>
			<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*يرجى التأكد من صحة البريد الالكتروني" ControlToValidate="TextBox_email" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* يرجى ادخال الرسالة" ControlToValidate="TextBox_MSG" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* يرجى ادخال الاسم" ControlToValidate="TextBox_name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* يرجى ادخال البريد الالكتروني" ControlToValidate="TextBox_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator> 
            <div class="contact-bottom" dir="rtl">
                <asp:TextBox ID="TextBox_name" Text="الاسم"  runat="server" ToolTip="الاسم" ></asp:TextBox>
                <asp:TextBox ID="TextBox_email" Text="البريد الالكتروني" runat="server" ToolTip="البريد الالكتروني"></asp:TextBox>
                <asp:TextBox ID="TextBox_phone" Text="الهاتف" runat="server" ToolTip="رقم الهاتف"></asp:TextBox>
                <asp:TextBox ID="TextBox_MSG"   Text="الرسالة..." runat="server" TextMode="MultiLine" ToolTip="الرسالة"></asp:TextBox>
                
				<%--<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" />
				<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" />
				<input type="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" />
				<textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>--%>
				<div class="submit-btn">
                        <asp:Button ID="Button_send" runat="server" Text="ارسال" OnClick="Button_send_Click" />		
				</div>
			</div>
		</div>
	</div>	
	<!--contact-ends-->
	<!--map-starts-->
	<div class="map">
			<div class="map-top">
				<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d47753.14235372253!2d-87.8390792!3d41.57851990000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1skohl&#39;s!5e0!3m2!1sen!2sin!4v1436335323316" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
	</div>	
	<!--map-ends-->
</asp:Content>

