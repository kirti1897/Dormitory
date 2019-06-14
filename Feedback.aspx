<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="DormFinal1.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Feedback</title>
</head>
 <body>
    <div class="content">
    <div class="grid12">
	<h3>Feedback Form</h3>
	<div class="main">
		<form id="form1" runat="server">
			<h5>Your Name</h5>
            <p>&nbsp;</p>
				<asp:TextBox ID="tName" runat="server" placeholder="Type here " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}"></asp:TextBox>
                <!--<input id="tName" type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">-->
			<asp:RequiredFieldValidator ID="reVal1" runat="server" ErrorMessage="*"
                    ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" 
                ControlToValidate="tName"></asp:RequiredFieldValidator>
			<h5>Email</h5>
                <asp:TextBox ID="tMail" runat="server" placeholder="Enter Mail Id " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reVal2" runat="server" ErrorMessage="*"
                    ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" 
                ControlToValidate="tMail"></asp:RequiredFieldValidator>
				<%--<input id="tMail" type="text" value="johnkeith@mail.com" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'johnkeith@mail.com';}" required="">--%>
			<h5>Your Review <span>( Tips and Guidelines ) </span> </h5>	
                <asp:TextBox ID="tRv" runat="server" placeholder="Review Here " TextMode="MultiLine" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}"></asp:TextBox>
				<asp:RequiredFieldValidator ID="reVal3" runat="server" ErrorMessage="*"
                    ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" 
                ControlToValidate="tRv"></asp:RequiredFieldValidator>
				<%--<textarea id="tReview" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type here';}" required="">Type here</textarea>--%>
            <asp:Button ID="btnSend" runat="server" Text="Send FeedBack" CssClass="btnform" 
                onclick="btnSend_Click"></asp:Button>
        </form>	
    </div>
    </div>
    </div>
 </body>
 </html>
</asp:Content>
