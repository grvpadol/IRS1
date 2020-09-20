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
    <body>
        <header>    
            <nav>
                <div class ="row clearfix">
                    <img src ="image/logo.png" class = "logo">
                    <ul class="Main-nav animated slideInDown" id="checkone">
                        <li><a href = "Home.aspx">Home</a></li>
                        <li><a href ="about.aspx">about us</a></li>
                        <li><a href="menu.aspx">menu</a></li>
                        <li><a href="Reservation.aspx">Reservation</a></li>
                         <li><a >staff</a></li>
                        <li><a href="Signin.aspx">signin</a></li>
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
                   <li><h2>Member Login</h2></li>
                   <li><input type="test" name ="User Name" placeholder="Use Name/Register Number"></li>
                   <li><input type="password" name ="password" placeholder="........"></li>
                   <li><a href="Reservation.aspx"><input type="button" name ="SignIN" value ="Sign-IN" style="margin-bottom: 0px"></a></li>
                   <li><a href="Forget.aspx"><input type="button" name ="Forget" value ="Forget Password"></a></li>
                    
                </ul>
            </div>
            
            <div class = "main-content">
                <h1>Welcome to <span class="colorchange">International Restaurant.</span><br>
            Feel Like Home</h1>
                <a href="#" class = "btn btn-full"><span class="Bt">Click to order</span></a>
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
