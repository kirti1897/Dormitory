<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hsin.aspx.cs" Inherits="DormFinal1.hsin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Sign-In</title>
</head>
<body>
    <div class="content">
    <div class="grid12">
	<h3>Hosteller Login</h3>
        
		<form id="form2" runat="server">
        <div class="hotel-left-w3ls">
            <div class="main">
                  <div class="form-left-to-w3l"> 
                        <asp:TextBox ID="lEmail" runat="server" placeholder="Enter Email for Sign in" Height="45px" Width="600px"
                        AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="reVal1"
                            runat="server" ErrorMessage="*" ControlToValidate="lEmail" ForeColor="#FF5050"
                            Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp1" runat="server" ErrorMessage="Enter Valid Email ID"
                        ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Style="font-size: medium" ControlToValidate="lEmail" Display="Dynamic" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" SetFocusOnError="True"></asp:RegularExpressionValidator><br /> 
                    <asp:TextBox ID="password" runat="server" placeholder="Password" Height="45px" Width="600px"
                        CssClass="pass" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reVal2"
                            runat="server" ErrorMessage="*" ControlToValidate="password" ForeColor="#FF5050"
                            Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator><br /><br /><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnStudent" runat="server" Text="Student Login" Width="180px"
                            CssClass="btnForm" Height="58px" onclick="btnStudent_Click"></asp:Button><br /><br />
                    <asp:Label ID="Lab1" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Lab2" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Lab3" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Lab4" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="Lab5" runat="server" Text="Forgot Password??" Font-Bold="True" Font-Italic="True" Font-Names="Times NEw Roman" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
                    <asp:HyperLink ID="hyperLn1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Tmew NEw Roman" 
                    NavigateUrl="~/forgotHt.aspx" Font-Size="Large" ForeColor="#3333CC">Click Here</asp:HyperLink>
            </div>
            </div>
        </div>
        </form>
        </div>
       </div>
</body>
</html> 
</asp:Content>
