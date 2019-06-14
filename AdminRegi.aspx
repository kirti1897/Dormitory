<%@ Page Title="" Language="C#" MasterPageFile="~/WAmaster.Master" AutoEventWireup="true" CodeBehind="~/wardenregist.aspx.cs" Inherits="DormFinal1.wardenregist" %>
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
		     Admin Registration Form</h1>
	<!--login form-->
	
		<form id=form1 runat=server>
			
				<div class="hotel-left-w3ls">
					<h2>Personal Details</h2>

					<div class="main">
						<div class="form-left-to-w3l">
                        
					    <asp:TextBox ID="Name" placeholder="Name" runat="server" 
                                AutoCompleteType="Disabled" Height="45px" Width="400px"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" ControlToValidate="Name" ErrorMessage="*" 
                                Font-Size="X-Large" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                                runat="server" ErrorMessage="Enter Only Characters" ControlToValidate="Name" 
                                Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman" ForeColor="Red" SetFocusOnError="True" 
                                ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                              </br>                                 
                            <asp:DropDownList ID="Ddlgender" placeholder="Gender" runat="server" 
                                CssClass="form-control is-valid" Style = "fontsize:small" AutoPostBack="True" 
                                Height="45px" Width="400px" >
                                <asp:ListItem Value="">Please Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                             <br></br>
                         <asp:TextBox ID="email" placeholder="Email"  runat="server" Height="45px" 
                                Width="400px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="Enter valid Email Id " ControlToValidate="email" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                SetFocusOnError="True" ForeColor="Red"></asp:RegularExpressionValidator>
                           </br>     
                         <asp:TextBox ID="password" placeholder="Password" runat="server" Height="45px" 
                                Width="400px" CssClass="pass" TextMode="Password"></asp:TextBox>
                                </br>
                         <asp:TextBox ID="cpassword" placeholder="Confirm Password" runat="server" 
                                Height="45px" Width="400px" CssClass="pass" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ErrorMessage="Enter Valid Password" ControlToCompare="password" 
                                ControlToValidate="cpassword" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman" 
                                ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                                </br>
                         <asp:TextBox ID="phone" placeholder="PhoneNo" runat="server" Height="45px" 
                                Width="400px" MaxLength="10"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RFVphone" runat="server" ControlToValidate="phone" ErrorMessage="*" 
                                Font-Size="X-Large" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ErrorMessage="Enter Valid Phone No" ControlToValidate="phone" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman" 
                                ValidationExpression="(?:[+]\s*91|0)?[789](?:\s*\d){9}" ForeColor="Red"></asp:RegularExpressionValidator>
                              </br>  
                          
                            <asp:Label ID="date" placeholder="DOB" runat="server" Text="dob" 
                                CssClass="form-control is-valid" Style = "fontsize:small" AutoPostBack="True" 
                                Height="45px" Width="60px"></asp:Label>
                               
                                &nbsp;&nbsp;
                               
                                <asp:TextBox ID="dob"  runat="server" Type = "Date" AutoPostBack="True" Height="45px" 
                                Width="300px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" 
                                SetFocusOnError="True" ControlToValidate="dob" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman"></asp:RequiredFieldValidator>
                            <br></br>
                           
                            <asp:Button ID="btnsave" runat="server" Text="SAVE"   Width="82px" 
                                CssClass="btnform" onclick="btnsave_Click"/>
                            <asp:Label ID="lblsave" runat="server"></asp:Label>
                            <br></br>
                            
                            
                        </div>    
						
                        <div class="form-right-to-w3ls">
                        <asp:TextBox ID="desig" placeholder="Designation" runat="server" Height="45px" 
                                Width="400px"></asp:TextBox><br></br>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="desig" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red" 
                                SetFocusOnError="True" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman"></asp:RequiredFieldValidator>
                                
                            <asp:TextBox ID="addr" placeholder="Address" runat="server" 
                                TextMode="MultiLine" Height="45px" Width="400px"></asp:TextBox><br></br>
                                
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="Please fill this field " ControlToValidate="addr" 
                                Font-Bold="True" Font-Italic="True" ForeColor="Red"  
                                Font-Names="Times New Roman"></asp:RequiredFieldValidator>
                                
                            <asp:TextBox ID="state" placeholder="State" runat="server" Height="45px" 
                                Width="400px"></asp:TextBox><br></br>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ErrorMessage="*" ControlToValidate="state" ForeColor="Red" 
                                SetFocusOnError="True" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="district" placeholder="District" runat="server" Height="45px" 
                                Width="400px"></asp:TextBox>
                                <br></br>
                            <asp:TextBox ID="city" placeholder="City" runat="server" Height="45px" 
                                Width="400px"></asp:TextBox>
                                <br></br>
                                 
                            <asp:TextBox ID="pin" placeholder="Pin-Code" runat="server" Height="45px" 
                                Width="400px"></asp:TextBox>
                                <br></br>
                            <asp:TextBox ID="adhar" placeholder="Aadharcard No" runat="server" 
                                Height="45px" Width="400px" MaxLength="12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Rfdadhar" runat="server" 
                                ErrorMessage="*" ControlToValidate="adhar" ForeColor="Red" 
                                SetFocusOnError="True" Font-Bold="True" 
                                Font-Italic="True" Font-Names="Times New Roman" 
                                Font-Size="X-Large"></asp:RequiredFieldValidator>
                                <br></br>

                            <asp:Button ID="btndelete" Text="DELETE" runat="server" Width="98px" 
                                CssClass="btnform" onclick="btndelete_Click"/>
                            <asp:Label ID="lbldelete" runat="server"></asp:Label>
                            <br></br>
                            <div class="clear"></div>
					</div>
					</div>
					</form>
</body>
</html>


</asp:Content>
