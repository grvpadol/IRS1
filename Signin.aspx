<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="IRS1.Singin" %>


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
        <form id="form1" runat="server">
        <header>    
            <nav>
                <div class ="row clearfix">
                    <img src ="image/logo.png" class = "logo"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    
                    &nbsp;<ul class="Main-nav animated slideInDown" id="checkone">
                        <li><a href = "Home.aspx">Home</a></li>
                        <li><a href ="about.aspx">about us</a></li>
                        <li><a href="Menu1.aspx">menu</a></li>
                        <li><a href="WebForm4.aspx">Reservation</a></li>
                         <li><a href="Staff.aspx">staff</a></li>
                        <li><a >signin</a></li>
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
                    <li><h2>Customer&nbsp;Login</h2></li>
                   <li> <asp:TextBox ID="TextBox4" runat="server" name="username" placeholder ="Use Name" > </asp:TextBox>
                       <asp:TextBox ID="TextBox5" inputtype =" password" name="password" placeholder="......." runat="server"></asp:TextBox>
                       </li>
                   
                   <li>
                       <asp:Button ID="button" runat="server" name="SignIN" OnClick="Button1_Click" Text="Sign-In" Style="margin-bottom: 0px" />
                    </li>
                    <li><a href="Singnup.aspx"><input type="button" name ="SignUP" value ="Sign-Up" style="margin-bottom: 0px"></a></li>
                    <li><a href="Forget.aspx"><input type="button" name ="Forget" value ="Forget Password"></a></li>
                    
                </ul>
            </div>
            <div class = "main-content">
                <h1>Welcome to <span class="colorchange">International Restaurant.</span><br>
            Feel Like Home</h1>
             
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


