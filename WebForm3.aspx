<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="IRS1.WebForm3" %>

<!DOCTYPE html>

<html>
    <head>
        <title>International Restaurant</title>
       <link rel ="stylesheet" type="text/css" href ="Style.css">
       <link href="https://fonts.googleapis.com/css?family=Bangers" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bangers|Playball" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       </head>
        <style type="text/css">
            .auto-style10 {
                width: 106%;
                height: 246px;
                margin-left: 0px;
                margin-top: 0px;
            }
            .auto-style11 {
                width: 145px;
            }
            .auto-style12 {
                width: 60%;
                height: 467px;
                border-radius: 10px;
                box-shadow: 0 0 10px 0 #000;
                position: relative;
                top: -22px;
                left: -417px;
                display: inline-block;
                color: #fff;
                float: right;
                margin-left: 1200px;
                margin-right: 20px;
                margin-top: 30px;
                margin-bottom: 50px;
                padding: 0 2%;
                background-color: transparent;
            }
            .auto-style13 {
                width: 327px;
            }
        </style>
     
       
    <body>
        <form id="form1" runat="server">
        <header>    
            <nav>
                <div class ="row clearfix">
                    <img src ="image/logo.png" class = "logo">&nbsp;<ul class="Main-nav animated slideInDown" id="checkone">
                        <li><a href = "Home.aspx">Home</a></li>
                        <li><a href ="about.aspx">about us</a></li>
                        <li><a href="menu.aspx">menu</a></li>
                        <li><a href="Reservation.aspx">Reservation</a></li>
                         <li><a href="Staff.aspx">staff</a></li>
                        <li><a >WebForm3</a></li>
                         <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                   
                    <a href="#" class ="Mobile-icon" onclick = "slideshow()">
                          <i class="fa fa-bars"></i>
                    </a>  
                </div>
            </nav>
            
          
           
        
       
      
           <div class = "auto-style12">
               <table class="auto-style10" border="0">
                   <tr>
                       <td class="auto-style11">Cuntomer Name</td>
                       <td class="auto-style13">
                           <asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style11">Number Of Person</td>
                       <td class="auto-style13">
                           <asp:TextBox ID="TextBox2" runat="server" Width="173px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style11">Select Date</td>
                       <td class="auto-style13">
                           <asp:Calendar ID="Calendar1" runat="server" ForeColor="#9999FF"></asp:Calendar>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style11">Select Time</td>
                       <td class="auto-style13">Start Time<asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>10:00 AM</asp:ListItem>
                           <asp:ListItem>10:30 AM</asp:ListItem>
                           <asp:ListItem>11:00 AM</asp:ListItem>
                           <asp:ListItem>11:300 AM</asp:ListItem>
                           <asp:ListItem>12:00 AM</asp:ListItem>
                           <asp:ListItem>12:30 PM</asp:ListItem>
                           <asp:ListItem>1:00 PM</asp:ListItem>
                           <asp:ListItem>1:30 PM</asp:ListItem>
                           <asp:ListItem>2:00 PM</asp:ListItem>
                           <asp:ListItem>2:30 PM</asp:ListItem>
                           <asp:ListItem>3:00 PM</asp:ListItem>
                           <asp:ListItem>4:30 PM</asp:ListItem>
                           <asp:ListItem>5:00 PM</asp:ListItem>
                           <asp:ListItem>5:30 PM</asp:ListItem>
                           <asp:ListItem>6:00 PM</asp:ListItem>
                           <asp:ListItem>6:30 PM</asp:ListItem>
                           <asp:ListItem>7:00 PM</asp:ListItem>
                           <asp:ListItem>7:30 PM</asp:ListItem>
                           <asp:ListItem>8:00 PM</asp:ListItem>
                           <asp:ListItem>8:30 PM</asp:ListItem>
                           </asp:DropDownList>
&nbsp;
                           <asp:Button ID="Button1" runat="server" Height="25px" Text="Check Availability " Width="109px"  OnClick="Button1Click"/>
                           <br />
                           End Time&nbsp;&nbsp;&nbsp;
                           <asp:DropDownList ID="DropDownList2" runat="server">
                               <asp:ListItem>10:30 AM</asp:ListItem>
                               <asp:ListItem>11:00 AM</asp:ListItem>
                               <asp:ListItem>11:300 AM</asp:ListItem>
                               <asp:ListItem>12:00 AM</asp:ListItem>
                               <asp:ListItem>12:30 PM</asp:ListItem>
                               <asp:ListItem>1:00 PM</asp:ListItem>
                               <asp:ListItem>1:30 PM</asp:ListItem>
                               <asp:ListItem>2:00 PM</asp:ListItem>
                               <asp:ListItem>2:30 PM</asp:ListItem>
                               <asp:ListItem>3:00 PM</asp:ListItem>
                               <asp:ListItem>4:30 PM</asp:ListItem>
                               <asp:ListItem>5:00 PM</asp:ListItem>
                               <asp:ListItem>5:30 PM</asp:ListItem>
                               <asp:ListItem>6:00 PM</asp:ListItem>
                               <asp:ListItem>6:30 PM</asp:ListItem>
                               <asp:ListItem>7:00 PM</asp:ListItem>
                               <asp:ListItem>7:30 PM</asp:ListItem>
                               <asp:ListItem>8:00 PM</asp:ListItem>
                               <asp:ListItem>8:30 PM</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style11">&nbsp;</td>
                       <td class="auto-style13">
                           <asp:Label ID="Label1" runat="server"></asp:Label>
                           <br />
                           <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Visible="False" Width="303px">
                               <asp:ListItem>Table 1</asp:ListItem>
                               <asp:ListItem>Table 2</asp:ListItem>
                               <asp:ListItem>Table 3</asp:ListItem>
                               <asp:ListItem>Table 4</asp:ListItem>
                               <asp:ListItem>Table 5</asp:ListItem>
                               <asp:ListItem>Table 6</asp:ListItem>
                               <asp:ListItem>Table 7</asp:ListItem>
                               <asp:ListItem>Table 8</asp:ListItem>
                               <asp:ListItem>Table 9</asp:ListItem>
                               <asp:ListItem>Table 10</asp:ListItem>
                           </asp:RadioButtonList>
                           <br />
                       </td>
                   </tr>
                   <tr>
                       <td class="auto-style11">
                           <asp:Label ID="Label4" runat="server"></asp:Label>
                       </td>
                       <td class="auto-style13"></td>
                   </tr>
               </table>
               </div>
          
            </header>
         <script type="text/javascript">
             function slideshow() {
                 var x = document.getElementById('checkone');
                 if (x.style.display === "none") {
                     x.style.display = "block";
                 }
                 else {
                     x.style.display = "none";
                 }
             }
         </script>
              </form>
    </body>
</html>
