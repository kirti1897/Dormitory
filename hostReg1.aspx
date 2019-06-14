<%@ Page Title="" Language="C#" MasterPageFile="~/Hosteller.Master" AutoEventWireup="true"
    CodeBehind="hostReg1.aspx.cs" Inherits="DormFinal1.hostReg1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Welcome Here</title>
    </head>
    <body>
        <h1 class="header-w3ls">
            Hosteller Registration Form</h1>
        <form id="form1" runat="server">
        <div class="hotel-left-w3ls">
            <h2>
                Parent & Gaurdian Details</h2>
            
            
            <div class="main">
                <div class="form-left-to-w3l">
                    <h3 style="font-family: Times New Roman; font-size: x-large; color: Fuchsia">
                        Parent Information</h3>
                    <asp:Label ID="lbl1" runat="server" Text="" Style="Font-size:medium; font-style:italic; color:Blue; font-family:Times New Roman"></asp:Label>
                    </br>
                    <asp:TextBox ID="fName" runat="server" placeholder="Father Name" Height="45px" Width="430px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal1" runat="server" ErrorMessage="*" ControlToValidate="fName"
                        ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp1" runat="server" ControlToValidate="fName"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="fPhNo" runat="server" placeholder="Father-Phone-Number" Width="200px"
                        Height="45px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal3" runat="server" ErrorMessage="*" ControlToValidate="fPhNo"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp4" runat="server" ErrorMessage="Enter Valid Phone Number"
                        ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" ControlToValidate="fPhNo" ValidationExpression="(?:[+]\s*91|0)?[789](?:\s*\d){9}"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                    &nbsp;
                    <asp:TextBox ID="fEmail" runat="server" placeholder="Father-Mail" Width="200px" Height="45px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal4" runat="server" ErrorMessage="*" ControlToValidate="fEmail"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="reExp3" runat="server" ErrorMessage="Enter Valid Email ID"
                        ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Style="font-size: medium" ControlToValidate="fEmail" Display="Dynamic" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="mName" runat="server" placeholder="Mother Name" Height="45px" Width="430px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal6" runat="server" ErrorMessage="*" ControlToValidate="mName"
                        ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp6" runat="server" ControlToValidate="mName"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="mPhNo" runat="server" placeholder="Mother-Phone-Number" Width="200px"
                        Height="45px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal7" runat="server" ErrorMessage="*" ControlToValidate="mPhNo"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp7" runat="server" ErrorMessage="Enter Valid Phone Number"
                        ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" ControlToValidate="mPhNo" ValidationExpression="(?:[+]\s*91|0)?[789](?:\s*\d){9}"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                    &nbsp;
                    <asp:TextBox ID="mEmail" runat="server" placeholder="Mother-Mail" Width="200px" Height="45px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal8" runat="server" ErrorMessage="*" ControlToValidate="mEmail"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator><br />
                    
                    <asp:RegularExpressionValidator ID="reExp8" runat="server" ErrorMessage="Enter Valid Email ID"
                        ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Style="font-size: medium" ControlToValidate="mEmail" Display="Dynamic" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="fOcc" runat="server" placeholder="Father-Occupation" Width="200px"
                        Height="45px"></asp:TextBox>&nbsp;&nbsp;
                    <asp:TextBox ID="mOcc" runat="server" placeholder="Mother-Occupation" Width="200px"
                        Height="45px"></asp:TextBox></br>
                    <asp:RegularExpressionValidator ID="reExp11" runat="server" ControlToValidate="fOcc"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="reExp12" runat="server" ControlToValidate="mOcc"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator><br />
                     <asp:Button ID="btnBack" runat="server" Text="Back" Width="115px" 
                        CssClass="btnForm" onclick="btnBack_Click">
                    </asp:Button>                    
                </div>
                <div class="form-right-to-w3ls">
                    <h3 style="font-family: Times New Roman; font-size: x-large; color: Fuchsia">
                        Gaurdian Information</h3>
                        <asp:Label ID="lbl2" runat="server" Text="" Style="Font-size:medium; font-style:italic; color:Blue; font-family:Times New Roman"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl3" runat="server" Text="" Style="Font-size:medium; font-style:italic; color:Blue; font-family:Times New Roman"></asp:Label>
                    </br>
                    <asp:TextBox ID="gfName" runat="server" placeholder="Gaurdian First Name" Height="45px"
                        Width="430px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal2" runat="server" ErrorMessage="*" ControlToValidate="gfName"
                        ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp2" runat="server" ControlToValidate="gfName"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="glName" runat="server" placeholder="Gaurdian Last Name" Height="45px"
                        Width="430px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal5" runat="server" ErrorMessage="*" ControlToValidate="glName"
                        ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp5" runat="server" ControlToValidate="glName"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br><br />
                    <asp:TextBox ID="gAddress" runat="server" placeholder="Gaurdian Address" Height="45px"
                        Width="430px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal9" runat="server" ErrorMessage="*" ControlToValidate="gAddress"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="gPhNo" runat="server" placeholder="Gaudian-Phone-No" Width="200px"
                        Height="45px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal10" runat="server" ErrorMessage="*" ControlToValidate="gPhNo"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:TextBox ID="gEmail" runat="server" placeholder="Gaurdian-Mail" Width="200px" Height="45px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal12" runat="server" ErrorMessage="*" ControlToValidate="gEmail"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="reExp9" runat="server" ErrorMessage="Enter Valid Phone Number"
                        ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" ControlToValidate="gPhNo" ValidationExpression="(?:[+]\s*91|0)?[789](?:\s*\d){9}"
                        Display="Dynamic"></asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="reExp10" runat="server" ErrorMessage="Enter Valid Email ID"
                        ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Style="font-size: medium" ControlToValidate="gEmail" Display="Dynamic" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" SetFocusOnError="True"></asp:RegularExpressionValidator><br />
                    <asp:TextBox ID="gOcc" runat="server" placeholder="Gaurdian-Occupation" Width="430px"
                        Height="45px"></asp:TextBox></br>
                    <asp:RegularExpressionValidator ID="reExp13" runat="server" ControlToValidate="gOcc"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator></br>
                   <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="115px" 
                        CssClass="btnForm" onclick="btnSubmit_Click1">
                    </asp:Button>
                    <div class="clear">
                    </div> 
                </div>
            </div>
        </div>
        </form>
    </body>
    </html>
</asp:Content>
