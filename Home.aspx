<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DormFinal1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Welcome Here</title>
</head>
<body>
    <div id="container">
        <div id="banner">
			<script src="js/responsiveslides.min.js"></script>
						<script>
						    // You can also use "$(window).load(function() {"
						    $(function () {
						        // Slideshow 4
						        $("#slider3").responsiveSlides({
						            auto: true,
						            pager: true,
						            nav: false,
						            speed: 500,
						            namespace: "callbacks",
						            before: function () {
						                $('.events').append("<li>before event fired.</li>");
						            },
						            after: function () {
						                $('.events').append("<li>after event fired.</li>");
						            }
						        });
						    });
						</script>
						<div  id="top" class="callbacks_container">
							<ul class="rslides" id="slider3">
								  <li><img src="images/indira1.jpg"/></li>
								  <li><img src="images/indira2.jpg"/></li>
                                  <li><img src="images/indira5.jpg"/></li>
								  <li><img src="images/indira4.jpg"/></li>
                                  <li><img src="images/indira6.jpg"/></li>
							</ul>
						</div>
        </div>
   </div>

<div class="content">
<div class="content-top">
		<div class="grid">
				<div class="tariff">
					   	<div class="text">
				 			<h2>Rule & Regulations</h2>
							<p>For the purpose of admission to the hostel, allotment of accomodation , maintaining discipline and good conduct within and outside hostel premises, the foloowing rules and regulations as laid down hereinafter shall be followed.</p>
							<a href="Rules.aspx"><p><span class="yellow">Read More</span></p></a>	
						</div>
				<div class="clear"></div>
				</div>
		</div>
		<div class="grid1">
					<div class="tariff">
					   	<div class="text">
				 			<h2>Facility</h2>
							<p>The diiferent  facilities are provided by system to help students, to have better life as they live at their homes. Specifically girls who are too much away from home,need a better facility for better life.</p>
							<a href="Facility.aspx"><p><span class="yellow">Read More</span></p></a>	
						</div>
					<div class="clear"></div>
					</div>
		</div>
		<div class="grid2">
			 <h4>Room</h4>
             <p>The rooms available here are always clean and neet. Our aim to make feel students that they are in thier own room at home.</p>
		     
          <div class="clear"></div>
		</div>
		<div class="clear"></div>
      </div>
   </div>
</body>
</html>
</asp:Content>
