<%@ Page Title="" Language="C#" MasterPageFile="~/SignW.Master" AutoEventWireup="true" CodeBehind="detailsS.aspx.cs" Inherits="DormFinal1.detailsS" %>
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
            Students Details</h1>
        <form id="form1" runat="server">
            <div class="main">
            <div class="form-left-to-w3l">
            <asp:GridView ID="GridView1" runat="server" 
                        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        DataSourceID="SqlDataSource1" Height="531px" Width="699px" 
                    DataKeyNames="Han">
                        <Columns>
                            <asp:BoundField DataField="Hn" HeaderText="Hn" 
                                SortExpression="Hn">
                            </asp:BoundField>
                            <asp:BoundField DataField="Hln" HeaderText="Hln" 
                                SortExpression="Hln" />
                            <asp:BoundField DataField="Hph" HeaderText="Hph" SortExpression="Hph" />
                            <asp:BoundField DataField="Hem" HeaderText="Hem" SortExpression="Hem" />
                            <asp:BoundField DataField="Had" HeaderText="Had" SortExpression="Had" />
                            <asp:BoundField DataField="Han" HeaderText="Han" ReadOnly="True" 
                                SortExpression="Han" />
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
                        ConnectionString="<%$ ConnectionStrings:DormitoryConnectionString %>" 
                        SelectCommand="SELECT [Hn], [Hln], [Hph], [Hem], [Had], [Han] FROM [Register1] ORDER BY [Hid]">
                    </asp:SqlDataSource>
                <br />
                </div>
                <div class="form-right-to-w3ls">
               
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Names="Times New Roman" Font-Size="Larger" ForeColor="#000066" 
                    Text="Enter Adhar Number of 
                          Student for details"></asp:Label>
                <br /><br /><br /><br /><br />
                <asp:TextBox ID="uid" runat="server" placeholder="Aadhar Number" Height="45px" Width="230px"
                        MaxLength="12" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reExp5" runat="server" ErrorMessage="Enter Valid Aadhar Number"
                        ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" ControlToValidate="uid" ValidationExpression="(?:[+]\s*91|0)?[3456789](?:\s*\d){11}"
                        Display="Dynamic"></asp:RegularExpressionValidator><br />
                    <br />
                    <br />
                    <asp:Button ID="btnShow" runat="server" Text="Show" Width="122px" 
                        CssClass="btnForm" onclick="btnShow_Click" Height="90px">
                    </asp:Button>
                </div>
            </div>
        </form>
    </body>
    </html>
</asp:Content>
