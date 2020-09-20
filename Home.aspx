<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IRS1.WebForm1" %>
<!DOCTYPE html>
<html>
    <head>
        <title>International Restaurant </title>
       <link rel ="stylesheet" type="text/css" href ="Style.css">
       <link href="https://fonts.googleapis.com/css?family=Bangers" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bangers|Playball" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    
        </head>
    <body>
        <header>    
            <nav>
                <div class ="row clearfix">
                    <img src ="image/logo.png" class = "logo">
                    <ul class="Main-nav animated slideInDown" id="checkone">
                        <li><a>Home</a></li>
                        <li><a href="About.aspx">about us</a></li>
                        <li><a href="menu.aspx">menu</a></li>
                       <%-- <li><a href="Reservation.aspx">Reservation</a></li>--%>
                         <li><a href="Signin.aspx">Reservation</a></li>
                         <li><a href="Staff.aspx">staff</a></li>
                        <li><a href="Signin.aspx">signin</a></li>
                         <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                   
                    <a href="#" class ="Mobile-icon" onclick = "slideshow()">
                          <i class="fa fa-bars"></i>
                    </a>  
                </div>
            </nav>
            
            
            <div class = "main-content">
                <h1><marquee>Welcome to <span class="colorchange">International Restaurant.</span><br>
                        Feel Like Home</marquee></h1>
              
                        <a href="order.aspx" class = "btn btn-full"><span class="Bt">Click to order</span></a>
                                       <a href="#" class = "btn btn-1">more option</a>
            </div>
        </header>   
        
        <script type="text/javascript">
            function slideshow()
            { var x = document.getElementById('checkone');
                if(x.style.display ===  "none")
                {
                    x.style.display = "block";
                }
                else
                {
                    x.style.display= "none";
                }
            }
        </script>
    </body>
</html>
