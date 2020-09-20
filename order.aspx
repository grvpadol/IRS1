<?php
$link=mysqli_connect("localhost","padol","Rest","MyDbConnection");
mysqli_select_db($link,"menu");
?>
<!DOCTYPE html>
<html>
    <head>
        <title>International Restaurant/ ORDER </title>
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
                        <li><a href = "Home.html">Home</a></li>
                        <li><a>about us</a></li>
                        <li><a href="menu.aspx">menu</a></li>
                        <li><a href="Reservation.aspx">Reservation</a></li>
                         <li><a href="Staff.aspx">staff</a></li>
                        <li><a href="Signin.aspx">signin</a></li>
                         <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                  
                    <a href="#" class ="Mobile-icon" onclick = "slideshow()">
                          <i class="fa fa-bars"></i>
                    </a>  
               
                </div>
            </nav>
           
                <form name="form1" action="" method="POST">
                    &nbsp;</form>
                           
            
            <div class = "main-content">
                <h1>Welcome to <span class="colorchange">International Restaurant.</span><br>
            Feel Like Home</h1>
            
            <!--<a href="Submit "class = "btn btn-full"><span class="Bt">submit</button></span></a>-->
               <a href="Pay.html" class = "btn btn-1">Drive through</a>
               <a href="Reservation.html" class = "btn btn-1">IN Restaurant</a>
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
