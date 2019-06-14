<%@ Page Title="" Language="C#" MasterPageFile="~/SignW.Master" AutoEventWireup="true" CodeBehind="allFeed.aspx.cs" Inherits="DormFinal1.allFeed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="header-w3ls">
            Feedback Details</h1>
        <form id="form1" runat="server">
            <div class="main">
            
            <asp:GridView ID="GridView1" runat="server" 
                        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        DataSourceID="SqlDataSource1" Height="379px" Width="430px" 
                    DataKeyNames="Mail">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" 
                                SortExpression="Name">
                            </asp:BoundField>
                            <asp:BoundField DataField="Mail" HeaderText="Mail" 
                                SortExpression="Mail" ReadOnly="True" />
                            <asp:BoundField DataField="Review" HeaderText="Review" 
                                SortExpression="Review" />
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
                        
                    SelectCommand="SELECT [Name], [Mail], [Review] FROM [Feedback] ORDER BY [Fid]">
                    </asp:SqlDataSource>
                <br />
            </div>
            </form>
            </body>
            </html>                
</asp:Content>
