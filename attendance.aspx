<%@ Page Title="" Language="C#" MasterPageFile="~/SignW.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="DormFinal1.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .style2
        {
            width: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>Welcome Here</title>
</head>
<body>
    <h1 class="header-w3ls">
		         Attendance Section</h1>
	
		<form id="form1" runat="server">
			
				
                
					<h2>Hosteller Attendance </h2>
                   
					<div class="main">
                <div class="ntc">
                        
                        <table border="4" cellspacing="1" class="auto-style1">
                            <tr>
                                <td>

                                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Select Class"  
                                        Height="25px" Width="207px"></asp:Label>
                                </td>
                                <td class="style2">
                                
&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="SDS1" DataTextField="class" DataValueField="class" 
                                        Height="50px" Width="150px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="attenbtn" runat="server" Height="49px" 
                                        onclick="attenbtn_Click" Text="Mark Attendance" Width="208px" 
                        CssClass="btnForm"/>
                                </td>
                            </tr>
                        </table>
                        <asp:Label ID="Label2" runat="server" Font-Size="Large"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SDS2" Height="192px" Width="596px">
                            <Columns>
                                <asp:BoundField DataField="hiD" HeaderText="hiD" SortExpression="hiD" >
                                </asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="name" 
                                    SortExpression="name">
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Mark Attendance">
                                    <ItemTemplate>
                                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Present" 
                                            GroupName="gp" />
                                        &nbsp;&nbsp;&nbsp; &nbsp;
                                        <asp:RadioButton ID="RadioButton2" runat="server" Checked="True" 
                                            Text="Absent" GroupName="gp" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />


                        <asp:Button ID="Button1" runat="server" Height="51px" onclick="Button1_Click" 
                            Text="Save Attendance"   Width="204px" 
                        CssClass="btnForm"/>
                        <br />
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <br />
                        <asp:SqlDataSource ID="SDS1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DormitoryConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [class] FROM [HostellerDetails]" 
                            onselecting="SDS1_Selecting">
                        </asp:SqlDataSource>
                        <br />
                        <asp:SqlDataSource ID="SDS2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DormitoryConnectionString %>" 
                            onselecting="SDS2_Selecting" 
                            
                            
                            
                            
                            
                            SelectCommand="SELECT [hiD], [name] FROM [HostellerDetails] WHERE ([class] = @class)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="class" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                      
                    </div>
                    </form>
</body>
</html>
</asp:Content>