<!DOCTYPE html>
<html>
    <head>
        <title>International Restaurant/ About us </title>
       <link rel ="stylesheet" type="text/css" href ="Spe/Style.css">
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
                        <li><a href="menu.html">menu</a></li>
                        <li><a href="Reservation.html">Reservation</a></li>
                         <li><a href="Staff.html">staff</a></li>
                        <li><a >signin</a></li>
                         <li><a href="Contact.html">Contact</a></li>
                    </ul>
                   
                    <a href="#" class ="Mobile-icon" onclick = "slideshow()">
                          <i class="fa fa-bars"></i>
                    </a>  
                </div>
            </nav>
            
            <div class = "from-container">
                <div class="userImage"></div>
                <ul class="list">
                    <li><h2>Member Login</h2></li>
                  
                    <li><input type="password" name ="password" placeholder="Enter New Password"></li>
                    <li><input type="button" name ="Submit" value ="Re Enter Password" ></li>
                    <li><a href="Signin.html"><input type="button" name ="Signin" value ="Sign-In"></a></li>
                    
                    
                </ul>
            </div>
            <div class = "main-content">
                <h1>Welcome to <span class="colorchange">International Restaurant.</span><br>
            Feel Like Home</h1>
             
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
