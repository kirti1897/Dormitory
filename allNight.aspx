<%@ Page Title="" Language="C#" MasterPageFile="~/SignW.Master" AutoEventWireup="true" CodeBehind="allNight.aspx.cs" Inherits="DormFinal1.allNight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="header-w3ls">
            Nightout Details</h1>
        <form id="form1" runat="server">
            <div class="main">
            
            <asp:GridView ID="GridView1" runat="server" 
                        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        DataSourceID="SqlDataSource1" Height="531px" Width="655px">
                        <Columns>
                            <asp:BoundField DataField="Nname" HeaderText="Nname" 
                                SortExpression="Nname">
                            </asp:BoundField>
                            <asp:BoundField DataField="Nmail" HeaderText="Nmail" 
                                SortExpression="Nmail" />
                            <asp:BoundField DataField="Nph" HeaderText="Nph" 
                                SortExpression="Nph" />
                            <asp:BoundField DataField="NPph" HeaderText="NPph" SortExpression="NPph" />
                            <asp:BoundField DataField="Nfdate" HeaderText="Nfdate" 
                                SortExpression="Nfdate" />
                            <asp:BoundField DataField="Ntdate" HeaderText="Ntdate" 
                                SortExpression="Ntdate" />
                            <asp:BoundField DataField="Npur" HeaderText="Npur" SortExpression="Npur" />
                            <asp:BoundField DataField="Nloc" HeaderText="Nloc" SortExpression="Nloc" />
                            <asp:BoundField DataField="Nstatus" HeaderText="Nstatus" 
                                SortExpression="Nstatus" />
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
                        
                    
                    SelectCommand="SELECT [Nname], [Nmail], [Nph], [NPph], [Nfdate], [Ntdate], [Npur], [Nloc], [Nstatus] FROM [Nightout] ORDER BY [Nid]">
                    </asp:SqlDataSource>
</asp:Content>
