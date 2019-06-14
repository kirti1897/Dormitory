<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="Doccument.aspx.cs" Inherits="DormFinal1.Doccument" %>
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
		         Document Section</h1>
	
		<form id="form1" runat="server">
			
				<div class="hotel-left-w3ls">
					<h2>Document Details</h2>
                   
					<div class="main">
                    
                     <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" Height="45px" Width="330px" />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload"  Width="109px" 
                                CssClass="btnform" />
    
                    </div>
                    <asp:Label ID="lbl1" runat="server" Font-Bold="True" 
                            Font-Italic="True" Font-Names="Times New Roman" ForeColor="Red" 
                            Font-Size="X-Large" ></asp:Label>
                    <div class="clear"></div>
					</div>
					</div>
					</form>
</body>
</html>

</asp:Content>

