<%@ Page Title="" Language="C#" MasterPageFile="~/Hosteller.Master" AutoEventWireup="true"
    CodeBehind="hostReg.aspx.cs" Inherits="DormFinal1.hostReg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
        <form id="form1" runat="server" enableviewstate="False">
        <div class="hotel-left-w3ls">
            <h2>
                Personal Details</h2>
            <div class="main">
                <div class="form-left-to-w3l">
                    <asp:TextBox ID="name" runat="server" placeholder="Name" Height="45px" Width="430px"
                        AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal1" runat="server" ErrorMessage="*" ControlToValidate="name"
                        ForeColor="#FF5050" Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp1" runat="server" ControlToValidate="name"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="lastName" runat="server" placeholder="Last Name" Height="45px" Width="430px"
                        AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="reVal3"
                            runat="server" ErrorMessage="*" ControlToValidate="lastName" SetFocusOnError="True"
                            ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp3" runat="server" Style="font-size: medium"
                        ControlToValidate="lastName" Display="Dynamic" ErrorMessage="Characters Only"
                        ForeColor="#FF5050" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                        Font-Names="times new roman" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="email" runat="server" placeholder="Email" Height="45px" Width="430px"
                        AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="reVal2"
                            runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="#FF5050"
                            Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp2" runat="server" ErrorMessage="Enter Valid Email ID"
                        ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Style="font-size: medium" ControlToValidate="email" Display="Dynamic" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" SetFocusOnError="True"></asp:RegularExpressionValidator>
                    </br></br>
                    
                    <asp:TextBox ID="phNo" runat="server" placeholder="Phone No" Height="40px" Width="430px"
                        MaxLength="10" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator
                            ID="reVal4" runat="server" ErrorMessage="*" ControlToValidate="phNo" ForeColor="#FF5050"
                            Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp4" runat="server" ErrorMessage="Enter Valid Phone Number"
                        ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" ControlToValidate="phNo" ValidationExpression="(?:[+]\s*91|0)?[789](?:\s*\d){9}"></asp:RegularExpressionValidator>
                    <asp:DropDownList ID="ddl_Bloodgr" runat="server" CssClass="form-control is-valid"
                        Style="font-size: small" AutoPostBack="True" Height="45px" Width="410px">
                        <asp:ListItem Value="">Please Select Blood Group</asp:ListItem>
                        <asp:ListItem>O positive</asp:ListItem>
                        <asp:ListItem>O negative</asp:ListItem>
                        <asp:ListItem>A positive</asp:ListItem>
                        <asp:ListItem>A negative</asp:ListItem>
                        <asp:ListItem>B positive</asp:ListItem>
                        <asp:ListItem>B negative</asp:ListItem>
                        <asp:ListItem>AB positive</asp:ListItem>
                        <asp:ListItem>AB negative</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reVal5" runat="server" ErrorMessage="* Enter Blood Group"
                        ControlToValidate="ddl_Bloodgr" SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: medium"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator></br>
                    <asp:DropDownList ID="ddl_gender" runat="server" CssClass="form-control is-valid"
                        Style="font-size: small" AutoPostBack="True" Height="45px" Width="430px">
                        <asp:ListItem Value="">Please Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reVal7" runat="server" ErrorMessage="* Enter Gender"
                        ControlToValidate="ddl_Bloodgr" SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: medium"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator>
                    </br>
                    <%--<asp:ScriptManager ID="ScriptManager1" runat="server" />--%>
                    <asp:Label ID="dob" runat="server" name="Date of Birth" CssClass="lab" Font-Italic="True"
                             ForeColor="Black" Font-Size="Large" Width="190px" Height="45px">Date Of Birth</asp:Label>
                    <%--<asp:Calendar ID="datepicker" runat="server" Visible="False" 
                        onselectionchanged="datepicker_SelectionChanged" BackColor="White" 
                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                            Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>--%>
                    <asp:TextBox ID="dateofBirth" runat="server" Height="45px" Width="190px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reExp13" runat="server" 
                        ControlToValidate="dateofBirth" ValidationExpression="(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$"
    ErrorMessage="Invalid date format." ValidationGroup="Group1" Display="Dynamic" 
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" 
                        ForeColor="#FF5050"></asp:RegularExpressionValidator><br /><br />
                    <%--<asp:LinkButton ID="lnkpickdate" runat="server" OnClick="lnkpickdate_Click">Get Date</asp:LinkButton><br /><br /> --%>        
                             <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" DaysModeTitleFormat="dd/mm/yyy" onload="Page_Load" TargetControlID="dateofbirth" TodaysDateFormat="dd/mm/yyyy"> </ajaxToolkit:CalendarExtender>--%>
                    <asp:TextBox ID="pAddress" runat="server" placeholder="Permanent Address" Height="45px"
                        Width="430px" TextMode="MultiLine" CssClass="padd"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal8" runat="server" ErrorMessage="*" ControlToValidate="pAddress"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman"></asp:RequiredFieldValidator></br></br>
                    <asp:TextBox ID="nation" runat="server" placeholder="Nationality" Width="200px" Height="45px"
                        AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="reVal9"
                            runat="server" ErrorMessage="*" ControlToValidate="nation" SetFocusOnError="True"
                            ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="reExp6" runat="server" ControlToValidate="nation"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>&nbsp;&nbsp;
                    <asp:TextBox ID="state" runat="server" placeholder="State" Width="200px" Height="45px"
                        AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal10" runat="server" ErrorMessage="*" ControlToValidate="state"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp7" runat="server" ControlToValidate="state"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator></br>
                    <asp:TextBox ID="course" runat="server" placeholder="Course" Width="430px" Height="45px"
                        AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal12" runat="server" ErrorMessage="*" ControlToValidate="course"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp9" runat="server" ControlToValidate="course"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator></br><br />
                    <asp:TextBox ID="password" runat="server" placeholder="Password" Height="45px" Width="430px"
                        CssClass="pass" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox><asp:CustomValidator
                            ID="cuVal1" runat="server" ErrorMessage="Characters & Number only with 8 chars length"
                            ControlToValidate="password" Display="Dynamic" ForeColor="Red" Style="font-size: medium"
                            SetFocusOnError="True" Font-Bold="True" Font-Italic="True" Font-Names="times new roman"
                            OnServerValidate="checkPass"></asp:CustomValidator></br>
                    <asp:Button ID="btnSave" runat="server" Text="Save" Width="76px" 
                        CssClass="btnForm" onclick="btnSave_Click">
                    </asp:Button>
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    </br>
                </div>
                <div class="form-right-to-w3ls">
                    <%--<asp:TextBox ID="lastName" runat="server" placeholder="Last Name" Height="45px" Width="430px"
                        AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="reVal3"
                            runat="server" ErrorMessage="*" ControlToValidate="lastName" SetFocusOnError="True"
                            ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp3" runat="server" Style="font-size: medium"
                        ControlToValidate="lastName" Display="Dynamic" ErrorMessage="Characters Only"
                        ForeColor="#FF5050" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                        Font-Names="times new roman" ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    </br>
                    <asp:TextBox ID="phNo" runat="server" placeholder="Phone No" Height="40px" Width="430px"
                        MaxLength="10" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator
                            ID="reVal4" runat="server" ErrorMessage="*" ControlToValidate="phNo" ForeColor="#FF5050"
                            Style="font-size: xx-large" SetFocusOnError="True" Font-Bold="True" Font-Italic="True"
                            Font-Names="times new roman"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="reExp4" runat="server" ErrorMessage="Enter Valid Phone Number"
                        ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" ControlToValidate="phNo" ValidationExpression="(?:[+]\s*91|0)?[789](?:\s*\d){9}"></asp:RegularExpressionValidator>
                    <asp:DropDownList ID="ddl_Bloodgr" runat="server" CssClass="form-control is-valid"
                        Style="font-size: small" AutoPostBack="True" Height="45px" Width="410px">
                        <asp:ListItem Value="">Please Select Blood Group</asp:ListItem>
                        <asp:ListItem>O positive</asp:ListItem>
                        <asp:ListItem>O negative</asp:ListItem>
                        <asp:ListItem>A positive</asp:ListItem>
                        <asp:ListItem>A negative</asp:ListItem>
                        <asp:ListItem>B positive</asp:ListItem>
                        <asp:ListItem>B negative</asp:ListItem>
                        <asp:ListItem>AB positive</asp:ListItem>
                        <asp:ListItem>AB negative</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reVal5" runat="server" ErrorMessage="* Enter Blood Group"
                        ControlToValidate="ddl_Bloodgr" SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: medium"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" Display="Dynamic"></asp:RequiredFieldValidator></br>--%>
                                 
                   <asp:FileUpload ID="FileUpload1" runat="server" Height="40px" Width="409px" />
                                 Image Should be JPEG 200x200 Max size 50 KB
                    <br /><br />
                    <asp:TextBox ID="uid" runat="server" placeholder="Aadhar Number" Height="45px" Width="430px"
                        MaxLength="12" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="reExp5" runat="server" ErrorMessage="Enter Valid Aadhar Number"
                        ForeColor="#FF5050" Style="font-size: medium" SetFocusOnError="True" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman" ControlToValidate="uid" ValidationExpression="(?:[+]\s*91|0)?[3456789](?:\s*\d){11}"
                        Display="Dynamic"></asp:RegularExpressionValidator></br><br />
                    <asp:TextBox ID="height" runat="server" placeholder="Height" Width="200px" Height="45px"
                        AutoCompleteType="Disabled"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox
                            ID="weight" runat="server" placeholder="Weight" Width="200px" Height="45px"></asp:TextBox>
                    <asp:RangeValidator ID="rnV2" runat="server" ErrorMessage="Enter Valid Value" 
                        ControlToValidate="height" MaximumValue="180" MinimumValue="100" Display="Dynamic" Font-Bold="True" Font-Italic="True" Font-Names="Times new roman" Font-Size="Large"></asp:RangeValidator>
                    <%--<asp:RangeValidator ID="rnV3" runat="server" ErrorMessage="Enter Valid Value" 
                        ControlToValidate="weight" Display="Dynamic" Font-Bold="True" 
                        Font-Italic="True" Font-Names="Times new roman" Font-Size="Large" 
                        MaximumValue="180" MinimumValue="50"></asp:RangeValidator>--%>
                    </br>
                    <br />
                    <br />
                    <asp:TextBox ID="city" runat="server" placeholder="City" Width="200px" Height="45px"
                        AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal11" runat="server" ErrorMessage="*" ControlToValidate="city"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman"></asp:RequiredFieldValidator>&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="reExp8" runat="server" ControlToValidate="city"
                        Display="Dynamic" ErrorMessage="Charcters Only" Style="font-size: medium" SetFocusOnError="True"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" ForeColor="#FF5050"
                        ValidationExpression="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="pin" runat="server" placeholder="PinCode" Width="200px" Height="45px"
                        AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reVal13" runat="server" ErrorMessage="*" ControlToValidate="pin"
                        SetFocusOnError="True" ForeColor="#FF5050" Style="font-size: xx-large" Font-Bold="True"
                        Font-Italic="True" Font-Names="times new roman"></asp:RequiredFieldValidator></br>
                    <asp:TextBox ID="duration" runat="server" placeholder="Duration of Course" Width="430px"
                        Height="45px" AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:RangeValidator ID="rnV1" runat="server" ErrorMessage="Enter Valid years" 
                        MaximumValue="4" MinimumValue="2" Font-Bold="True" Font-Italic="True" 
                        Font-Names="Times New Roman" Font-Size="Large" ForeColor="Red" ControlToValidate="duration"></asp:RangeValidator>
                    <asp:CustomValidator ID="cuVal2" runat="server" ErrorMessage="Enter Valid Value"></asp:CustomValidator>
                    <asp:TextBox ID="conPass" runat="server" placeholder="Confirm Password" Height="45px"
                        Width="430px" EnableViewState="False" CssClass="pass" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator
                            ID="reVal6" runat="server" ErrorMessage="*" ControlToValidate="conPass" ForeColor="#FF5050"
                            Style="font-size: xx-large" Font-Bold="True" Font-Italic="True" Font-Names="times new roman"
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cuVal3" runat="server" ErrorMessage="Password doesn't match"
                        ControlToCompare="password" ForeColor="#FF5050" ControlToValidate="conPass" Display="Dynamic"
                        Font-Bold="True" Font-Italic="True" Font-Names="times new roman" SetFocusOnError="True"></asp:CompareValidator></br>
                    <%--<asp:Button ID="btnNew" runat="server" Text="New" Width="76px" CssClass="btnForm"
                        OnClick="btnNew_Click"></asp:Button></br>
--%>                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
        </form>
    </body>
    </html>
</asp:Content>
