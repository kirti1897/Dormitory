<%@ Page Title="" Language="C#" MasterPageFile="~/SiteForgot.Master" AutoEventWireup="true" CodeBehind="chPass.aspx.cs" Inherits="DormFinal1.chPass" %>
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
                <asp:TextBox ID="password" runat="server" placeholder="Password" Height="45px" Width="430px"
                        CssClass="pass" TextMode="SingleLine" ></asp:TextBox>
               <asp:CustomValidator ID="cuVal1" runat="server" ErrorMessage="Characters & Number only with 8 chars length"
                            ControlToValidate="password" Display="Dynamic" ForeColor="Red" Style="font-size: medium"
                            SetFocusOnError="True" Font-Bold="True" Font-Italic="True" Font-Names="times new roman" OnServerValidate="checkPass">
               </asp:CustomValidator><br /><br /><br />
               <asp:TextBox ID="conPass" runat="server" placeholder="Confirm Password" Height="45px"
                        Width="430px" EnableViewState="False" CssClass="pass" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reVal6" runat="server" ErrorMessage="*" ControlToValidate="conPass" ForeColor="#FF5050"
                            Style="font-size: xx-large" Font-Bold="True" Font-Italic="True" Font-Names="times new roman"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cuVal3" runat="server" ErrorMessage="Password doesn't match"
                        ControlToCompare="password" ForeColor="#FF5050" ControlToValidate="conPass" Display="Dynamic"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" SetFocusOnError="True"></asp:CompareValidator>
                   <br /><br /><br />
                <asp:Button ID="btnCh" runat="server" Text="Change" Width="151px" 
                        CssClass="btnForm" onclick="btnCh_Click"></asp:Button>
                <asp:Label ID="Label1" runat="server" Text=" " Font-Bold="True" 
                    Font-Italic="True" Font-Names="Times New Roman" Font-Size="Medium" 
                    ForeColor="#0033CC"></asp:Label>
                </div>
            </div>
        </form>
      </body>
      </html>
</asp:Content>
