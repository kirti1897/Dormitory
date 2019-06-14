<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="complaints.aspx.cs" Inherits="DormFinal1.complaints" %>
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
            Complaints Form</h1>
        <form id="form1" runat="server">
        <div class="hotel-left-w3ls">
            <h2>
                Complaint Details</h2>
            <div class="main">
                <asp:TextBox ID="type" runat="server" placeholder="Complaint Type" 
                    Height="45px" Width="430px"
                        AutoCompleteType="Disabled" CssClass="formk" Font-Size="Large" 
                    MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal1" runat="server" ErrorMessage="*" ControlToValidate="type"
                        ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="False"
                        Font-Italic="False" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp1" runat="server" ControlToValidate="type"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br></div>
                    <div class="main">
                    <asp:TextBox ID="description" runat="server" placeholder="Complaint Description" 
                    Height="45px" Width="450px"
                        AutoCompleteType="Disabled" Font-Size="Large" TextMode="MultiLine" CssClass="padd"
                    ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal2" runat="server" ErrorMessage="*" ControlToValidate="type"
                        ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="False"
                        Font-Italic="False" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp2" runat="server" ControlToValidate="type"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br>
            </div>
            <div class="main">
                <asp:Button ID="bnSave" runat="server" Text="Save" Width="120px"  CssClass="btnForm">
                    </asp:Button></br>
                <asp:Button ID="bnDel" runat="server" Text="Delete" Width="120px" 
                    CssClass="btnForm">
                    </asp:Button></br>
            </div>
        </div>
        </form>
 </body>
</html>
</asp:Content>
