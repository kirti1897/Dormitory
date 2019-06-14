<%@ Page Title="" Language="C#" MasterPageFile="~/SignW.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DormFinal1._default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
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
           Warden Notification Section</h1>
        <form id="form1" runat="server">
        <div class="hotel-left-w3ls">
            <h2>
                Notification Details</h2>
            <div class="main">
                <div class="form-left-to-w3l">
                    <asp:Label ID="first" runat="server" Text="Welcome Here all!!" Font-Names="Times new roman" Font-Size="XX-Large"></asp:Label>
                    <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                            <asp:Panel ID="Panel1" runat="server" BackColor="#CC9900" BorderColor="#660066" 
                                    BorderStyle="Solid" CssClass="auto-style1" BorderWidth="5px" Height="230px" 
                                    Width="468px" Visible="true">
                                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Sent By:"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Font-Size="Large"></asp:Label>
                                <br />
                                <br /><br />
                                <asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#660066" 
                                    NavigateUrl="~/allNotification.aspx">View All Notification</asp:HyperLink>
                                </asp:Panel>
                                <asp:Timer ID="Timer1" runat="server" Interval="6000" ontick="Timer1_Tick"></asp:Timer>
                            </ContentTemplate>
                       </asp:UpdatePanel>
                       <br /><br /><br />
                </div>
                <div class="form-right-to-w3ls">
                    <table class="w-100" bgcolor="#FF9999" border="5px">
                        <tr>
                            <td class="style2" style="font-family:Times New Roman">
                                Type Reply here</td>
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
                                <asp:Button ID="btnSEnd" runat="server" Text="Send" Width="115px" 
                                    CssClass="btnForm" Height="55px" onclick="Button1_Click" />
                                <br />
                                <br />
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                <br /><br /><br />
                </div>
                </div>
            </div>
        </form>
        </body>
        </html>
</asp:Content>
