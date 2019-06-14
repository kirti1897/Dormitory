<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="nighout.aspx.cs" Inherits="DormFinal1.nighout" %>
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
            Nightout Form</h1>
        <form id="form1" runat="server">
        <%--<div class="hotel-left-w3ls">
            <h2>
                Personal Details</h2>--%>
            <div class="main">
                <div class="form-left-to-w3l">
                <br />
                <asp:Label ID="Lbl1" runat="server" Text="Name" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="Lbl2" runat="server" Text="Email " Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br />
                <asp:Label ID="Lbl3" runat="server" Text="Phone Number" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br />
                <asp:Label ID="Lbl4" runat="server" Text="Parent's Ph. Number" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br />
                <asp:Label ID="Lbl5" runat="server" Text="From Date" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br /><br />
                <asp:Label ID="Lbl6" runat="server" Text="To Date" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br /><br /><br />
                <asp:Label ID="Lbl7" runat="server" Text="Purpose of Leave" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br /><br />
                <asp:Label ID="Lbl8" runat="server" Text="Location of Leave" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btnForm" 
                        onclick="btnSend_Click"></asp:Button>
                </div>
                <div class="form-right-to-w3ls">
                <br />
                <asp:Label ID="lbname" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br />
                <asp:Label ID="lbmail" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br />
                <asp:Label ID="lbph" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbPph" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br />
                <asp:TextBox ID="fDate" runat="server"  Height="45px" Width="430px" 
                        AutoCompleteType="Disabled" CssClass="padd" TextMode="SingleLine"></asp:TextBox>
                <asp:RegularExpressionValidator ID="reExp1" runat="server" 
                        ControlToValidate="fDate" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                        ErrorMessage="Invalid date format." ValidationGroup="Group2" Display="Dynamic" 
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" 
                        ForeColor="#FF5050"></asp:RegularExpressionValidator>
                <br /><br /><br />
                <asp:TextBox ID="tDate" runat="server"  Height="45px" Width="430px" 
                        AutoCompleteType="Disabled" CssClass="padd" TextMode="SingleLine"></asp:TextBox>
                <asp:RegularExpressionValidator ID="reExp2" runat="server" 
                        ControlToValidate="tDate" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
                        ErrorMessage="Invalid date format." ValidationGroup="Group2" Display="Dynamic" 
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" 
                        ForeColor="#FF5050"></asp:RegularExpressionValidator>
                <br /><br /><br />
                <asp:TextBox ID="Pur" runat="server"  Height="45px" Width="430px" 
                        AutoCompleteType="Disabled" TextMode="MultiLine" CssClass="padd"></asp:TextBox>
                <br /><br /><br />
                <asp:TextBox ID="Loc" runat="server"  Height="45px" Width="430px" AutoCompleteType="Disabled"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Lable1" runat="server"  Height="45px" Font-Size="Medium"></asp:Label>
                <div class="clear">
                    </div>
                </div>
            </div>
        </div>
        </form>
       </body>
    </html>
</asp:Content>
