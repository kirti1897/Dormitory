<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="addNoti.aspx.cs" Inherits="DormFinal1.addNoti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .style1
        {
            width: 130px;
        }
        .style2
        {
            width: 130px;
            height: 77px;
        }
        .style3
        {
            height: 77px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Welcome Here</title>
    </head>
    <body>
        <h1 class="header-w3ls">
            Notification Information</h1>
        <form id="form1" runat="server">
        <div class="hotel-left-w3ls">
            <h2>
                Details</h2>
            <div class="main">
                <div class="form-left-to-w3l">
                    <table class="w-100" bgcolor="#FF9999" border="5px">
                        <tr>
                            <td class="style2" style="font-family:Times New Roman">
                                Type Text</td>
                            <td class="style3">
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" Height="150px" TextMode="MultiLine" 
                                    Width="390px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                
                                <asp:Button ID="Button1" runat="server" Text="Send" Width="115px" 
                                    CssClass="btnForm" Height="55px" onclick="Button1_Click" />
                                <br />
                                <br />
                                <asp:Label ID="Lbl3" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br /><br /><br />
                </div>
                <div class="form-right-to-w3ls">
                    <asp:Label ID="first" runat="server" Text="Complaint & Reply Section!!" Font-Names="Times new roman" Font-Size="XX-Large"></asp:Label>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" BackColor="#CC66FF" BorderColor="Red" 
                                    BorderStyle="Solid" CssClass="auto-style1" BorderWidth="5px" Height="230px" 
                                    Width="468px" Visible="true">
                                <asp:Label ID="Label3" runat="server" Font-Size="Large" ></asp:Label>
                                <asp:Label ID="Label4" runat="server" Font-Size="Large"></asp:Label>
                                <br /><br />
                                <asp:Label ID="Label2" runat="server" Font-Size="Large"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#660066" 
                                    NavigateUrl="~/allReply.aspx">View All Reply</asp:HyperLink>
                                </asp:Panel>
                                <asp:Timer ID="Timer1" runat="server" Interval="6000" ontick="Timer1_Tick"></asp:Timer>
                            </ContentTemplate>
                       </asp:UpdatePanel>
                <br /><br /><br />
                </div>
            </div>
        </form>
        </body>
        </html>
</asp:Content>
