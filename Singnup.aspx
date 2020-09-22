<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Singnup.aspx.cs" Inherits="IRS1.Singnup" %>

<!DOCTYPE html>

<html>
<head>
        <title>International Restaurant/ About us </title>
       <link rel ="stylesheet" type="text/css" href ="Style.css">
       <link href="https://fonts.googleapis.com/css?family=Bangers" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bangers|Playball" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     
        </head>
<body>
        <form id="form1" runat="server">
        <header>    
            <nav>
                <div class ="row clearfix">
                    <img src ="image/logo.png" class = "logo">
                    <ul class="Main-nav animated slideInDown" id="checkone">
                        <li><a href = "Home.aspx">Home</a></li>
                        <li><a href ="about.aspx">about us</a></li>
                        <li><a href="menu.html">menu</a></li>
                        <li><a href="Reservation.aspx">Reservation</a></li>
                         <li><a href="Staff.aspx">staff</a></li>
                        
                        <li><a >SignuP</a></li>
                         <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                   
                    <a href="#" class ="Mobile-icon" onclick = "slideshow()">
                          <i class="fa fa-bars"></i>
                    </a>  
                </div>
            </nav>
            <div class = "from-container">
                <div class="userImage"></div>
                <ul class="list">
                    <li><h2>  Member Information</h2></li>
                        
                        <li><asp:TextBox ID="FirstName" name="Fiest Name" Placeholder="First Name" runat="server"></asp:TextBox></li>
                        <li><asp:TextBox ID="LastName" name="Last Name" Placeholder="Last Name" runat="server"></asp:TextBox></li>
                        <li> <asp:TextBox ID="userName1" input type="text" name ="User Name" Placeholder="User Nmae" runat="server"></asp:TextBox></li>
                        <li><asp:TextBox ID="Password" input type="password" name ="password" placeholder="password" runat="server"></asp:TextBox></li>
                        <li> <asp:TextBox ID="RenterPass" input type="password" name ="Reenter-password" placeholder="RenterPass" runat="server"></asp:TextBox></li>
                        <li><asp:TextBox ID="CellNumber"  name ="Number" placeholder="Cell Number" runat="server"></asp:TextBox></li>
                        <li><asp:TextBox ID="Address" name="Address" placeholder="Address" runat="server"></asp:TextBox></li>
                        <li><asp:TextBox ID="City" name="City" placeholder="City" runat="server"></asp:TextBox> </li>
                        <li> <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Submit"/></li>
                   
                 </ul>
                </div>
            </form>
            </body>
</html>
