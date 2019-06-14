<%@ Page Title="" Language="C#" MasterPageFile="~/SiteForgot.Master" AutoEventWireup="true" CodeBehind="forgotWrn.aspx.cs" Inherits="DormFinal1.forgotWrn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Welcome Here</title>
    </head>
    <body>
        <h1 class="header-w3ls">
            Details</h1>
        <form id="form1" runat="server">
            <div class="main">
            <div class="form-left-to-w3l">
                <asp:TextBox ID="phNo" runat="server" Height="45px" Width="430px" MaxLength="10" PlaceHolder="Enter Your Mobile Number" AutoCompleteType="Disabled"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reVal4" runat="server" ErrorMessage="*" ControlToValidate="phNo" ForeColor="#FF5050"
                            Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator><br />
                          <asp:RegularExpressionValidator ID="reExp4" runat="server" ErrorMessage="Enter Valid Phone Number"
                             ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                             Font-Italic="True" Font-Names="times new roman" 
                             ControlToValidate="phNo" ValidationExpression="(?:[+]\s*91|0)?[789](?:\s*\d){9}"></asp:RegularExpressionValidator>
                <br /><br />
                <asp:Button ID="Send_OTP" runat="server" Height="55px" Text="Send OTP" 
                                        Width="160px"  CssClass="btnForm" 
                    onclick="Send_OTP_Click" />
                <br />
                <asp:Label ID="Lbl2" runat="server" Text="" Font-Bold="true" Font-Italic="true" Font-Names="Times New Roman" 
                 Font-Size="Large" ForeColor="BlueViolet" ></asp:Label>
            </div>
            <div class="form-right-to-w3ls">
                <asp:TextBox ID="Otext" runat="server" Height="45px" Width="430px" PlaceHolder="Enter OTP Number"></asp:TextBox>
                <br /><br /><br />
                <asp:Button ID="Verify_OTP" runat="server" Text="Verify_OTP" 
                    CssClass="btnForm"  Height="55px"
                                        Width="160px" onclick="Verify_OTP_Click" />
            </div><br /><br />
            <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" Font-Italic="true" Font-Names="Times New Roman" 
                 Font-Size="Large" ForeColor="BlueViolet" ></asp:Label>
            <asp:Label ID="lbname" runat="server" Text="" Font-Bold="true" Font-Italic="true" Font-Names="Times New Roman" 
                 Font-Size="Large" ForeColor="BlueViolet" ></asp:Label>
            <asp:Label ID="lbpass" runat="server" Text="" Font-Bold="true" Font-Italic="true" Font-Names="Times New Roman" 
                 Font-Size="Large" ForeColor="BlueViolet" ></asp:Label>
            <div class="clear">
            </div>
           </div>
        </form>
      </body>
    </html>
</asp:Content>
