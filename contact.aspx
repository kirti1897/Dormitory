<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="DormFinal1.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Contact Here</title>
</head>
<body>
<div class="content">
	<div class="contact">
	    <div class="contact-top">
            	<h5>How to find us:</h5>
                <img src="images/Inmap.png" />
				<!--<div class="map">
				<iframe width="430" height="100" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/place/Indira+College+of+Commerce+and+Science/@18.611845,73.7466033,17z/data=!3m1!4b1!4m5!3m4!1s0x3bc2b989e3703be7:0x78fe091da7316f5a!8m2!3d18.611845!4d73.748792"></iframe>

				</div>-->
	</div>	
	<div class="contact-bottom">
	   <div class="b-box">
            <h3>Contact Us</h3>
            <div class="form">
            	
                <form class="cmxform" id="contactForm" method="post" >
                <div>
                    <span><label for="name">Name</label></span>
                    <span><input type="text" id="name" name="name" /></span>
					<span><label for="email">Email</label></span>
                    <span><input type="text" id="email" name="email" /></span>
					
				</div>
               	<div>
                       <span><label for="subject">Subject</label></span>
                       <span><textarea id="subject" name="Subject" ></textarea></span>
                </div>
                 <div>
               	   <button class="tsc_c3b_large tsc_c3b_white tsc_button">Submit</button>
                </div>
                </form>
            </div>
          </div>
          <div class="contact-det">
          	 <h3>Contact Address:</h3>
					<p>We are here to provide solution to students problems. We feel proud to work as part of Indira Institutes. Following are our details::</p>	
					<p>Mobile No. : 8605161339/ 89752898670</p>
					<!--<p>Fax:</p>-->
					<p>Email: <a href="mailto:info@gmail.com">kirtikute1897@gmail.com  OR  shinderohini9291@gmail.com</a></p>
		</div>
     </div>
         <div class="clear"></div>
      </div>
   </div>
 </body>
 </html>

</asp:Content>
