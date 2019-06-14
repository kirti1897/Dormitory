<%@ Page Title="" Language="C#" MasterPageFile="~/SignIn.Master" AutoEventWireup="true" CodeBehind="notice.aspx.cs" Inherits="DormFinal1.notice" %>
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
            Notices  </h1><br />
       
        <h1 class="header-w3ls">Welcome!!<asp:Label ID="Lbl1" runat="server" Text="Label"></asp:Label></h1>

        <form id="form1" runat="server">
            <%--<asp:Label ID="Lbl1" runat="server" Text="Label"></asp:Label>--%>
            <div class="main">
                <div class="ntc">
                    <h5>
                         <br /><br />
                        <p>Students are requested to note that,"Ragging" is an offence u/s 4 of "Maharashtra Prohibition Of
                        Ragging Act" , '1999'  and any student found involving himselft or abetting or propogating activities of ragging
                        such as teasing, abusing, threatening or playing jokes on, or causing hurt, which is likely to cause
                        physical or mental / psychological harm or raise apprehension or fear or shame or embarrassment to a student within or outside any educational institution, shall be dismissed with immediate effect.</p><br /><br />

                        <p>Please note that, such dismissed student shall further not be admitted in any other educational institution
                        for a period of five years from the date of order of such dismissal. In addition to same, the college shall
                        also forward thw complaints about further action.</p><br /><br />

                        <p>It may further be noted that, the college will not be responsible for any claim, damage or compensation against the order of suspension of the student 
                        who is accused of the offence of ragging in any manner.</p><br /><br />

                    </h5>
            </div>
            </div>
        </form>
    </body>
    </html>
</asp:Content>
