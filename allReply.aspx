<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="allReply.aspx.cs" Inherits="DormFinal1.allReply" %>
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
            Notification Section</h1>
        <form id="form1" runat="server">
            <div class="hotel-left-w3ls">
            <h2>
                Reply Details</h2>
            <div class="main">
                <div class="form-left-to-w3l">
                    <div class="hotel-left-w3ls">
                        <h4>All Reply Details</h4>
                    </div><br /> <br />
                    <asp:GridView ID="GridView1" runat="server" 
                        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        DataSourceID="SqlDataSource1" Height="195px" Width="434px">
                        <Columns>
                            <asp:BoundField DataField="replyby" HeaderText="replyby" 
                                SortExpression="replyby">
                            </asp:BoundField>
                            <asp:BoundField DataField="message" HeaderText="message" 
                                SortExpression="message" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <br /><br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LatestUpdateConnectionString %>" 
                        
                        SelectCommand="SELECT [replyby], [message] FROM [Reply] ORDER BY [reId] DESC"></asp:SqlDataSource>
            </div>
            </div>
            </div>
        </form>
      </body>
      </html>
</asp:Content>
