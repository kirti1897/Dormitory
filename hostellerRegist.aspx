<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hostellerRegist.aspx.cs" Inherits="DormFinal1.hostellerRegist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HostellerRegi</title>
    <style type="text/css">
        .style1
        {
            width: 99%;
            margin-right: 19px;
            margin-top: 0px;
        }
        .style2
        {
            width: 689px;
            text-align: center;
            height: 677px;
        }
        .style3
        {
            height: 41px;
        }
        .style4
        {
            height: 35px;
        }
        .style5
        {
            height: 36px;
        }
        .style6
        {
            width: 272px;
            text-align: center;
        }
        .style7
        {
            height: 41px;
            width: 313px;
        }
        .style8
        {
            height: 35px;
            width: 313px;
        }
        .style9
        {
            height: 36px;
            width: 313px;
        }
        .style10
        {
            text-align: center;
        }
        .style11
        {
            text-align: center;
            height: 57px;
        }
        .style12
        {
            width: 272px;
            text-align: center;
            height: 57px;
        }
        .style13
        {
            text-align: center;
            height: 53px;
        }
        .style14
        {
            width: 272px;
            text-align: center;
            height: 53px;
        }
        .style15
        {
            text-align: center;
            height: 55px;
        }
        .style16
        {
            width: 272px;
            text-align: center;
            height: 55px;
        }
        .style17
        {
            text-align: center;
            height: 47px;
        }
        .style18
        {
            width: 272px;
            text-align: center;
            height: 47px;
        }
        .style21
        {
            text-align: center;
            height: 48px;
        }
        .style22
        {
            width: 272px;
            text-align: center;
            height: 48px;
        }
        .style23
        {
            height: 677px;
        }
        .style24
        {
            text-align: center;
            height: 49px;
        }
        .style25
        {
            width: 272px;
            text-align: center;
            height: 49px;
        }
        .style26
        {
            width: 100%;
            height: 46px;
        }
        .style27
        {
            height: 22px;
        }
    </style>
</head>
<body bgcolor="#ccccff" style="height: 98px; width: 1310px">
    <form id="form1" runat="server">
      <div class="content">
    <table cellspacing="1" class="style1">
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Image ID="Image1" runat="server" Height="129px" 
                    ImageUrl="~/imageslogin/imagesREgistration.jpg" style="margin-left: 0px" 
                    Width="435px" BorderStyle="Groove" />
                <table cellspacing="1" class="style1">
                    <tr>
                        <td class="style2">
                            <asp:Panel ID="Panel1" runat="server">
                                <table cellspacing="1" class="style1">
                                    <tr>
                                        <td class="style7">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label1" runat="server" Text="STUDENT NAME"></asp:Label>
                                        </td>
                                        <td class="style3">
                                            &nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="268px"></asp:TextBox>
                                            &nbsp;<br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            <asp:Label ID="Label2" runat="server" Text="STUDENT DOB"></asp:Label>
                                        </td>
                                        <td class="style4">
                                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                                BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                                Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                                                ShowGridLines="True" Width="220px">
                                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                <SelectorStyle BackColor="#FFCC66" />
                                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                                    ForeColor="#FFFFCC" />
                                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                            </asp:Calendar>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label3" runat="server" Text="ROOM NO"></asp:Label>
                                        </td>
                                        <td class="style5">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="65px">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            <asp:Label ID="Label4" runat="server" Text="DATE -OF-JOINING"></asp:Label>
                                        </td>
                                        <td class="style4">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Calendar ID="Calendar2" runat="server" Height="16px" Width="164px">
                                            </asp:Calendar>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            <asp:Label ID="Label5" runat="server" Text="APPROXIMATE TERM"></asp:Label>
                                        </td>
                                        <td class="style4">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox11" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style8">
                                            <asp:Label ID="Label6" runat="server" Text="EMAIL-ID"></asp:Label>
                                        </td>
                                        <td class="style4">
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style9">
                                            <asp:Label ID="Label7" runat="server" Text="STUDENT MOBILE NO."></asp:Label>
                                        </td>
                                        <td class="style5">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td class="style23">
                            <asp:Panel ID="Panel2" runat="server" Height="652px">
                                <table cellspacing="1" class="style1">
                                    <tr>
                                        <td class="style21">
                                            <asp:Label ID="Label8" runat="server" Text="PERMANENT ADDRESS"></asp:Label>
                                        </td>
                                        <td class="style22">
                                            <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style17">
                                            <asp:Label ID="Label9" runat="server" Text="WORKING INSTITUTE"></asp:Label>
                                        </td>
                                        <td class="style18">
                                            <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style15">
                                            <asp:Label ID="Label10" runat="server" Text="FATHER NAME"></asp:Label>
                                        </td>
                                        <td class="style16">
                                            <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style13">
                                            <asp:Label ID="Label11" runat="server" Text="FATHER MOBILE NO."></asp:Label>
                                        </td>
                                        <td class="style14">
                                            <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            <asp:Label ID="Label12" runat="server" Text="MOTHER NAME"></asp:Label>
                                        </td>
                                        <td class="style12">
                                            <asp:TextBox ID="TextBox9" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style24">
                                            <asp:Label ID="Label13" runat="server" Text="MOTHER MOBILE NO."></asp:Label>
                                        </td>
                                        <td class="style25">
                                            &nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox10" runat="server" Height="30px" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            <asp:Image ID="Image2" runat="server" Height="181px" 
                                                ImageUrl="~/images/member-1.jpg" Width="197px" />
                                        </td>
                                        <td class="style6">
                                            <asp:FileUpload ID="FileUpload1" runat="server" Height="80px" Width="213px" />
                                            <br />
                                            <br />
                                            <asp:Button ID="Button1" runat="server" Text="UPLOAD PHOTO" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table cellspacing="1" class="style26">
        <tr>
            <td class="style27">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Panel ID="Panel3" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" 
    Text="SAVE" Height="40px" Width="101px" />
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" Height="40px" Text="DELETE" 
                        Width="101px" />
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
</asp:Content>

