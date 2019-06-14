<%@ Page Title="" Language="C#" MasterPageFile="~/SignW.Master" AutoEventWireup="true" CodeBehind="nightW.aspx.cs" Inherits="DormFinal1.nightW" %>
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
                <br /><br /><br /><br />
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
                <br /><br /><br /><br />
                <asp:Label ID="Lbl6" runat="server" Text="To Date" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br />
                
                <asp:Label ID="Lbl7" runat="server" Text="Purpose of Leave" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br /><br />
                <asp:Label ID="Lbl8" runat="server" Text="Location of Leave" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="Lbl9" runat="server" Text="Status" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br />
                <asp:Button ID="btnSave" runat="server" Text="Approve" Width="119px" 
                        CssClass="btnForm" onclick="btnSave_Click"></asp:Button>
                 <br /><br />
                 <asp:Label ID="lEmail" runat="server" Text="" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Larger"></asp:Label>
                <br /><br /><br />
                 <asp:Label ID="lbShow" runat="server" Text="" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium"></asp:Label>
                 <br />
                </div>
                <div class="form-right-to-w3ls">
                <br />
                <asp:Label ID="lbname" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbmail" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbph" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbPph" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbfdate" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbtdate" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbpur" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Label ID="lbloc" runat="server"  Height="45px" Width="430px" Font-Size="Medium" Font-Bold="True"></asp:Label>
                <br /><br /><br />
                <asp:Button ID="btnRem" runat="server" Text="Deny" Width="129px" 
                        CssClass="btnForm" onclick="btnRem_Click"></asp:Button>
                <br /><br /><br />
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#660066" 
                                    NavigateUrl="~/allNight.aspx">View All Nightout Details</asp:HyperLink>
                <div class="clear">
                    </div>
                </div>
            </div>
        </div>
        </form>
       </body>
    </html>

</asp:Content>
