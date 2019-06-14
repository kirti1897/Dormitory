<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="HDash.aspx.cs" Inherits="DormFinal1.HDash" %>
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
            </h1>
        <form id="form1" runat="server">
        <div class="hotel-left-w3ls">
            <h2>DashBoard</h2>
            <div class="main">
                <div class="form-left-to-w3l">
                    <br /><br /><br />
                    <div Style="position:relative;  top:50px;">
                    <img src="images/kirti11.jpg" /></div>
                    <br /><br /><br /><br />
                    
                                  </div>
                <div class="form-right-to-w3ls">
                    <br /><br /><br /><br />

  
                    <asp:Label ID="Lbl1" runat="server" Text="Name" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbname" runat="server"  Height="45px" Width="230px" Font-Size="Larger" Font-Bold="True"></asp:Label>
                    <br /><br />
                    <asp:Label ID="Lbl2" runat="server" Text="Email " Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbmail" runat="server"  Height="45px" Width="230px" Font-Size="Larger" Font-Bold="True"></asp:Label>
                    <br /><br />
                    <asp:Label ID="Lbl3" runat="server" Text="Phone Number" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Larger"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbph" runat="server"  Height="45px" Width="230px" Font-Size="Larger" Font-Bold="True"></asp:Label>
                    <br /><br /><br />
                    <asp:Button ID="btnChange" runat="server" Text="Change Password" CssClass="btnForm" 
                        onclick="btnChange_Click"></asp:Button>
                    <asp:Label ID="lMail" runat="server" Text="" Font-Bold="true" Font-Italic="true" Font-Names="Times New Roman" 
                            Font-Size="Large" ForeColor="BlueViolet" ></asp:Label>
                </div>
                <div class="clear">
                    </div>
                </div>
            </div>
        </form>
       </body>
    </html>
</asp:Content>
